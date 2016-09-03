program dzmas;
uses sysutils;
var
	f:textfile;
	i,j,n: Integer;
 	indent1,indent2:String;
Begin
	assign(f,'Dzfail.txt');
	rewrite(f);
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
 		writeln(f,indent1, indent2);
 		indent2 := indent2 + '^^';
 	end;
 	close(f);
	readln();
End.