program best_wishes;
uses crt;
var 
	i : Integer;
	j : Integer;
	k : Integer;
	indent : String;
		begin
			indent := '';
			k := 1;
			for i:=1 to 10 do
			begin
				for j:=5 to 6 do
				begin
				textcolor(j);
					writeln(indent,k,' Alex, you the kindest man in the world. Your kindness warms even in winter');
				indent := indent + ' ';
				k := k + 1;
				delay(1000);
				end;
			end;
		readln();
		end.