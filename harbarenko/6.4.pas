program timestable;
uses crt;
var 
a : Integer;
i : Integer;
j : Integer;
begin
	a := 1;
	for i := 1 to 10 do
	 	begin
		for j := 1 to 10 do
			begin
			a := i * j;
			writeln(i,' x ', j, ' = ', a);
			end;
			a := a + 1;
		end;
	readln();
end.