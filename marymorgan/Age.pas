program Age(official);

var
Age_: integer;

begin
	
writeln('Enter age: ');
readln (age_);

if age_>=16 then
	begin
		if age_>=50 then 
			writeln('old')
		else
		begin
		writeln('young')
		end;
	end
else 
	begin
		if age_>=0 then 
		writeln('little')
	else
		begin
		writeln('in developing')
		end;
	end;

readln();
end.