100 REM *****************************************
110 REM **** LEVPAY.BAS   CIRCA-68/23-FEB-78 ****
120 REM **** N A BOURGEOIS          SLA/1736 ****
130 REM ****************************************************************
140 REM **** COMPUTE LOAN PAYMENTS & TABULATE AMORTIZATION SCHEDULE ****
150 REM ****************************************************************
160 REM **** FUNCTION DEFINITIONS ****
170 REM ******************************
180 DEF FNA(X)=INT(100*X+.5)/100
190 DEF FNB$(X)=SEG$(M$,3*(X-1)+1,3*(X-1)+4)
200 REM *****************************************
210 REM **** CONSTANTS AND IMAGE DEFINITIONS ****
220 REM *****************************************
230 C$=CHR$(12)
240 M$="JANFEBMARAPRMAYJUNJULAUGSEPOCTNOVDEC"
250 F0$="PMT #     DATE         INTEREST      PRINCIPAL        BALANCE"
260 F1$="#####  ##-'RR-##  ##,###,###.##  ##,###,###.##- ##,###,###.##"
270 F2$="           CY-##  ##,###,###.##"
280 REM **********************************
290 REM **** ENTER ALL DATA VARIABLES ****
300 REM **********************************
310 PRINT "NAME THE OUTPUT DEVICE",
320 INPUT D$
330 IF D$>"" THEN 350
340 D$="TT:"
350 OPEN D$ FOR OUTPUT AS FILE #1 DOUBLE BUF
360 PRINT "INTEREST IN %/YEAR ",
370 INPUT J
380 J=J/100
390 PRINT "AMOUNT OF LOAN IN $ ",
400 INPUT A
410 PRINT "NUMBER OF YEARS ",
420 INPUT N
430 PRINT "NUMBER OF PAYMENTS/YEAR ",
440 INPUT N1
450 PRINT "DATE OF LOAN",,
460 INPUT M1,D1,Y1
470 PRINT "DATE 1ST PAYMENT DUE",
480 INPUT M2,D2,Y2
490 M3=M2+12*(Y2-Y1)
500 D3=D2+30*(M3-M1)
510 PRINT "FOR WHOM PREPARED, 1 TO 3 LINES"
520 PRINT "MAXIMUM, 45 CHARACTERS /LINE"
530 INPUT H1$,H2$,H3$
540 REM ********************************
550 REM **** COMPUTE PAYMENT AMOUNT ****
560 REM ********************************
570 N=N*N1
580 I=J/N1
590 B=1+I
600 R=FNA(A*I/(1-1/B^N))
610 PRINT 
620 PRINT "AMOUNT/PAYMENT",R
630 PRINT 
640 PRINT "CHANGE PAYMENT, 0 IF NO, AMOUNT IF YES",
650 INPUT R1
660 IF R1=0 THEN 680
670 R=R1
680 PRINT "TABULATE, 0=NO, 1=YES ",,
690 INPUT T
700 REM **********************************
710 REM **** PRINT HEADER INFORMATION ****
720 REM **********************************
730 IF D$<>"TT:" THEN 760
740 PRINT #1,C$
750 GOSUB 1490 : REM **** SKIP FIVE LINES ON TT:
760 P1=0
770 GOSUB 1560 : REM **** SKIP FOUR LINES
780 IF H1$="" THEN 880
790 PRINT #1,TAB(10);"PREPARED FOR:";TAB(25);SEG$(H1$,1,45)
800 P1=P1+1
810 IF H2$="" THEN 870
820 PRINT #1,TAB(10);TAB(25);SEG$(H2$,1,45)
830 P1=P1+1
840 IF H3$="" THEN 870
850 PRINT #1,TAB(10);TAB(25);SEG$(H3$,1,45)
860 P1=P1+1
870 GOSUB 1560 : REM **** SKIP FOUR LINES
880 PRINT #1,USING "INTEREST RATE IN PERCENT          ##.##",100*J
890 PRINT #1,USING "AMOUNT OF LOAN           $$#,###,###.##",A
900 PRINT #1,USING "AMOUNT OF PAYMENT        $$#,###,###.##",R
910 IF R1<>0 THEN 940
920 PRINT #1,USING "NUMBER OF YEARS                  ###.##",N/N1
930 P1=P1+1
940 PRINT #1,USING "NUMBER OF PAYMENTS PER YEAR          ##",N1
950 Z$=FNB$(M1)
960 PRINT #1,USING "DATE OF LOAN                  ##-'RR-##",-D1,Z$,Y1
970 Z$=FNB$(M2)
980 PRINT #1,USING "DATE FIRST PAYMENT DUE        ##-'RR-##",-D2,Z$,Y2
990 PRINT #1,USING "DATE PREPARED                 'RRRRRRRR",DAT$
1000 P1=P1+7
1010 REM ***************************************
1020 REM **** INITIALIZE COMPUTED VARIABLES ****
1030 REM ***************************************
1040 B=A
1050 N=0
1060 C=0
1070 C1=0
1080 REM *******************************
1090 REM **** COMPUTE FIRST PAYMENT ****
1100 REM *******************************
1110 IF T=0 THEN 1140
1120 GOSUB 1560 : REM **** SKIP FOUR LINES
1130 GOSUB 1640 : REM **** PRINT COLUMN HEADINGS
1140 L=FNA(B*I*(D3-D1)*N1/360)
1150 GOSUB 1750 : REM **** COMPUTE DATE
1160 GOSUB 1920 : REM **** COMPUTE PRINCIPAL AND BALANCE
1170 IF B<R THEN 1250 : REM **** COMPUTE FINAL PAYMENT
1180 REM *********************************
1190 REM **** COMPUTE MIDDLE PAYMENTS ****
1200 REM *********************************
1210 GOSUB 1710 : REM **** COMPUTE INTEREST AND DATE
1220 GOSUB 1920 : REM **** COMPUTE PRINCIPAL AND BALANCE
1230 IF B>R THEN 1190 : REM **** COMPUTE MIDDLE PAYMENTS
1240 REM *******************************
1250 REM **** COMPUTE FINAL PAYMENT ****
1260 REM *******************************
1270 GOSUB 1710 : REM **** COMPUTE INTEREST AND DATE
1280 IF T=0 THEN 1370 : REM **** PRINT SUMMARY
1290 GOSUB 2020 : REM **** PAGING ROUTINE
1300 PRINT #1,USING F1$,N,-D2,FNB$(M2),Y2,L,B,0
1310 P1=P1+1
1320 IF N1<=1 THEN 1370 : REM **** PRINT SUMMARY
1330 GOSUB 2020 : REM **** PAGING ROUTINE
1340 PRINT #1,USING F2$,Y2,C1
1350 P1=P1+1
1360 REM ***********************
1370 REM **** PRINT SUMMARY ****
1380 REM ***********************
1390 GOSUB 1560 : REM **** SKIP FOUR LINES
1400 PRINT #1,USING "LAST PAYMENT                      #####",N
1410 Z$=FNB$(M2)
1420 PRINT #1,USING "LAST PAYMENT DATE             ##-'RR-##",-D2,Z$,Y2
1430 PRINT #1,USING "LAST PAYMENT AMOUNT      $$#,###,###.##",FNA(L+B)
1440 PRINT #1,USING "TOTAL INTEREST           $$#,###,###.##",C
1450 GOTO 2110 : REM **** CLOSEOUT ROUTINE
1460 REM *********************
1470 REM **** SUBROUTINES ****
1480 REM ********************************
1490 REM **** SKIP FIVE LINES ON TT: ****
1500 REM ********************************
1510 FOR K=1 TO 5
1520 PRINT #1
1530 NEXT K
1540 RETURN
1550 REM *****************************
1560 REM **** S/R SKIP FOUR LINES ****
1570 REM *****************************
1580 FOR K=1 TO 4
1590 PRINT #1
1600 NEXT K
1610 P1=P1+4
1620 RETURN
1630 REM ***********************************
1640 REM **** S/R PRINT COLUMN HEADINGS ****
1650 REM ***********************************
1660 PRINT #1,F0$
1670 PRINT #1
1680 P1=P1+2
1690 RETURN
1700 REM ***************************************
1710 REM **** S/R COMPUTE INTEREST AND DATE ****
1720 REM ***************************************
1730 L=FNA(B*I)
1740 M2=M2+12/N1
1750 N=N+1
1760 IF M2<13 THEN 1880
1770 IF T=0 THEN 1830
1780 IF N1<=1 THEN 1830
1790 GOSUB 2020 : REM **** PAGING ROUTINE
1800 PRINT #1,USING F2$,Y2,C1
1810 PRINT #1,
1820 P1=P1+2
1830 M2=M2-12
1840 Y2=Y2+1
1850 IF Y2<>100 THEN 1870
1860 Y2=0
1870 C1=0
1880 C1=FNA(C1+L)
1890 C=FNA(C+L)
1900 RETURN
1910 REM *******************************************
1920 REM **** S/R COMPUTE PRINCIPAL AND BALANCE ****
1930 REM *******************************************
1940 P=FNA(R-L)
1950 B=FNA(B-P)
1960 IF T=0 THEN 2000
1970 GOSUB 2020 : REM **** PAGING ROUTINE
1980 PRINT #1,USING F1$,N,-D2,FNB$(M2),Y2,L,P,B
1990 P1=P1+1
2000 RETURN
2010 REM ****************************
2020 REM **** S/R PAGING ROUTINE ****
2030 REM ****************************
2040 IF P1<54 THEN 2090
2050 PRINT #1,C$
2060 IF D$="TT:" THEN  GOSUB 1490 : REM **** SKIP FIVE LINES ON TT:
2070 P1=0
2080 GOSUB 1640 : REM **** PRINT COLUMN HEADINGS
2090 RETURN
2100 REM **************************
2110 REM **** CLOSEOUT ROUTINE ****
2120 REM **************************
2130 IF D$="TT:" THEN PRINT #1,C$
2140 CLOSE #1
2150 END