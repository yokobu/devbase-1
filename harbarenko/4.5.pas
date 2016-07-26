program best_wishes;
uses crt;
var 
	i : Integer;
			begin
				for i:=1 to 98 do
					begin
						textcolor(8);
						writeln(100-i, ' bottles of beer on the wall, ', 100-i, ' bottles of beer.');
						writeln('Take one down and pass it around, ', 100-i-1, ' bottles of beer on the wall.');
						writeln();
						delay(10);
					end;
				writeln(100-i-1, ' bottle of beer on the wall, ', 100-i-1, ' bottle of beer.');
				writeln('Take one down and pass it around, no more bottles of beer on the wall.');
				writeln();
				writeln('No more bottles of beer on the wall, no more bottles of beer.');
				writeln('Go to the store and buy some more, ', i + 1, ' bottles of beer on the wall.');
		readln();
		end.