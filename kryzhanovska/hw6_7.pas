program hw6_7;
uses crt;
var
	I,s,b,r,p,s2: Integer;

begin
	randomize;
	writeln('Enter your bet:');
	readln(b);
	s:=0;
	s2:=0;
	i:=0;
	
	if b=1 then
		writeln('You choose Jay');
	if b=2 then
		writeln('You choose Bob');		
	if b>2 then
		writeln('Invalid bet');		
			for i := 1 to 7 do			
				if s2<20 then
				if s<20 then	
					begin	
						r:=random(4)+3;
						p:=random(4)+3;
						writeln ('Day',i);
						writeln('Jay caught',' ',r,' ','pokemons (now he has',' ',r+s,')');
						s:=s+r;		
						writeln('Bob caught',' ',p,' ','pokemons (now he has',' ',p+s2,')');
						s2:=s2+p;		
					end;					
	writeln();
	if s>s2 then
		begin
			writeln('Jay got',' ',s,' ','pokemons');
			writeln('Bob got',' ',s2,' ','pokemons');
			writeln();
			writeln('Jay wins!');
				if b=2 then
					writeln('You lose the bet.');
		end;	
	if s<s2 then
		begin
			writeln('Bob got',' ',s2,' ','pokemons');
			writeln('Jay got',' ',s,' ','pokemons');
			writeln();
			writeln('Bob wins!');
				if b=1 then
					writeln('You lose the bet.');
		end;
	if s=s2 then
		begin
			writeln('Bob got',' ',s2,' ','pokemons');
			writeln('Jay got',' ',s,' ','pokemons');
			writeln();
			writeln('It is a tie.');
			writeln('You lose the bet.');	
		end;
readln();
end.