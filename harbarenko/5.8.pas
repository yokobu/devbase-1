program moreorless;
uses crt;
var 
	N : Integer;
	a : Integer;
	b : Integer;
	c : Integer;
	begin
	Randomize;
	a := random(1000) + 1;
	c := 0;
	repeat 
	writeln('Enter number');
		readln(N);
		if (N <= 0) or (N > 1000) then
		begin
			writeln('Error');
			exit;
		end;
		if N < a then
		b := a - N;
		if N > a then
		b := N - a;
		if (b >= 500) and (b <= 999) then
		writeln('frozen');				
		if (b >= 100) and (b <= 499) then
		writeln('cool');
		if (b >= 50) and (b <= 99) then
		writeln ('warm');
		if (b >= 10) and (b <=49) then
		writeln('hot');
		if (b >= 1) and (b <= 9) then
		writeln('burning');
		until N = a;
	writeln('You win!');
	readln();
end.