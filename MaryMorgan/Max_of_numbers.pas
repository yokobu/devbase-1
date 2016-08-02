program Max_of_numbers;

var
X:integer;
Y:integer;
Z:integer;
	
begin
writeln('Three numbers '); 
readln(x, y, z);

if x>y then
	begin
		if x>z then
			writeln('Max number ', x)
		else
		begin
		writeln('Max number ', z);	
		end;
	end
else
	begin
	if y>z then
	writeln('Max number ', y)	
	else
	begin
	writeln('Max number ', z);
	end;
end;
readln();
end.