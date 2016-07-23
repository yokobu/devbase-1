program time1;
var
	hour : Integer;
	minute : Integer;
	label Home;
		begin
		Home:
			writeln('Enter hour and minutes');
		readln(hour);
		readln(minute);
		writeln(hour,':',minute);
		if (hour < 0) or (hour > 23) or (minute < 0) or (minute > 59) then
			begin
				writeln('Invalid time');
				goto Home;
			end;
		if (minute = 59) then
			begin
				if (hour = 23) then
					begin
						hour := 0;
						minute := 0;
					end
				else
					begin
						hour := hour + 1;
						minute := 0;
					end
			end		
		else
			begin
					minute := minute + 1;
			end;
		writeln(hour,':',minute);
		readln();
	end.