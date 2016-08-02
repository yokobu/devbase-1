program program6_2_a;
var i,a,sum,num:integer;
begin
	sum:=0;
	num:=1;
for i:=1 to 50 do
begin
 	a:=random(50)+1;
    sum:=sum+a;
    num:=num+1;
    writeln(num,'sum',sum); 
 end;
 readln();	
end.