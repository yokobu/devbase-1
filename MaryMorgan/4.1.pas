program best_wishes;
uses crt;

var
a: Integer;
otstup: string;

begin
otstup:=' ';

for a:= 1 to 20 do //цикл.
	begin
	textcolor(a);	
	if a=16 then 
		begin
		textcolor (19);
		end;

	writeln(otstup, a, ' Marina, kod tvoi tak prekrasen, i smisl ego kristalno yasen!'); //выводим a, чтобы видеть номера цветов.
	otstup:= otstup+' ';
	delay(1000);
	end;

readln();
end.