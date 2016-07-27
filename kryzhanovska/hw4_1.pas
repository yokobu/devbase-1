program hw4_1;
uses crt;
var
	I: Integer;
	indent: String;
begin
	indent:=' ';
	
	for I:= 1 to 20 do
		begin
		textcolor (i);
			if (I=16) then
			begin
				textcolor (i-12);
			end;
		writeln (indent, i,' ','Natali is a very kind and sympathetic person. She is helpful in every moment)');
		indent:=indent+' ';
		delay (1000);	
		end;
	
	readln();
end.
