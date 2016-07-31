program numbers;
uses crt;
var 
	N : Integer;
	a : Longint;
	b : Longint;
	c : Longint;
	count : Integer;
	begin
	count := 0;
	a := 1;
	b := 0;
	c := 0;
	writeln('Enter number');
	readln(N);
	if N <= 0 then
		begin
			writeln('Error');
		exit;
		end;
	repeat 
	c := a + b;
	a := b;
	b := c;
	count := count + 1;
	writeln(c);
	until count = N;
	readln();
end.