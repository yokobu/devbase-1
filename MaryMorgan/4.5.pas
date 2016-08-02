program Bottles_of_milk;
uses crt;

var

a: Integer;
b: Integer;


begin 

writeln('99 bottles of milk on the wall, 99 bottles of milk.');
b:= 99;

for a:= 1 to 98 do 
	begin
	b:=b-1;	
	
	writeln('Take one down, pass it around, ', b, ' bottles of milk on the wall...');
	writeln(' ');
	writeln(b, ' bottles of milk on the wall, ', b, ' bottles of milk.');
	delay(300);
	end;

writeln(' ');
writeln('No more bottles of milk on the wall, no more bottles of milk.');
writeln('Go to the store and buy some more, 99 bottles of milk on the wall...');

readln();
end.