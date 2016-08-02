program input;
var 
  a: integer;
  b: integer;
  Sum: integer;
  Substraction: integer;
  Multiplication: integer;
  Segmentation: real;
  D: integer;
  M: integer;
  
Begin

writeln('Enter 2 numbers:');
readln (a);
readln(b);
sum:= a+b;
Substraction:=a-b;
Multiplication:=a*b;
Segmentation:=a/b;
D:= a div b;
M:= a mod b;

writeln('a+b=', sum);
writeln('a-b=', Substraction);
writeln('a*b=', Multiplication);
writeln('a/b=', Segmentation:0:1);
writeln('a div b=', D);
writeln('a mod b=', M);

readln();
end.
