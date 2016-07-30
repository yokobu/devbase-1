program fibonachi;
var fa,fb,fc,a,i:integer;  
begin
writeln('Enter N:');
readln(a);
	begin
		fa:=1;
		writeln(1);
		fb:=1;
		writeln(1);
		for i:=3 to a do 
		begin
		fc:=fa+fb;
		writeln(fc);
		fa:=fb;
		fb:=fc;	
		end;
	end;
	readln();	
end.