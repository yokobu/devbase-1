program Year_l_n;

var
Year: integer;

begin
	
writeln('Enter year:');
readln(year);
if (year mod 4)=0 then
	begin
	if (year mod 100)=0 then
		begin
		if (year mod 400)=0 then
			begin
			writeln('leap');
			end
		else
			begin
			writeln('non-leap');
			end;	
		end
	else
		begin
		writeln('leap');		
		end;	
	end
else
	begin
	writeln('non-leap');
	end;

readln();
end.