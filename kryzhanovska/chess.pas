program prog1;
var 
  x: integer;
  y: integer;
  z: integer;
  w: integer;

begin
	writeln('Enter size');
  	readln(x,y);
  	z:= x*y;
  	w:= (z div 2);
  	writeln(z-w,' ',w);
  	readln();
end.
