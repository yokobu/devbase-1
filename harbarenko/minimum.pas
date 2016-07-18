program minimum1;
var
	A : Integer;
	B : Integer;
	C : Integer;

		begin
			writeln('Enter three numbers');
		readln(A);
		readln(B);
		readln(C);
			if (A < B) then
				begin
					if (A < C) then
						begin
							writeln('The smallest is ', A);
						end
					else
						begin
							writeln('The smallest is ', C);
						end
				end
				else
					begin
						if (B < C) then
							begin
								writeln('The smallest is ', B);
							end
						else
							begin
								writeln('The smallest is ', C);
							end
				end;
		readln();
		end.
