program N;

var

Number: integer;


begin
	
writeln('Enter number: ');
readln (number);

if (number mod 2)=0 then
	begin
	writeln('even number');
	end;

if (number mod 10)=0 then
	begin
	writeln('round number');	
	end;

readln();
end.