program hw6_4;
 
var
	I: Integer;
	a: Integer;
	s: Integer;
	

begin
	I:=1;
	a:=1;
	s:=0;
	for i:=1 to 10 do
	begin
		for a := 1 to 10 do
		begin
			s:=i*a;
			writeln(i,'*',a,'=',s);
		end		
	end;
readln();
end.