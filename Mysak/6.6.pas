program program6_6;
uses crt;
var bet,sumj,sumb,bob,jay,Day:integer; 
begin
   Randomize;
   writeln('1-Bob,2-Jay  Enter your bet:');
   readln(bet);
   if bet>2 then
   writeln('invalid numb');
   sumb:=0;
   sumj:=0;
   day:=1;
   repeat
    begin
	   Bob:=random(4)+3;
	   Jay:=random(4)+3;
	   sumb:=sumb+bob;
       sumj:=sumj+jay;
	   writeln('Day',DAY);
	   writeln('Bob caught ',bob,' pokemons (now he has ',sumb ,' )');
	   writeln('Jay caught ',jay,' pokemobns (now he has ',sumj ,' )');
	   day:=day+1;
	   delay(500);
     end;
    until (sumb>=50) or (sumj>=50);
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