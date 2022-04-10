{TEST 1.2-1, CLASS=QUALITY}

{: This program is a general check on execution speed. }
{  For details, see Computer Journal article, 'A Synthetic
   Benchmark', Jan 1976  pp43-49. }
{V3.0: New test. }

program t1p2d1(output);

 {In this coding, three changes have been made apart from those
 necessary to run in Pascal. Firstly, x1, x2, x3 and x4 have
 been replaced by fields of xx. Secondly, the relative weights
 of modules 1 and 2 have been changed to preserve the total
 and yet exercise module 1 (this is permissible because modules
 1 and 2 should generate identical code due to the fixed array
 sizes in Pascal). Lastly, j, k and l, being used as subscripts,
 have been declared in appropriate subranges. This should avoid
 subscript checking in module 9 but not in module 6.
 The use of j in module 4 has been changed to jj to avoid
 range checking.  }

const
    t = 0.499975;
    t1 = 0.50025;
    t2 = 2.0;
    wt = 10; { corresponds to one million Whetstone instructions }

type
    rlarray = array [ 1 .. 4 ] of real;

var
    x, y, z: real;
    xx: record
        one, two, three, four: real
        end;
    e1: rlarray;
    i, jj, kk, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11: integer;
    j, k, l: 1 .. 4;

    procedure pa(var e: rlarray);
        label 1;
        var j: integer;
        begin
        j := 0;
      1 :
        e[1] := (e[1] + e[2] + e[3] - e[4]) * t;
        e[2] := (e[1] + e[2] - e[3] + e[4]) * t;
        e[3] := (e[1] - e[2] + e[3] + e[4]) * t;
        e[4] := ( - e[1] + e[2] + e[3] + e[4]) / t2;
        j := j + 1;
        if j < 6 then
            goto 1
        end; {pa}

    procedure p0;
        begin
        e1[j] := e1[k];
        e1[k] := e1[l];
        e1[l] := e1[j]
        end; {p0}

    procedure p3(x, y: real; var z: real);
        begin
        x := t * (x + y);
        y := t * (x + y);
        z := (x + y) / t2
        end; {p3}

    procedure pout(n, j, k: integer; x1, x2, x3, x4: real);
        begin
        writeln(n:5,j:5,k:5,'  ',x1,'  ',x2,'  ',x3,'  ',x4)
        end; {pout}

begin

    n1 := 2 * wt;
    n2 := 10 * wt;
    n3 := 14 * wt;
    n4 := 345 * wt;
    n5 := 0;
    n6 := 210 * wt;
    n7 := 32 * wt;
    n8 := 899 * wt;
    n9 := 616 * wt;
    n10 := 0;
    n11 := 93 * wt;

    { module 1: simple identifiers}
    xx.one := 1.0;
    xx.two := - 1.0;  xx.three := - 1.0;  xx.four := - 1.0;
    for i := 1 to n1 do
        begin
        xx.one := (xx.one + xx.two + xx.three - xx.four) * t;
        xx.two := (xx.one + xx.two - xx.three + xx.four) * t;
        xx.three := (xx.one - xx.two + xx.three + xx.four) * t;
        xx.four := ( - xx.one + xx.two + xx.three + xx.four) * t
        end; {module 1}
    pout(n1, n1, n1, xx.one, xx.two, xx.three, xx.four);

    { module 2: array elements}
    e1[1] := 1.0;
    e1[2] := - 1.0;  e1[3] := - 1.0;  e1[4] := - 1.0;
    for i := 1 to n2 do
        begin
        e1[1] := (e1[1] + e1[2] + e1[3] - e1[4]) * t;
        e1[2] := (e1[1] + e1[2] - e1[3] + e1[4]) * t;
        e1[3] := (e1[1] - e1[2] + e1[3] + e1[4]) * t;
        e1[4] := ( - e1[1] + e1[2] + e1[3] + e1[4]) * t
        end; {module 2}
    pout(n2, n3, n2, e1[1], e1[2], e1[3], e1[4]);

    { module 3: array as parameter}
    for i := 1 to n3 do
        pa(e1);
    pout(n3, n2, n2, e1[1], e1[2], e1[3], e1[4]);

    { module 4: conditional jumps}
    jj := 1;
    for i := 1 to n4 do
        begin
        if jj = 1 then
            jj := 2
        else
            jj := 3;
        if jj > 2 then
            jj := 0
        else
            jj := 1;
        if jj < 1 then
            jj := 1
        else
            jj := 0
        end; {module 4}
    pout(n4, jj, jj, xx.one, xx.two, xx.three, xx.four);

    { module 5: omitted}

    { module 6: integer arithmetic}
    j := 1;
    k := 2;
    l := 3;
    for i := 1 to n6 do
        begin
        j := j * (k - j) * (l - k);
        k := l * k - (l - j) * k;
        l := (l - k) * (k + j);
        e1[l - 1] := j + k + l;
        e1[k - 1] := j * k * l
        end; {module 6}
    pout(n6, j, k, e1[1], e1[2], e1[3], e1[4]);

    { module 7: trig. functions}
    x := 0.5;  y := 0.5;
    for i := 1 to n7 do
        begin
        x := t * arctan(t2 * sin(x) * cos(x) /
                        (cos(x + y) + cos(x - y) - 1.0));
        y := t * arctan(t2 * sin(y) * cos(y) /
                        (cos(x + y) + cos(x - y) - 1.0))
        end; {module 7}
    pout(n7, j, k, x, x, y, y);

    { module 8: procedure calls}
    x := 1.0;  y := 1.0;  z := 1.0;
    for i := 1 to n8 do
        p3(x, y, z);
    pout(n8, j, k, x, y, z, z);

    { module 9: array references}
    j := 1;
    k := 2;
    l := 3;
    e1[1] := 1.0;
    e1[2] := 2.0;
    e1[3] := 3.0;
    for i := 1 to n9 do
        p0;
    pout(n9, j, k, e1[1], e1[2], e1[3], e1[4]);

    { module 10: integer arithmetic}
    jj := 2;
    kk := 3;
    for i := 1 to n10 do
        begin
        jj := jj + kk;
        kk := jj + kk;
        jj := kk - jj;
        kk := kk - jj - jj
        end; {module 10}
    pout(n10, jj, kk, xx.one, xx.two, xx.three, xx.four);

    { module 11: standard functions}
    x := 0.75;
    for i := 1 to n11 do
        x := sqrt(exp(ln(x) / t1));
    pout(n11, jj, kk, x, x, x, x);
    writeln(' QUALITY...1.2-1')
end.
