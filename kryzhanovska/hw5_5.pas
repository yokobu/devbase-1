program hw5_5;
uses crt;
var
	r: Integer;
	n: Integer;	

begin
	n:=1;
	begin
		r:=random(100)+1;
			while n <> r do
			begin
			writeln('Enter number');
			readln(n);
				if n>r then
				writeln('>')
				else
				if n<r then
				writeln('<')
				else
				writeln('You win!');
			end
	end;
readln();
end.