program calculator;
var
	a : Integer;
	b : Integer;
	c : Integer;
	d : Integer;
		begin
			writeln('Available operations');
			writeln('1: a+b');
			writeln('2: a-b');
			writeln('3: a*b');
			writeln('4: a div b');
			writeln('5: a mod b');
			writeln('6: a^2');
			writeln('Enter operation number');
			readln(c);
		case c of
			1: 
				begin
				writeln ('Enter operands');
				readln(a, b);
				d := a + b;
				writeln('The result is ', d);
				end;
			2: 
				begin
				writeln ('Enter operands');
				readln(a, b);
				d := a - b;
				writeln('The result is ', d);
				end;
			3: 
				begin
				writeln ('Enter operands');
				readln(a, b);
				d := a * b;
				writeln('The result is ', d);
				end;
			4: 
				begin
				writeln ('Enter operands');
				readln(a, b);
				d := a div b;
				writeln('The result is ', d);
				end;
			5: 
				begin
				writeln ('Enter operands');
				readln(a, b);
				d := a mod b;
				writeln('The result is ', d);
				end;
			6: 
				begin
				writeln ('Enter operand');
				readln(a);
				d := a*a;
				writeln('The result is ', d);
				end;
			else
				begin
				writeln('Invalid data');
				end
			end;
		readln();
	end.