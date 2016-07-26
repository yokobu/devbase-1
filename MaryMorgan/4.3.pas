program Two_colors;
uses crt;

var

a: Integer;

begin

for a:= 1 to 20 do //цикл.
	begin
	textcolor(a);

	if (a mod 2)<> 0 then
		begin
		textcolor (12);
		end
	else
		begin
		textcolor (10);
		end;

	writeln(' Marina, kod tvoi tak prekrasen, i smisl ego kristalno yasen!');
	
	delay(1000);
	end;

readln();
end.
