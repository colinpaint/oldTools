SEGMENT PROCEDURE ENVIRONMENT;
VAR
  I: INTEGER;

  PROCEDURE BOOL(B:BOOLEAN);
  BEGIN
    IF B THEN WRITE('True') ELSE WRITE('False');
    WRITELN
  END;
  
  FUNCTION GETBOOL: BOOLEAN;
  VAR CH: CHAR;
  BEGIN
    ERASETOEOL; CH:=UCLC(GETCH);
    WHILE NOT (CH IN ['T','F']) DO
      BEGIN
        WRITE('T or F');
        FOR TRASH:=0 TO 5 DO WRITE(CHR(BS));
        CH:=UCLC(GETCH)
      END;
    IF CH='T' THEN
      BEGIN
        WRITE('True  ');
        GETBOOL:=TRUE
      END
    ELSE
      BEGIN
        WRITE('False ');
        GETBOOL:=FALSE
      END;
  END;
  
  FUNCTION GETINT: INTEGER;
  VAR
    CH:CHAR;
    N: INTEGER;
  BEGIN
    ERASETOEOL;
    N:=0;
    REPEAT
      REPEAT
        CH:=GETCH;
        IF NOT (CH IN ['0'..'9',CHR(SP),CHR(CR)]) 
          THEN WRITE('#',CHR(BELL),CHR(BS));
      UNTIL CH IN ['0'..'9',CHR(SP),CHR(CR)];
      IF CH IN ['0'..'9'] THEN
        BEGIN
          WRITE(CH);
          IF N<1000 THEN N:=N*10+ORD(CH)-ORD('0')
        END;
    UNTIL CH IN [CHR(SP),CHR(CR)];
    GETINT:=N; WRITE('  ')
  END;
  
BEGIN
  WITH PAGEZERO DO
    BEGIN
      PROMPTLINE:= ' Environment: {options} <etx> or <sp> to leave'; 
      PROMPT; NEEDPROMPT:=TRUE;
      BLANKCRT(1);
      WRITE(       '    A(uto indent  '); BOOL(AUTOINDENT);
      WRITE(       '    F(illing      '); BOOL(FILLING);
      WRITE(       '    L(eft margin  '); WRITELN(LMARGIN);
      WRITE(       '    R(ight margin '); WRITELN(RMARGIN);
      WRITE(       '    P(ara margin  '); WRITELN(PARAMARGIN);
      WRITE(       '    C(ommand ch   '); WRITELN(RUNOFFCH);
      WRITE(       '    T(oken def    '); BOOL(TOKDEF);
      WRITELN;
      WRITELN('    ',BUFCOUNT,' bytes used, ',BUFSIZE-BUFCOUNT+1,' available.');
      WRITELN; 
      IF SDEFINED OR TDEFINED THEN
        BEGIN
          WRITELN('    Patterns:');
          IF TDEFINED THEN WRITE('      <target>= ''',TARGET:TLENGTH,'''');
          IF SDEFINED THEN WRITE(', <subst>=  ''',SUBSTRING:SLENGTH,'''');
          WRITELN; WRITELN;
        END;
      IF COUNT>0 THEN WRITELN('    Markers:');
      WRITE('  ');
      FOR I:=0 TO COUNT-1 DO
        BEGIN WRITE(' ':6,NAME[I]);
          IF (I+1) MOD 3=0 THEN BEGIN WRITELN; WRITE('  ') END
        END;
      GOTOXY(LENGTH(PROMPTLINE),0);
      REPEAT
        CH:=UCLC(GETCH);
        IF NOT (CH IN ['A','C','F','L','P','R','T',' ',CHR(ETX),CHR(CR)]) THEN
          BEGIN ERROR('Not option',NONFATAL); PROMPT; END
        ELSE
          CASE CH OF
           'A': BEGIN GOTOXY(18,1); AUTOINDENT:=GETBOOL END;
           'F': BEGIN GOTOXY(18,2); FILLING:=GETBOOL END;
           'L': BEGIN GOTOXY(18,3); LMARGIN:=GETINT END;
           'R': BEGIN GOTOXY(18,4); RMARGIN:=GETINT END;
           'P': BEGIN GOTOXY(18,5); PARAMARGIN:=GETINT END;
           'C': BEGIN GOTOXY(18,6); READ(RUNOFFCH) END;
           'T': BEGIN GOTOXY(18,7); TOKDEF:=GETBOOL END
          END;
        GOTOXY(LENGTH(PROMPTLINE),0);
      UNTIL CH IN [' ',CHR(ETX),CHR(CR)];
      REDISPLAY;
    END;
END;



