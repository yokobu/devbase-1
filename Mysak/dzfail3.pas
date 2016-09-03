program dztext;
uses sysutils;
var
	f:textfile;
	n:integer;
	st:string;
	i:integer;
Begin
	assign(f,'dzfail3.txt');
	reset(f);
	n:=0;
	readln(f,st);
	for i:=1 to length(st) do
	begin
	if ((ord(st[i])>=97) and (ord(st[i])<=122)) or ((ord(st[i])<=91) and (ord(st[i])>=65)) then
	begin
		n:=n+1;
	end;
	end;
	writeln(n);



	close(f);
	readln();
end.