program program6_2;
var i,a,sum:integer;
begin
sum:=0;
for i:=1 to 30 do
begin
 	a:=random(50)+1;
    sum:=sum+a;
 end;
 writeln(sum); 
 readln();	
end.