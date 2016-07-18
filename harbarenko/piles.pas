program pile;
var
	L : Integer;
	H : Integer;
	A : Integer;
	B : Integer;
	C : Integer;
	label Home;
		begin
		Home:
			writeln('Enter length and hight');
		readln(L);
		readln(H);
		writeln(L,'*',H);
		if (L <= 0) or (H <= 0) then
			begin
				writeln('Invalid size');
				goto Home;
			end;
		if (H = 1) then
			begin
				A := L div 2;
				B := L - A;
				writeln(B, ' black', ', ', A, ' white');
			end
		else
			if (H mod 2 = 0) then
				begin
					C := L * H;
					A := C div 2;
					B := A;
					writeln(B, ' black', ', ', A, ' white');
				end
			else
				begin
					C := L * H;
					A := C div 2;
					B := C - A;
					writeln(B, ' black', ', ', A, ' white');
				end;
		readln();
	end.
