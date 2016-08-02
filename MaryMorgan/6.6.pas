program faster_pokemons;
uses crt;

var
bet_number, day, random_one, random_two, a, b: integer;
one_name, two_name: string; //имена персонажей
Sum_one, Sum_two: integer;//сумма рандомов

begin
randomize;
a:=3;
b:=6;
Sum_one:=0;
Sum_two:=0;
writeln('Enter your bet: 1 or 2');
readln (bet_number);
if bet_number=1 then
	begin
	one_name:= 'Jay';
	two_name:='Bob';
	writeln('You choose Jay.');
	end
else
	begin
	one_name:= 'Bob';
	two_name:='Jay';
	writeln('You choose Bob.');
	end;	

for day:=1 to 7 do
	begin
	random_one:=Random(b-a+1)+a;
	random_two:=Random(b-a+1)+a;
	Sum_one:=Sum_one+random_one;
	Sum_two:=Sum_two+random_two;
	writeln();
	writeln('Day ', day);
	writeln(one_name, ' caught ',  random_one, ' pokemons ', ' (now he has ', Sum_one, ')');		
	writeln(two_name, ' caught ',  random_two, ' pokemons ', ' (now he has ', Sum_two, ')');
	delay(300);
	if (Sum_one>=20) or (Sum_two>=20) then
		begin
		break;	
		end;
	end;
writeln();
if Sum_one < Sum_two then
	begin
	writeln (two_name, ' wins!');
	writeln ('You lose the bet.');
	end
else
	if (Sum_one>=20) and (Sum_two>=20) then
		begin
		writeln ('It is a tie.');
		end
	else
		begin
		writeln (one_name,' wins!');
		writeln ('You wins the bet.');
		end;

readln();
end.