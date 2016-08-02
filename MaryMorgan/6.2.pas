program thirty_numbers;
uses crt;

var
a, b, r, i, N, Ol: integer;

begin
randomize;
N:=30;
a:=1;
b:=50;
Ol:=0;

for i:=1 to N do
	begin
	r:=Random(b-a+1)+a;
	Writeln(r);
	Ol:=Ol+r;
	delay(30);
	end;
Writeln(Ol);
readln();
end.