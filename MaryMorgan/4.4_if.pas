program Three_colors_if;
uses crt;

var

a: Integer;
new_color: integer;

begin

for a:= 1 to 20 do 
	begin
	textcolor(a);
	new_color:= (a div 3);

	if (a mod 3) <> 0 then
		begin
		new_color:= new_color+1;
		end;
	textcolor (new_color);
	writeln(' Marina, kod tvoi tak prekrasen, i smisl ego kristalno yasen!');
	
	delay(1000);
	end;

readln();
end.
