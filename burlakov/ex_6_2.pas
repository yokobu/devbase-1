program ex_6_2;
uses CRT;
var
	i,j,k: Integer;
	begin
	Randomize;
	k:=0;
	for i:=1 to 30 do
        begin
         	j:=random(50)+1;
         	k:=k+j;
         	writeln(j);
         end;
    writeln('Sum: ',k);      
	readln();	
	end.