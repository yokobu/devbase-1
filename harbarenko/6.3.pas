program timestable;
uses crt;
var 
a : Integer;
b : Integer;
i : Integer;
begin
a := 4;
for i := 1 to 10 do
	begin
	b := a * i;
	writeln(a,' x ', i, ' = ', b);
	end;
readln();
end.