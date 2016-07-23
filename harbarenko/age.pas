program age;
var
	A : Integer;
		begin
			writeln('Enter your age');
		readln(A);
		if (A <= 0) then
				writeln('your baby is in progress');
		if (A > 120) then
				writeln('You are Dunkan');
		if (A > 0) and (A <= 18) then
				writeln('You are young');
		if (A > 18) and (A <= 50) then 
				writeln('You are adult');
		if (A >50) and (A <= 120) then
				writeln('Your are old');
		readln()
	end.