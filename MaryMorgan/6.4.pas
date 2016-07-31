program multiplication_table;
uses crt;

var
a, b, i: integer;

begin

a:=1;
b:=1;

for i:=1 to 100 do
	begin
	writeln(a, ' * ', b,  ' = ', a*b);
	b:=b+1;
	delay(100);
	if (b>10) then
		begin
		writeln();
		a:=a+1;
		b:=1;
		end;
	end;
readln();
end.