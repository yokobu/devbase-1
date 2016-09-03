program dztext;
uses sysutils;
var
	f:textfile;
	m:array[1..99] of Integer;
	i:integer;
	n:integer;
	numb:integer;
Begin
	assign(f,'Dzfail5.txt');
	reset(f);
	for i:=1 to 99 Do 
	begin
		readln(f,n);
		m[i]:=n;
	end;
	writeln('enter numb');
	readln(numb);
	for i:=1 to 99 do 
	begin
		if (m[i]=numb) then 
		begin
			writeln(numb,' ',i);
		end;

	end;


readln();
close(f);
End.