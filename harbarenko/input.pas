program input;
var
	a: Integer;
	b: Integer;
	sum: Integer;
	min: Integer;
	mult: Integer;
	divid: Real;
	divid1: Integer;
	divid2: Integer;
begin
writeln('Enter 2 digits');
readln(a);
readln(b);
writeln(a, b);
sum := a + b;
min := a - b;
mult := a * b;
divid := a / b;
divid1 := a div b;
divid2 := a mod b;
writeln('a + b = ', sum);
writeln('a - b = ', min);
writeln('a * b = ', mult);
writeln('a / b = ', divid:0:2);
writeln('a div b = ', divid1);
writeln('a mod b = ', divid2);
readln();
end.