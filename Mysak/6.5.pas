program program6_5;
uses crt;
var bet,i,Bob,Jay,sumb,sumj:integer; 
begin
	Randomize;
writeln('1-Bob,2-Jay  Enter your bet:');
readln(bet);
if bet>2 then
 writeln('invalid numb');
    sumb:=0;
    sumj:=0;
	for i:=1 to 7 Do
	begin
	  Bob:=random(4)+3;
	  Jay:=random(4)+3;
	  sumb:=sumb+bob;
      sumj:=sumj+jay;
	  writeln('Day',i);
	  writeln('Bob caught ',bob,' pokemons (now he has',sumb ,' )');
	  writeln('Jay caught ',jay,' pokemons (now he has',sumj ,' )');
	  delay(500);
    end;
    if (bet=1) and (sumb>sumj) then
    writeln('Bob wins! You win the bet.');
    if (bet=1) and (sumj>sumb) then
    writeln('Jay wins! You lose the bet.');
    if (bet=2) and (sumj>sumb) then
    writeln('Jay wins! You win the bet.');
    if (bet=2) and (sumb>sumj) then
    writeln('Bob wins! You lose the bet.');
    if (sumb=sumj) then
    writeln('You lose the bet');

readln();
end.