program Age;

var
Age_: integer;

begin
	
writeln('Enter age: ');
readln (age_);

if age_<0 then
	begin
	writeln('in developing');	
	end;

if (age_>0) and (age_<16) then
	begin
	writeln('little');	
	end;

if (age_>15) and (age_<50) then
	begin
	writeln('young');	
	end;

if age_>49 then
	begin
	writeln('old');	
	end;

readln();
end.