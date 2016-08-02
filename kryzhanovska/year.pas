program prog1;
var 
  I: integer;

begin
  writeln('Enter year');
  readln(I);
  if (I mod 4)=0 then
    begin
  		 if (I mod 100)<>0 then
  		 begin
  		 	  if (I mod 400)=0 then
  		 	  begin
  		 	  writeln('leap year')
  		 	  end
  			  else
  			  begin
  			  writeln('common year')
  		 	  end
  		 end
  	else
  		begin
  		writeln('common year');
    	end
    end;
   readln();
end.