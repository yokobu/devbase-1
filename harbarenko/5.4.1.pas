program numbers;
uses crt;
var 
	a : Integer;
	count : Integer;
	min : Integer;
	max : Integer;
	sum : Integer;
	average : Real;
	begin
	count := 0;
	sum := 0;
	average := 0;
	repeat 
		count := count + 1;
		writeln('Enter number');
		readln(a);
		if count = 1 then
			begin
				max := a;
				min := a;
			end;
		if a > max then
			max := a;
		if (a < min) and (a <> 0) then
			min := a;
	
	sum := sum + a;
	until a = 0;
	average := sum/(count-1);
	writeln('Min value is ', min);
	writeln('Max value is ', max);
	writeln('Sum value is ', sum);
	writeln('Average value is ', average:0:2);
readln();
end.