program ex_4_4;
uses crt;
var
	i,c: Integer;
	indent:String;
begin
	indent:=' ';
	c:=6;
	Writeln();
	Writeln();
	writeln();	
	for i:=0 to 20 do
	begin
	if (i mod 3)=0 then
	c:=c+1
	else
	c:=c;
	textcolor(c);
	Writeln(indent,'  You are the best!!!');
	indent:=indent+' ';
    delay(100);
    end;
	readln();
end.
