program prog_7_4; {Prostoe Chislo}
var
	i,j,n: Integer;
begin
	writeln('Enter number');
	readln(n);
	j := n-1;
	for i := 2 to j do 
	begin
		if (n mod i) <> 0 then
			continue
		else
		begin
			writeln('Sostavnoe Chislo');
			halt;
		end;					
	end;
	writeln('Prostoe Chislo');
	readln();		
end.	