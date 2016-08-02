program Floor;

var
Length: integer;
Width: integer;
W_Tile:integer;
B_Tile:integer;

begin

writeln('Enter length and width of floor: '); 
readln(length, width);	


if (length<0) or (width<0) then
	begin
	writeln('Invalid date');
	exit;
	end;

W_Tile:=(length*width)div 2;
B_Tile:=(length*width)div 2;

if ((length*width) mod 2)<>0 then
	begin
	B_Tile:= B_Tile + 1;	
	end;

writeln('White tiles: ', W_Tile);
writeln('Black tiles: ', B_Tile);
readln();
end.