program celsius;
var
	C : Integer;
	F : Real;
	K : Real;
	begin
		writeln('Enter Celsius degrees:');
		readln(C);
		F := C + 32.8;
		K := C + 273.15;
		writeln('This is');
		writeln(F:0:1, ' F');
		writeln(K:0:2, ' K');
		readln();
	end.