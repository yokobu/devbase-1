program age;
var
	A : Real;
	B : Real;
	C : Real;

		begin
			writeln('Enter three numbers');
		readln(A);
		readln(B);
		readln(C);
			if (A > B) then
				begin
					if (A > C) then
						begin
							writeln('The biggest is ', A:0:2);
						end
					else
						begin
							writeln('The biggest is ', C:0:2);
						end
				end
				else
					begin
						if (B > C) then
							begin
								writeln('The biggest is ', B:0:2);
							end
						else
							begin
								writeln('The biggest is ', C:0:2);
							end
				end;
		readln();
		end.