program ex_4_5_1;
uses crt;
var
   i,b: Integer;
   c,d:String;
   begin
   b:=99;
   for i:=1 to 99 do 
   begin
   writeln();
   case b of
   2:
   begin
   c:=' bottles';
   d:=' bottle';
   end;
   1:
   begin
   c:=' bottle';
   d:=' bottles';
   end;
   else
   begin
   c:=' bottles';
   d:=' bottles';
   end;
   end;
      begin 
   	writeln(b,c,' of beer on the wall');
   	writeln(b,c,' of beer!');
   	writeln('Take one down, pass it around');
   	writeln(b-1,d,'  of beer on the wall!');
      end;
   	b:=b-1;
   	delay (100);
   	{ClrScr;}
   end;
   readln();
   end.