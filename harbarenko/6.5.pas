program fishing;
uses crt;
var
	i : Integer;
	day : Integer;
	Jay : Integer;
	Bob : Integer;
	sumJay : Integer;
	sumBob : Integer;
	begin
		Jay := 0;
		Bob := 0;
		sumJay := 0;
		sumBob := 0;
		randomize;
		writeln('Enter your bet:');
		writeln('1 - Jay');
		writeln('2 - Bob');
		readln(i);
		case i of
			1: 
				begin
				writeln ('1');
				writeln('You choose Jay');
				end;
			2: 
				begin
				writeln ('2');
				writeln('You choose Bob');
				end;
		else
				begin
				writeln('Invalid bet');
				exit;
				end
		end;
		for day := 1 to 7 do
			begin
			Jay := random(4) + 3;
			sumJay := sumJay + Jay;
			Bob := random(4) + 3;
			sumBob := sumBob + Bob;
			writeln('Day ', day);
			writeln('Jay caught ', Jay, ' pokemons (now he has ', sumJay, ')');
			writeln('Bob caught ', Bob, ' pokemons (now he has ', sumBob, ')');
			writeln();
			end;
		writeln('Jay got ', sumJay, ' pokemons');
		writeln('Bob got ', sumBob, ' pokemons');
		if sumJay = sumBob then
			begin
				writeln('It is a tie.');
				writeln('You lose the bet.');
			end;
		if sumJay > sumBob then
			begin
			writeln('Jay wins!');
				if i = 1 then
					begin
					writeln('You win the bet.');
					end
				else
					begin
					writeln('You lose the bet.');
					end;
			end;
		if sumJay < sumBob then
			begin
			writeln('Bob wins!');
				if i = 2 then
					begin
					writeln('You win the bet.');
					end
				else
					begin
					writeln('You lose the bet.');
					end;
			end;
		readln();
	end.