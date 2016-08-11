program progUni;
 
uses
  UniConsole;
 
var
	UTF8TestString: string;
	i: integer;

begin
	settitle('Цветовая гамма');

	textcolor(7,0);

	UTF8TestString:= 'rosé, водка and ούζο';
	writeln ('plain: ' + UTF8TestString);

	for i := 0 to 20 do
	begin
		textcolor(i,i+2);

		GotoXY(2*i,i+1);
		
		writeln('This is color ',i, '(',i+2,')');
	end;

	textcolor(7,0);
	readln();
	clrscr;
	readln;
end.