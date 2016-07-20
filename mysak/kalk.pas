program kalk;
var a,b,c:integer;
begin
writeln('1: a+b');
writeln('2: a-b');
writeln('Enter operation number:');
readln(a);
case a of
1:
begin
writeln('Enter operand');
readln(b,c);
writeln('Result is ', b+c);
end;
2:
begin
writeln('Enter operand');
readln(b,c);
writeln('Result is ', b-c);
end;
else
 writeln('wrong nb');
end;



readln();
end.