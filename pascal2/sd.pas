{[b+]}
{ NOTICE OF COPYRIGHT AND OWNERSHIP OF SOFTWARE:

  Copyright (C) 1986 Oregon Software, Inc.
  All Rights Reserved.

  This program is the property of Oregon Software.  The program or
  parts of it may be copied and used only as provided under a signed
  license agreement with Oregon Software.  Any support purchased from 
  Oregon Software does not apply to user-modified programs.  All copies 
  of this program must display this notice and all copyright notices. 


  Release version: 0045  Level: 1
  Processor: All
  System: All

  Pascal-2 SCAN Output Dumper (Debugging Tool)

 Last modified by KRIS on 21-Nov-1990 15:35:53
 Purpose:
Update release version for PC-VV0-GS0 at 2.3.0.1

}

type
  tempfiletwotype = text;

  %include 'sahdr';

type
  tokenlengthtable = array [tokentype] of 0..10; {defines token lengths}

var
  tokencount: integer;
  tokenbufindex: 0..diskbufsize;
  listingname: packed array [1..255] of char;
  toklengths: tokenlengthtable;


procedure getnexttoken;

{ Get the next token from the intermediate file into the global "nexttoken".
  In the process, linenumbers and switches are incremented as necessary.

  The file is compressed as described in the "put" routine for the scanner,
  and this routine undoes those compressions.
}

  var
    t: tokentype; {temp storage for the token}


  procedure gettempfile;

{ Does the equivalent of a get on the temp file.  This also keeps track
  of the number of bytes read from the temp file to make the switches
  work.  The temp file is actually a block of hostfilebytes, and each
  byte is referenced by:
        tempfileone^[tokenbufindex].<value>
}


    begin
      if tokenbufindex = diskbufsize then
        begin
        tokenbufindex := 0;
        get(tempfileone);
        end
      else tokenbufindex := tokenbufindex + 1;
    end;


  function getint: integer;

{ Get an integer value from the file.  This is made into a function to
  allow returning the value into subranges of integer.
}

    var
      { This fudges an integer into bytes.  The constant "32" is }
      { simply a large enough number to include all probable systems. }
      fudge:
        record
          case boolean of
            true: (int: integer);
            false: (byte: packed array [1..32] of hostfilebyte);
        end;
      j: 1..32; {induction var}


    begin
      fudge.int := tempfileone^[tokenbufindex].byte;
      gettempfile;
      if fudge.int = hostfilelim then
        for j := 1 to hostintsize * hostfileunits do
          begin
          fudge.byte[j] := tempfileone^[tokenbufindex].byte;
          gettempfile;
          end;
      getint := fudge.int;
    end; {getint}


  procedure getreal(var r: realarray);

    var
      { this fudges a real into bytes.  The constant "32" is }
      { simply a large enough number to include all probable systems. }
      fudge:
        record
          case boolean of
            true: (rl: realarray);
            false: (byte: packed array [1..32] of hostfilebyte);
        end;
      j: 1..32; {induction var}


    begin
      for j := 1 to size(realarray) do
        begin
        fudge.byte[j] := tempfileone^[tokenbufindex].byte;
        gettempfile;
        end;
      r := fudge.rl;
    end;


  begin {GetNextToken}
    with nexttoken do
      begin

      repeat
        t := tempfileone^[tokenbufindex].toke;
        gettempfile;
        if t = newfile then
          begin
          baseline := getint;
          fileindex := getint; { stringtable index of filename }
          end
        else if t = lineinc then line := line + 1
        else if t = lineadd then
          begin
          line := line + tempfileone^[tokenbufindex].byte;
          gettempfile;
          end
      until not (t in [lineinc, lineadd, newfile]);

      token := t;

      if newdebugger then filepos := getint;

      left := tempfileone^[tokenbufindex].byte;
      gettempfile;

      if t in
         [ident, intconst, charconst, realconst, dblrealconst,
         stringconst] then
        begin
        right := tempfileone^[tokenbufindex].byte;
        gettempfile;
        case t of
          ident:
            begin
            key := getint;
            keypos := getint;
            end;
          intconst: intvalue := getint;
          charconst:
            begin
            intvalue := tempfileone^[tokenbufindex].byte;
            gettempfile;
            end;
          realconst, dblrealconst: getreal(realvalue);
          stringconst:
            begin
            pos := getint;
            len := getint;
            end;
          end
        end
      else right := left + toklengths[t];
      end {with}
  end {GetNextToken} ;


procedure printreal(r: realarray);

  type
    hexdigit = 0..15;

  var
    { this fudges a real into bytes.  The constant "32" is }
    { simply a large enough number to include all probable systems. }
    fudge:
      record
        case integer of
          1: (rl: realarray);
          2: (rr: real);
          3: (byte: packed array [1..32] of hostfilebyte);
      end;
    j: 1..32; {induction var}


  procedure writehex(i: hexdigit);


    begin
      if i < 10 then write(chr(i + ord('0')))
      else write(chr(i - 10 + ord('A')));
    end;


  begin
    fudge.rl := r;
    write(fudge.rr: 21, ' (');
    for j := 1 to size(realarray) do
      begin
      writehex(fudge.byte[j] div 16);
      writehex(fudge.byte[j] mod 16);
      end;
    write(')');
  end;


begin {sd}

  toklengths[programsym] := 6;
  toklengths[labelsym] := 4;
  toklengths[constsym] := 4;
  toklengths[typesym] := 3;
  toklengths[varsym] := 2;
  toklengths[proceduresym] := 8;
  toklengths[functionsym] := 7;
  toklengths[uparrow] := 0;
  toklengths[arraysym] := 4;
  toklengths[filesym] := 3;
  toklengths[setsym] := 2;
  toklengths[recordsym] := 5;
  toklengths[stringsym] := 5;
  toklengths[univsym] := 3;
  toklengths[packedsym] := 5;
  toklengths[originsym] := 5;
  toklengths[beginsym] := 4;
  toklengths[ifsym] := 1;
  toklengths[casesym] := 3;
  toklengths[whilesym] := 4;
  toklengths[repeatsym] := 5;
  toklengths[forsym] := 2;
  toklengths[withsym] := 3;
  toklengths[gotosym] := 3;
  toklengths[usesym] := 2;
  toklengths[definesym] := 5;
  toklengths[sharedsym] := 5;
  toklengths[eql] := 0;
  toklengths[lss] := 0;
  toklengths[gtr] := 0;
  toklengths[neq] := 1;
  toklengths[leq] := 1;
  toklengths[geq] := 1;
  toklengths[insym] := 1;
  toklengths[plus] := 0;
  toklengths[minus] := 0;
  toklengths[orsym] := 1;
  toklengths[star] := 0;
  toklengths[slash] := 0;
  toklengths[divsym] := 2;
  toklengths[modsym] := 2;
  toklengths[andsym] := 2;
  toklengths[ofsym] := 1;
  toklengths[endsym] := 2;
  toklengths[elsesym] := 3;
  toklengths[thensym] := 3;
  toklengths[otherwisesym] := 8;
  toklengths[dosym] := 1;
  toklengths[untilsym] := 4;
  toklengths[tosym] := 1;
  toklengths[downtosym] := 5;
  toklengths[notsym] := 2;
  toklengths[at] := 0;
  toklengths[nilsym] := 2;
  toklengths[colon] := 0;
  toklengths[dot] := 0;
  toklengths[dotdot] := 1;
  toklengths[comma] := 0;
  toklengths[semicolon] := 0;
  toklengths[becomes] := 1;
  toklengths[lpar] := 0;
  toklengths[rpar] := 0;
  toklengths[lbrack] := 0;
  toklengths[rbrack] := 0;
  toklengths[intconst] := 0;
  toklengths[realconst] := 0;
  toklengths[dblrealconst] := 0;
  toklengths[charconst] := 0;
  toklengths[stringconst] := 0;
  toklengths[ident] := 0;
  toklengths[eofsym] := 0;
  toklengths[lineinc] := 0;
  toklengths[lineadd] := 0;
  toklengths[newfile] := 0;

  tokencount := 0;
  tokenbufindex := 0;
  nexttoken.line := 1;

  case hostopsys of
    unix: ;
    otherwise
      begin
      write('Output: ');
      if not eoln then
        begin
        readln(listingname);
        rewrite(output, listingname);
        end;
      end;
    end;
  case hostopsys of
    vdos: reset(tempfileone, 'temp1.tm');
    otherwise reset(tempfileone, 'temp1.tmp');
    end;
  writeln('*** Scanner Output ***');
  writeln;
  writeln;
  writeln(' Base Line Left Right File Filepos Token');
  getnexttoken;
  repeat
    tokencount := tokencount + 1;
    with nexttoken do
      begin
      write(baseline: 5, line: 5, left: 4, right: 6, fileindex: 5);
      if newdebugger then write(filepos: 8);
      write(' ': 2);
      case token of
        programsym: write('PROGRAM');
        labelsym: write('LABEL');
        constsym: write('CONST');
        typesym: write('TYPE');
        varsym: write('VAR');
        proceduresym: write('PROCEDURE');
        functionsym: write('FUNCTION');
        otherwisesym: write('OTHERWISE');
        uparrow: write('^');
        arraysym: write('ARRAY');
        filesym: write('FILE');
        setsym: write('SET');
        packedsym: write('PACKED');
        recordsym: write('RECORD');
        stringsym: write('STRING');
        univsym: write('UNIV');
        beginsym: write('BEGIN');
        ifsym: write('IF');
        casesym: write('CASE');
        whilesym: write('WHILE');
        repeatsym: write('REPEAT');
        forsym: write('FOR');
        withsym: write('WITH');
        gotosym: write('GOTO');
        usesym: write('USE');
        definesym: write('DEFINE');
        sharedsym: write('SHARED');
        eql: write('=');
        lss: write('<');
        gtr: write('>');
        neq: write('<>');
        leq: write('<=');
        geq: write('>=');
        insym: write('IN');
        plus: write('+');
        minus: write('-');
        orsym: write('OR');
        star: write('*');
        slash: write('/');
        divsym: write('DIV');
        modsym: write('MOD');
        andsym: write('AND');
        ofsym: write('OF');
        endsym: write('END');
        elsesym: write('ELSE');
        thensym: write('THEN');
        dosym: write('DO');
        untilsym: write('UNTIL');
        tosym: write('TO');
        downtosym: write('DOWNTO');
        notsym: write('NOT');
        nilsym: write('NIL');
        colon: write(':');
        dot: write('.');
        dotdot: write('..');
        comma: write(',');
        semicolon: write(';');
        becomes: write(':=');
        lpar: write('(');
        rpar: write(')');
        lbrack: write('[');
        rbrack: write(']');
        intconst: write('INTCONST VALUE:', intvalue);
        realconst:
          begin
          write('REALCONST VALUE: ');
          printreal(realvalue);
          end;
        dblrealconst:
          begin
          write('DBLREALCONST VALUE: ');
          printreal(realvalue);
          end;
        charconst: write('CHARCONST VALUE:', intvalue: 3);
        stringconst: write('STRINGCONST POS,LEN:', pos, len);
        ident: write('IDENT KEY:', key);
        otherwise write('unknown token - ', ord(token): 1);
        end;
      writeln;
      end {WITH} ;
    getnexttoken;
  until (nexttoken.token = eofsym) or eof(tempfileone);

  with nexttoken do
    writeln(baseline: 5, line: 5, left: 4, right: 5, ' *** E-O-F ***');
  close(tempfileone);

  writeln(tokencount: 1, ' tokens');
  close(output);
end {sd} .
