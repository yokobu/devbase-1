program time;
var
	A : Integer;
	B : Integer;
	label Home;
		begin
		Home:
			writeln('Enter hour and minutes');
		readln(A);
		readln(B);
		writeln(A,':',B);
		if ((A < 0) or (A > 24)) or ((B < 0) or (B > 59)) then
			begin
				writeln('Invalid time');
				goto Home;
			end;
		if (B = 59) then
			begin
				A := A + 1;
				B := 0;
			end
		else
			begin
					B := B + 1;
			end;
		writeln(A,':',B);
		readln();
	end.