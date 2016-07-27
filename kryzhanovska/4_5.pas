program hw4_5;
uses crt;
var
	i: Integer;	
begin
	i:=99;
	
	for i := 99 downto 1 do

	begin	
			writeln ( i,' bottles of beer on the wall,',i,'bottles of beer.');
			writeln (' Take one down and pass it around,',i-1,' bottles of beer on the wall.');
			delay (500);
			writeln ();	
	end;

	readln();
end.
