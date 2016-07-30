program beer99;
uses crt;
var i:integer;
k:string;
begin               
	for i:=1 to 99 Do 
	 begin
     if i<99
     then
         begin
         if ((100-i) mod 10) =1
         then
         k:=('KA');
         if ((100-i) mod 10)=0 
	     then
         k:=('OK');
         if (((100-i) mod 10)=2) or (((100-i) mod 10)=3) or (((100-i) mod 10)=4) 
	     then
         k:=('KI');
         if (100-i)=11 
	     then
         k:=('OK');
         if	(100-i)=1 
	     then
         k:=('KA');
         if	((100-i)=2) or ((100-i)=3) or ((100-i)=4) 
	     then
         k:=('KI');
	     if ((100-i)=12) or ((100-i)=13) or ((100-i)=14)
	     then 
	         k:=('OK');
             else	
	         k:=('OK');

             begin
	         writeln( 100-i, 'butil'(k)' piva na stene' );
	         writeln(100-i,'butil'(k) 'piva');
	         writeln('Vozmi odnu i pusti po krugu');

	         writeln(100-i-1,'butil'(k)' piva na stene');      //dobav peremennuy chto bi zamenit 100-i-1(p)
	         end
	         else
	         begin 
	         writeln(100-i,'butilKA piva na stene' );
	         writeln(100-i,'butiKA piva');
	         writeln('Vozmi odnu i pusti po krugu');
	          writeln('bolishe net');
	          delay(500);
	           end;
	     end;			
	end;
readln();
end.