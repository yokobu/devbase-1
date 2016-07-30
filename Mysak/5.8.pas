program balishe_menishe2;
uses crt;
var  a,b,c:integer;            //                       
begin
a:=3;
c:=0;
  repeat
  writeln('Enter number:');
  readln(b);
  writeln('abs=',abs(b-a));
  if (abs(b-a)>=500) and (abs(b-a)<=999)  then
    writeln('Zamerz');
  if (abs(b-a)<=499) and (abs(b-a)>=100)  then
    writeln('Prohladno');
  if (abs(b-a)<=99)  and (abs(b-a)>=50)   then
    writeln('Teplo');
  if (abs(b-a)<=49)  and (abs(b-a)>=10)   then
    writeln('Garacho');
  if (abs(b-a)<=9)   and (abs(b-a)>=1)    then
    writeln('Obgigaet');


  if  ((abs(a-c))>(abs(a-b)))   then 
    writeln('Teplee');
  if  ((abs(a-c))<(abs(a-b)))   then
    writeln('Holodnee');
  c:=b;
  until b=a;
 writeln('You Win');
 readln();	
end.