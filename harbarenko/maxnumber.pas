program maxnumber;
var
	A : Integer;
	B : Integer;
		begin
		writeln('Enter two numbers');
		readln(A);
		readln(B);
			while A = B do
				begin
				writeln('Numbers are even');
				break;
				end;
			while (A <= 0) and (B < 0) and (A div B < 1) and (B <> 0) do
				begin
				writeln(A, ' is bigger');
				break;
				end;
			while (A <= 0) and (B < 0) and (A div B >= 1) and (B <> 0) do
				begin
				writeln(B, ' is bigger');
				break;
				end;
			while (A >= 0) and (B > 0) and (A div B < 1) and (B <> 0) do
				begin
				writeln(B, ' is bigger');
				break;
				end;
			while (A >= 0) and (B > 0) and (A div B >= 1) and (B <> 0) do
				begin
				writeln(A, ' is bigger');
				break;
				end;
			while (A < 0) and (B > 0) do
				begin
				writeln(B, ' is bigger');
				break;
				end;
			while (A > 0) and (B < 0) do
				begin
				writeln(A, ' is bigger');
				break;
				end;
			while (A < 0) and (B = 0) do
				begin
				writeln(B, ' is bigger');
				break;
				end;
			while (A > 0) and (B = 0) do
				begin
				writeln(A, ' is bigger');
				break;
				end;
			readln();
	end.