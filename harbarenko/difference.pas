program differ;
var
	A : Integer;
	B : Integer;
	C : Integer;
	D : Integer;

		begin
			writeln('Enter three numbers');
		readln(A);
		readln(B);
		readln(C);
			if (A > B) then
				begin
					if (A > C) then
						begin
							if (B > C) then
								begin
									D := A - C;
									writeln('The result is ', D);
								end
							else
								begin
									D := A - B;
									writeln('The result is ', D);
								end;
						end
					else
						begin
							D := C - B;
							writeln('The result is ', D);
						end;
				end
			else
				begin
					if (B > C) then
						begin
							if (A > C) then
								begin
									D := B - C;
									writeln('The result is ', D);
								end
							else
								begin
									D := B - A;
									writeln('The result is ', D);
								end;
						end
					else
						begin
							D := C - A;
							writeln('The result is ', D);
						end;
				end;
		readln();
		end.