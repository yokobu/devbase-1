program ex_5_5;
uses CRT;
var
   i,n,j: Integer;
   begin
   Randomize;
   	i:=Random (100)+1;
      j:=0;
   	repeat
   	   writeln('Enter number');
   	   readln(n);
         inc(j);
   	   writeln();
   	   if n<>i then
         begin
   	      if n<i then
              begin
   	         writeln('Downward');
              end
   		   else
              begin
   		      writeln('Upward');  
   		      writeln();
              end;
         end;        
   	until n=i;
   	    writeln('You win in ',j,' turns');
   	readln();
   end.