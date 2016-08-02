program If_months_year;

var
  Day: Integer; 
  Month: integer;

begin
	
writeln('Enter date (day+month): ');
readln(day, month);

if (month<2) or (month>11) then 
	begin 
	writeln('Invalid date'); 
	readln();
	exit;
	end;

if (month = 2) and (day >28) then 
	begin 
	writeln('Invalid date'); 
	readln();
	exit;
	end;

if (day >30) then 
	begin 
	writeln('Invalid date'); 
	readln();
	exit;
	end;

writeln('Next date:');
if day<30 then
	begin
	day:= day+1;
	end
else
	begin
		day:=1;
		month:= month+1;
	end;
writeln(day,' ', month);
readln();
end.


