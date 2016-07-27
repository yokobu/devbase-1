program hw4_3;
uses crt;
var
	I: Integer;
	indent: String;
begin
	indent:=' ';
	
	for I:= 1 to 20 do
		begin
		textcolor (i);
			if (I mod 2)=0  then
			begin
				textcolor (12);
			end
			else
			begin
				textcolor (10);
			end;
		writeln (indent, i,' ','Natali is a very kind and sympathetic person. She is helpful in every moment)');
		indent:=indent+' ';
		delay (1000);	
		end;
	
	readln();
end.