Program Dz20;
var
	mas:array[1..10] of Integer;
	i:integer;
Begin
	for i:=1 to 10 Do
	begin
		readln(mas[i]);
	end;
	for i:=10 downto 1 do 
	begin
		if ((mas[i] mod 2)=1) then 
	 	write(mas[i]);
	end; 
	readln();
end.