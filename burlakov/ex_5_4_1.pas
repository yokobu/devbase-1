program ex_5_4_1;
var
	i,max,min,count,iold: Integer;
	begin
	count:=0;
	iold:=0;
    repeat 
	  begin
	    writeln('Enter number');
	    readln(i);	  
	  	if i=0 then
	  	  break;
	  	inc(count);  
	  	if count=1 then
	  	  begin
	  	   max:=i;
	  	   min:=i;
	  	  end
	  	else
	  	  begin
	  	  	if max<i then
	  	  	max:=i
	  	  	else
	  	  	max:=max;
	  	  	if min>i then
	  	  	min:=i
	  	  	else
	  	  	min:=min;
	  	  end;
	  	iold:=iold+i;
	  end;
	until i=0;  
	writeln('Max value ',max);
	writeln('Min value ',min);
	writeln('Average value ',iold/count:03:03);  
	readln();	
	end.
