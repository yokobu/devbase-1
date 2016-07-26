program Three_colors_case;
uses crt;

var

a: Integer;

begin

for a:= 1 to 20 do //цикл.
	begin
	textcolor(a);

	case a of
	1, 2, 3: textcolor (1);
	4, 5, 6: textcolor (2);
	7, 8, 9: textcolor (3);
	10, 11, 12: textcolor (4);
	13, 14, 15: textcolor (5);
	16, 17, 18: textcolor (6);
	19, 20: textcolor (7);
	end;		

	writeln(' Marina, kod tvoi tak prekrasen, i smisl ego kristalno yasen!');
	
	delay(1000);
	end;

readln();
end.