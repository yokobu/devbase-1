program prog_7_5; {Yolka}
var
	i,j,n: Integer;
	indent1,indent2:String;

begin
	indent2 := '^';
	writeln('Enter number');
	readln(n);
	for i := 1 to n do 
	begin
		indent1 := ' ';
		for j := n downto i do
		begin		
			indent1 := indent1 + ' ';
		end;	
		writeln(indent1, indent2);
		indent2 := indent2 + '^^';
	end;
	
	readln();	
end.	