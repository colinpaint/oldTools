SEGMENT PROCEDURE EDITCORE;

(* Core procedures.  Execute these commands until either a set environment
   comes along or a quit command. *)
   


PROCEDURE NEXTCOMMAND; FORWARD;

PROCEDURE FIXDIRECTION;
BEGIN
  IF COMMAND=FORWARDC THEN DIRECTION:='>' ELSE DIRECTION:='<';
  HOME; WRITE(DIRECTION); (* Update prompt line *)
  SHOWCURSOR; NEXTCOMMAND
END;

PROCEDURE COPY;
BEGIN
  IF NOT COPYOK OR ((BUFCOUNT+COPYLENGTH+10>COPYSTART)
                    AND (COPYSTART>=BUFCOUNT))
    THEN ERROR('Invalid copy.',NONFATAL)
    ELSE
      IF BUFCOUNT+COPYLENGTH>=BUFSIZE THEN ERROR('No room',NONFATAL)
      ELSE
        BEGIN
          IF COPYLINE THEN
            BEGIN
              GETLEADING;
              CURSOR:=LINESTART
            END;
          MOVERIGHT(EBUF^[CURSOR],EBUF^[CURSOR+COPYLENGTH],BUFCOUNT-CURSOR+1);
          IF (COPYSTART>=CURSOR) AND (COPYSTART<BUFCOUNT) THEN
            MOVELEFT(EBUF^[COPYSTART+COPYLENGTH],EBUF^[CURSOR],COPYLENGTH)
          ELSE
            MOVELEFT(EBUF^[COPYSTART],EBUF^[CURSOR],COPYLENGTH);
          BUFCOUNT:=BUFCOUNT+COPYLENGTH;
          GETLEADING;
          CURSOR:=MAX(CURSOR,STUFFSTART);
          CENTERCURSOR(TRASH,MIDDLE,TRUE)
        END;
  PROMPT;
  SHOWCURSOR;
  NEXTCOMMAND;
END(*COPY*);

PROCEDURE DUMP;
BEGIN
  NEXTCOMMAND;
END(* DUMP *);

PROCEDURE FIND; FORWARD;

PROCEDURE INSERTIT; FORWARD;

PROCEDURE JUMP;
VAR CH: CHAR;

PROCEDURE JUMPMARKER;
VAR
  I: INTEGER;
  MNAME: PACKED ARRAY [0..7] OF CHAR;
BEGIN
  WITH PAGEZERO DO
    BEGIN
      GETNAME('Jump to',MNAME);
      IF MNAME<>'        ' THEN
        BEGIN
          I:=0;
          WHILE (I<COUNT) AND (MNAME<>NAME[I]) DO I:=I+1;
          IF MNAME<>NAME[I] THEN
            ERROR('Not there.',NONFATAL)
          ELSE
            BEGIN
              CURSOR:=POFFSET[I];
              GETLEADING;
              CURSOR:=MAX(CURSOR,STUFFSTART);
              CENTERCURSOR(TRASH,MIDDLE,FALSE)
            END;
        END;
    END;
END; (* jumpmarker *)

BEGIN (* jump *)
  PROMPTLINE:=' JUMP: B(eginning E(nd M(arker <esc>';
  PROMPT;
  NEEDPROMPT:=TRUE;  (* Need to redisplay EDIT: promptline! *)
  REPEAT
    CH:=UCLC(GETCH);
    IF CH='B' THEN
      BEGIN 
        CURSOR:=1;
        GETLEADING;
        CURSOR:=STUFFSTART;
        CENTERCURSOR(TRASH,1,FALSE)
      END
    ELSE
      IF CH='E' THEN
        BEGIN
          CURSOR:=BUFCOUNT-1;
          CENTERCURSOR(TRASH,SCREENHEIGHT-1,FALSE);
        END
      ELSE
        IF CH='M' THEN JUMPMARKER
        ELSE IF CH<>CHR(ESC) THEN ERRWAIT;
  UNTIL (CH IN ['B','E','M',CHR(ESC)]);
  NEXTCOMMAND;
END;

PROCEDURE DEFMACRO;
BEGIN
  WITH PAGEZERO DO IF FILLING AND NOT AUTOINDENT THEN
    BEGIN
      THEFIXER(CURSOR,REPEATFACTOR,TRUE);
      CENTERCURSOR(TRASH,MIDDLE,TRUE);
    END
  ELSE ERROR('Inappropriate environment',NONFATAL);
  COPYOK:=FALSE;
  SHOWCURSOR;
  NEXTCOMMAND;
END;

PROCEDURE SETMARKER;
LABEL 1;
VAR
  I,SLOT: INTEGER;
  MNAME: PACKED ARRAY [0..7] OF CHAR;
BEGIN
  WITH PAGEZERO DO
    BEGIN
      NEEDPROMPT:=TRUE;
      COUNT:=MIN(10,COUNT);
      IF COUNT=10 THEN
        BEGIN
          BLANKCRT(1);
          FOR I:=0 TO COUNT-1 DO
            WRITELN(I,') ',NAME[I]);
          MSG:='Marker ovflw.  Which one to replace?';
          PUTMSG; CH:=GETCH;
          CENTERCURSOR(TRASH,MIDDLE,TRUE);
          IF NOT (CH IN ['0'..'9']) THEN GOTO 1;
          SLOT:=ORD(CH)-ORD('0')
        END
      ELSE
        SLOT:=COUNT;
      GETNAME('Set',MNAME);
      IF MNAME<>'        ' THEN
        BEGIN
          NAME[SLOT]:=MNAME;
          POFFSET[SLOT]:=CURSOR;
          IF SLOT=COUNT THEN COUNT:=COUNT+1
        END;
    END;
1:END;

PROCEDURE SETSTUFF;
VAR CH: CHAR;
BEGIN
  PROMPTLINE:=' Set: E(nvironment M(arker <esc>';
  PROMPT; NEEDPROMPT:=TRUE;
  REPEAT
    CH:=UCLC(GETCH);
    IF CH='E' THEN EXIT(EDITCORE)
    ELSE
      IF CH='M' THEN SETMARKER
      ELSE IF CH<>CHR(ESC) THEN ERRWAIT;
  UNTIL CH IN ['E','M',CHR(ESC)];
  SHOWCURSOR;
  NEXTCOMMAND;
END(* SETSTUFF *);

PROCEDURE VERIFY;
BEGIN
  CENTERCURSOR(TRASH,MIDDLE,TRUE);
  SHOWCURSOR;
  NEXTCOMMAND
END (* VERIFY *);

PROCEDURE XMACRO;
VAR
  SAVEC,I: INTEGER;
  SAVE:PACKED ARRAY [0..MAXSTRING] OF CHAR;
BEGIN
  PROMPTLINE:=' eXchange: TEXT {<bs> a char} [<esc> escapes; <etx> accepts]';
  PROMPT; NEEDPROMPT:=TRUE;
  SHOWCURSOR;
  SAVEC:=CURSOR;
  I:=0;
  REPEAT
    CH:=GETCH;
    IF TRANSLATE[CH]=LEFT THEN
      BEGIN
        IF (CURSOR>SAVEC) THEN
          BEGIN
            I:=I-1; CURSOR:=CURSOR-1; (* Decrement both ptrs *)
            EBUF^[CURSOR]:=SAVE[I]; (* Restore buffer *)
            WRITE(CHR(BS),EBUF^[CURSOR],CHR(BS));
          END
      END
    ELSE
      IF CH=CHR(EOL) THEN BEGIN ERRWAIT; SHOWCURSOR END
      ELSE
        IF NOT (CH IN [CHR(ETX),CHR(ESC)]) AND (EBUF^[CURSOR]<>CHR(EOL)) THEN
          BEGIN
            IF NOT (CH IN [' '..'~']) THEN CH:='?';
            SAVE[I]:=EBUF^[CURSOR];
            EBUF^[CURSOR]:=CH;
            I:=I+1; CURSOR:=CURSOR+1;
            WRITE(CH)
          END;
  UNTIL CH IN [CHR(ETX),CHR(ESC)];
  IF CH=CHR(ESC) THEN
    BEGIN
      CURSOR:=SAVEC;
      MOVELEFT(SAVE[0],EBUF^[CURSOR],I);
      SHOWCURSOR; WRITE(SAVE:I); SHOWCURSOR
    END;
  NEXTCOMMAND;
END (* XMACRO *);

PROCEDURE ZAPIT;
BEGIN
  IF ABS(LASTPAT-CURSOR)>80 THEN 
    BEGIN
      PROMPTLINE:=
' WARNING! You are about to zap more than 80 chars, do you wish to zap? (y/n)';
      PROMPT;
      NEEDPROMPT:=TRUE;
      IF UCLC(GETCH)<>'Y' THEN
        BEGIN
          SHOWCURSOR;
          NEXTCOMMAND;
          EXIT(ZAPIT)
        END;
    END;
  IF OKTODEL(MIN(CURSOR,LASTPAT),MAX(CURSOR,LASTPAT)) THEN
    BEGIN
      COPYLINE:=FALSE;
      READJUST(MIN(CURSOR,LASTPAT),-ABS(CURSOR-LASTPAT));
      IF CURSOR>LASTPAT THEN
        MOVELEFT(EBUF^[CURSOR],EBUF^[LASTPAT],BUFCOUNT-CURSOR)
      ELSE
        MOVELEFT(EBUF^[LASTPAT],EBUF^[CURSOR],BUFCOUNT-LASTPAT);
      BUFCOUNT:=BUFCOUNT-ABS(CURSOR-LASTPAT);
      CURSOR:=LASTPAT;
      CENTERCURSOR(TRASH,MIDDLE,TRUE);
    END;
  SHOWCURSOR;
  NEXTCOMMAND;
END;

