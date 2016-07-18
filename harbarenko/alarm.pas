program alarm1;
var
	day : Integer;
	month : Integer;
	label Home;
		begin
		Home:
			writeln('Enter day and month');
		readln(day);
		readln(month);
		if ((day < 1) or (day > 7)) or ((month < 1) or (month > 12)) then
			begin
				writeln('Invalid date');
				goto Home;
			end;
		if (month = 7) then
			begin
				writeln(day, ' ',month, ' => "off"');
			end
		else
			begin
				if (day >= 1) and (day <= 5) then
					begin
						writeln(day, ' ',month, ' => "7:00"');
					end
				else
					begin
						writeln(day, ' ',month, ' => "10:00');
					end;
			end;		
	readln();
	end.
