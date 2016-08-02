program moreorless;
uses crt;
var 
	N : Integer;
	a : Integer;
	begin
	Randomize;
	a := random(100) + 1;
	repeat 
	writeln('Enter number');
	readln(N);
	if (N <= 0) or (N > 100) then
		begin
			writeln('Error');
		exit;
		end;
	if N < a then
		writeln('>');
	if N > a then
		writeln('<');
	until N = a;
	writeln('You win!');
	readln();
end.