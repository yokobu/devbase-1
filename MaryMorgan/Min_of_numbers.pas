program Min_of_numbers;

var
X, Y, Z: Integer;

begin
	
writeln('Enter three numbers '); 
readln(x, y, z);

if x<y then
	begin
		if x<z then
			writeln('Min number ', x)
		else
		begin
		writeln('Min number ', z);	
		end;
	end
else
	begin
	if y<z then
	writeln('Min number ', y)	
	else
	begin
	writeln('Min number ', z);
	end;
end;

readln();
end.