program ex_4_5;
uses crt;
var
   i,b: Integer;
   begin
   b:=99;
   for i:=1 to 99 do 
   begin
   writeln();
   case b of
   2:
      begin
   	writeln(b,' bottles of beer on the wall');
   	writeln(b,' bottles of beer!');
   	writeln('Take one down, pass it around');
   	writeln(b-1,' bottle of beer on the wall!');
      end;
   1:
      begin
      writeln(b,' bottle of beer on the wall');
      writeln(b,' bottle of beer!');
      writeln('Take one down, pass it around');
      writeln(b-1,' bottles of beer on the wall!');
      end;
   	else
      begin 
   	writeln(b,' bottles of beer on the wall');
   	writeln(b,' bottles of beer!');
   	writeln('Take one down, pass it around');
   	writeln(b-1,' bottles of beer on the wall!');
      end;
   end;
   	b:=b-1;
   	delay (100);
   	{ClrScr;}
   end;
   readln();
   end.