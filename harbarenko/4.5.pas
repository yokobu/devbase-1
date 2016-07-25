program best_wishes;
uses crt;
var 
	i : Integer;
			begin
				for i:=1 to 99 do
					begin
						if i<>99 then
							begin
								textcolor(8);
								writeln(100-i, ' bottles of beer on the wall, ', 100-i, ' bottles of beer.');
								writeln('Take one down and pass it around, ', 100-i-1, ' bottles of beer on the wall.');
								writeln();
								delay(1000);
							end
						else
							begin
								writeln(100-i, ' bottle of beer on the wall, ', 100- i, ' bottle of beer.');
								writeln('Take one down and pass it around, no more bottles of beer on the wall.');
								writeln();
						end;
					end;
				writeln('No more bottles of beer on the wall, no more bottles of beer.');
				writeln('Go to the store and buy some more, ', i, ' bottles of beer on the wall.');
		readln();
		end.