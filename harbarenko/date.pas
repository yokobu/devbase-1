program date;
var
	day: Integer;
	month: Integer;
begin
	writeln('Enter day and month');
	readln(day);
	readln(month);
	writeln(day, month);
	if (month < 2) and (month > 11) then
	exit;
	if month = 2 then
	begin
		if day < 28 then
		begin
			day := day + 1;
			writeln(day, month);
		end
		else
		begin
			day := 1;
			month := month +1;
			writeln(day, month);
		end
	end
readln();
end.