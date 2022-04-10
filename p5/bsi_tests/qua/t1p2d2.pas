{TEST 1.2-2, CLASS=QUALITY}

{: This test evaluates the GAMM measure. }
{  It is described in 'A program to calculate the GAMM measure',
   Computer Journal, November 1979, by B A Wichmann and J du Croz.
   It is a transcription of the FORTRAN program into Pascal. }
{V3.1: Spelling of transcription corrected. }

program t1p2d2(output);


const
   n = 10000;  { value for about one minute on 360/65 }
   five = 5 ;
   ten = 10;
   thirty = 30;

var
   i, j : 1 .. 30;
   rep : integer;
   acc,   acc1,   divn,   rn,   root,   x,   y: real;
   a,  b,  c : array [1 .. thirty] of real;

begin
   rn := n;
   divn := 1.0 / rn;
   x := 0.1;
   acc := 0;
   { initialise a and b }
   y := 1.0;
   for i := 1 to 30 do
      begin
      a[i] := i;
      b[i] := - y;
      y := - y
      end;
   { one pass of this loop corresponds to 300 gamm units }
   for rep := 1 to n do
      begin
      { first addition/subtraction loop}
      for i := thirty downto 1 do
         c[i] := a[i] + b[i];
      { first polynomial loop }
      y := 0;
      for i := 1 to ten do
         y := (y + c[i]) * x;
      acc1 := y * divn;
      { first maximum element loop }
      y := c[11];
      for i := 12 to 20  do
         if (c[i] > y) then
              y := c[i];
      { first square root loop }
      root := 1.0;
      for i := 1 to 5 do
         root := 0.5 * (root + y/root);
      acc1 := acc1 + root * divn;
      { second addition/subtraction loop }
      for i := 1 to thirty do
         a[i] := c[i] - b[i];
      { second polynomial loop }
      y := 0;
      for i := 1 to ten do
         y := (y + a[i]) * x;
      { second square root loop }
      root := 1.0;
      for i := 1 to five do
         root := 0.5 * (root + y/root);
      acc1 := acc1 + root * divn;
      { first multiplication loop }
      for i := 1 to thirty do
         c[i] := c[i] * b[i];
      { second maximum element loop }
      y := c[20];
      for i := 21 to thirty  do
         if (c[i] > y) then
             y := c[i];
      { third square root loop }
      root := 1.0;
      for i := 1 to 5 do
         root := 0.5 * (root + y/root);
      acc1 := acc1 + root * divn;
      { third polynomial loop }
      y := 0;
       for i := 1 to ten do
         y := (y + c[i]) * x;
      acc1 := acc1 + y * divn;
      { third maximum element loop }
      y := c[1];
      for i := 2 to ten do
      if (c[i] > y) then
            y := c[i];
      { fourth square root loop }
      root := 1.0;
      for i := 1 to five  do
         root := 0.5 * (root + y/root);
      acc1 := acc1 + root * divn;
      acc := acc + acc1
      end;
   writeln(n:10, acc:30:22, acc1:30:22);
{Should print n then  16.73343 22410 90064 71684 80142
 13037 73134 63992 40462 96035 41872 24481 65285 24815
 99961 62435 26126 76234 69822 97966
 and then 16.73 ... / n
 Format should be adjusted to print to maximum precision. }
   writeln(' QUALITY...1.2-2')
end.
