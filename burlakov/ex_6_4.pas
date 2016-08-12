program ex_6_4;
var
	i,k: Integer;
	begin
	for i:=1 to 10 do
        begin
        writeln();
           for k:=1 to 10 do 
         	   writeln(i,'*',k,'=',i*k);
        end;
	readln();	
	end.