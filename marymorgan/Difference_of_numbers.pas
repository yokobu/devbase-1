program Difference_of_numbers;

var
X, Y, Z: Integer;
MinN: integer;
MaxN: integer;

begin
writeln('Enter three numbers '); 
readln(x, y, z);

if x<y then
	begin
	if x<z then
		begin
		writeln('Min number ', x);
		MinN:=x;
		end
	else
		begin
		writeln('Min number ', z);
		MinN:=z;	
		end;
	end
else
	begin
	if y<z then
		begin
		writeln('Min number ', y);
		MinN:=y;
		end	
	else
		begin
		writeln('Min number ', z);
		MinN:=z;
		end;
	end;

if x>y then
	begin
	if x>z then
		begin
		writeln('Max number ', x);
		MaxN:=x;
		end
	else
		begin
		writeln('Max number ', z);	
		MaxN:=z;
		end;
	end
else
	begin
	if y>z then
		begin
		writeln('Max number ', y);
		MaxN:=y;
		end	
	else
		begin
		writeln('Max number ', z);
		MaxN:=z;
		end;
	end;

writeln('Difference is ', MaxN-MinN); 
readln();
end.