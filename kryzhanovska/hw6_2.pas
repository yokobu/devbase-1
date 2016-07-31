program hw6_2;
uses crt;
var
	I: Integer;
	r: Integer;
	sum: Integer;

begin
	// i:=1;
	sum:=0;
	for i := 1 to 30 do
	begin
		r:=random(50)+1;
		sum:=sum+r;
		writeln(r,' ','sum:',' ',sum);		
	end;
readln();
end.