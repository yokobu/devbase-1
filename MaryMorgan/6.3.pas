program multiplication_table_by_four;
uses crt;

var
a, b, r, i: integer;

begin

a:=4;
b:=1;

for i:=1 to 10 do
	begin
	r:=a*b;
	writeln(a, ' * ', b,  ' = ', r);
	b:=b+1;
	delay(50);
	end;

readln();
end.