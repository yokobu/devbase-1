program Next_minute;

var
Hour:integer;
Minute:integer;


begin
	
writeln('Enter time (hour, minute)');
readln(hour, minute);


if minute<=58 then
	begin
	minute:=minute+1;	
	end
else
	begin
	minute:=0;
	if hour<=22 then
		begin
		hour:=hour+1;
		end
	else
		begin
		hour:=0;
		end;
	end;


Writeln(hour, ' ', minute);
readln();
end.