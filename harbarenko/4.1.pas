program best_wishes;
uses crt;
var 
	i : Integer;
	indent : String;
		begin
			indent := '';
			for i:=1 to 20 do
			begin
			textcolor(i);
				if i = 16 then
					begin 
						textcolor(i-14);
					end;
			writeln(indent,i,' Alex, you the kindest man in the world. Your kindness warms even in winter');
			indent := indent + ' ';
			delay(1000);
			end;
			readln();
		end.