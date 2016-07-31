program randomsum2;
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
		write(a,' ');
		sum := sum +a;
		writeln('sum: ', sum);
	end;
	readln();
	end.