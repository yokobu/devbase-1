program best_wishes;
uses crt;
var 
	i : Integer;
	j : Integer;
	indent : String;
		begin
			indent := '';
			for i:=1 to 20 do
			begin
				for j:=1 to 3 do
				begin
				textcolor(i);
					writeln(indent,i,' Alex, you the kindest man in the world. Your kindness warms even in winter');
				indent := indent + ' ';
				delay(1000);
				end;
			end;
		readln();
		end.