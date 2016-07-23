program prog4*;
var
   a,b,c,min,max:integer;
begin
writeln('Enter 3 nomber');
readln(a,b,c);
if a>b and a>c and c>b
then a:=max b:=min;
if a>b and a>c and b>c
then a:=max c:=min;
if b>a and b>c and a>c
then b:=max c:=min;
if b>a and b>c and c>a
then b:=max a:=min;
if c>a and c>b and a>b
then c:=max b:=min;
if c>a and c>b and b>a
then c:=max a:=min;
writeln(max-min);
end.