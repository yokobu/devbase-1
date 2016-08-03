program ex_5_2;
var
    m,n,i,j,k:Longint;
    begin
    	m:=1;
    	i:=1;
    	j:=1;
    	writeln('Enter N');
    	readln(n);
    	writeln();
    	writeln(i);
    	writeln(j);
    	while m<=n do 
    	begin
    		k:=i+j;
    		writeln(k);
    		m:=m+1;
    		i:=j;
    		j:=k;
    	end;
        readln();     
    end.