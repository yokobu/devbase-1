program thirty_numbers_sum;
uses crt;

var
a, b, r, i, N, Ol: integer;

begin
N:=30;
a:=1;
b:=50;
Ol:=0;

for i:=1 to N do
	begin
	r:=Random(b-a+1)+a;
	Ol:=Ol+r;
	Writeln(r, ' sum: ', Ol);
	delay(30);
	end;

readln();
end.