program maxnumber;
var
	A : Integer;
	B : Integer;
	i : Integer;
		begin
		writeln('Enter two numbers');
		readln(A);
		readln(B);
		for i := A to B do
		begin
		writeln(B, ' is the biggest');
		break;
		end;
		for i := B to A do
		begin
		writeln(A, ' is the biggest');
		break;
		end;
		readln();
	end.