program beer992;
uses crt;
var i:integer;
begin
	for i:=1 to 99 Do
	begin
		if i<99
		then
		begin
    
    writeln(100-i,'butil piva na stene');
	writeln(100-i,'butil piva');
	writeln('Vozmi odnu i pusti po krugu');
	writeln(100-i-1,'butil piva na stene');
	end
		else
writeln( 100-i, 'butil piva na stene' );
	writeln(100-i,'butil piva');
	writeln('Vozmi odnu i pusti po krugu');
	writeln('bolishe net');
	delay(500);
	end;
	readln();
end.