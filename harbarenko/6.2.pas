program randomsum;
uses crt;
var 
	a : Integer;
	i : Integer;
	sum : Integer;
	begin
	randomize;
	sum := 0;
	for i := 1 to 30 do
		begin
		a := random(50)+1;
		writeln(a);
		sum := sum +a;
	end;
	writeln('The sum is ', sum);
	readln();
end.