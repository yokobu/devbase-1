program program6_4;
uses crt;
var  a,b:integer;
begin
	a:=1;
	b:=1;
 repeat
 writeln(a,'*',b,'=',a*b);
 delay(1000);
 b:=b+1; 
 if (b=10) then
 a:=a+1;
 b:=1;
 until (a=10) and (b=10);
readln();
end.