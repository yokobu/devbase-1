program balishe_menishe;
var  a,b:integer;
begin
a:=random(100);
repeat
writeln('Enter number:');
readln(b);
if b>a then
	writeln('>');
	if b<a then
	writeln('<');
until b=a;
writeln('You Win');
readln();	
end.