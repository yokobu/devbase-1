program year1;
var
	year1 : Integer;
		begin
			writeln('Enter year');
		readln(year1);
		if (year1 mod 100 = 0) and (year1 mod 400 = 0) then
			begin
				writeln('This year is leap one');
			end
		else
			begin
				if (year1 mod 4 = 0) then
					begin
						writeln('This year is leap one');
					end
				else
					begin
						writeln('It is not a leap year')
					end;
			end;
		readln();
	end.
