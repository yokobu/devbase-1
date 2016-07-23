program quarter;
var
	month : Integer;
		begin
			writeln('Enter month');
		readln(month);
		case month of
			1,2,3: 
				writeln('This is the first quarter');
			4,5,6:
				writeln('This  is the second quarter');
			7,8,9:
				writeln('This is the third quarter');
			10,11,12:
				writeln('This is the third quarter');
			else
				writeln('Invalid month');
			end;
		readln();
	end.