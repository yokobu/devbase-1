program ex_4_1;
uses crt;
var
	i: Integer;
	indent:String;
begin
	indent:=' ';
	Writeln();
	Writeln();
	writeln();
	for i:=1 to 20 do
	begin
	if i=16 then textcolor(14)
	else
	textcolor(i);
	Writeln(indent,i,'  You are the best!!!');
	indent:=indent+' ';
    delay(100);
	end;
	readln();
end.
