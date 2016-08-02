program hw4_4;
uses crt;
var
	I: Integer;
	indent: String;
begin
	indent:=' ';
	
	for I:= 1 to 20 do
		begin
		textcolor (i);
			case I of 
			1,2,3:
				textcolor (12);
			4,5,6:
				textcolor (13);
			7,8,9:
				textcolor (14);
			10,11,12:
				textcolor (15);
			13,14,15:
				textcolor (11);
			16,17,18:
				textcolor (10);
			else
				textcolor (9);
			end;
		writeln (indent, i,' ','Natali is a very kind and sympathetic person. She is helpful in every moment)');
		indent:=indent+' ';
		delay (1000);	
		end;
	
	readln();
end.