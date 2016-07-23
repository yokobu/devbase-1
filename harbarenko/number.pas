program number;
var
	A : Integer;
		begin
		writeln('Enter number');
		readln(A);
		if (A mod 2 = 0) then
		begin
			writeln('The number is even');	
		end
		else
		begin
			writeln('The number is uneven');
		end;
		if (A mod 10 = 0) then
		begin
			writeln('The number is round');
		end
		else
		begin
			writeln('The number is not round')
		end;
	readln();
	end.