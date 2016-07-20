program Alarm_clock;

var
DW: integer;
Month: integer;

begin
writeln('Enter day of week and month');	
readln(DW, month);

if (month<1) or (month>12) or (DW<1) or (DW>7) then
	begin
	writeln('Invalid data');
	exit;
	end;

if month=7 then
	begin
	if DW<=5 then
		begin
		writeln('on 10.00');
		end
	else
		begin
		writeln('off');
		end;
	end
else // month <>7
	begin
	if DW<=5 then
		begin
		writeln('on 07.00');	
		end
	else
		begin
		writeln('on 10.00');
		end;
	end;
readln();
end.