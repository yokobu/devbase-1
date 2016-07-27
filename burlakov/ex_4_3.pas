program ex_4_3;
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
	if (i mod 2)=0  then textcolor(14)
	else
	textcolor(13);
	Writeln(indent,i,'  You are the best!!!');
	indent:=indent+' ';
    delay(100);
	end;
	readln();
end.
