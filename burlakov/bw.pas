program bw;
var
	a,b,c,d: Integer;
begin
	writeln('Enter a,b');
	readln(a,b);
	c:=a*b;
	if (c mod 2)=0 then
	begin
		writeln('Black: ',c/2:00:00);
		writeln('White: ',c/2:00:00);
	end
	else
	begin
	d:=c div 2;
		writeln('Black: ',d+1);
		writeln('White: ',d);
	end;
	readln();
end.