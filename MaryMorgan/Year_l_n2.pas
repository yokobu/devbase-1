program Year_l_n;

var
Year: integer;
IsLeap : boolean;

begin

writeln('Enter year:');
readln(year);
IsLeap := false;

if (year mod 4)=0 then
	begin
	if (year mod 100)=0 then
		begin
		if (year mod 400)=0 then
			begin			
			IsLeap := true;
			end;
		end
	else
		begin		
		IsLeap := true;
		end;	
	end;


if (IsLeap) then
	begin
	writeln('leap');
	writeln('february has 29 days');
	end
else
	begin
	writeln('non-leap');
	writeln('february has 28 days');
	end;

writeln('IsLeap=',IsLeap);

readln();
end.