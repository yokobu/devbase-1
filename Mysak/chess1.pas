Program Chess;
Uses wincrt,graph;
 Const 
  colorWhite = 15;
  colorBlack = 16;
  colorPink = 13;

  FigureTypePawn = 1;
  FigureTypebishop=2;
  FigureTypeknight=3;
  FigureTypecastle=4;
  FigureTypequeen=5;
  FigureTypeking=6;

type
	TFigure = record
		FigureType : Integer;
		IsBlack: Boolean;
	end;

	TField = array[1..8, 1..8] of TFigure;
var
	gm,gd:smallInt;
	kontj,konti,fromj,fromi,toj,toi:integer;
	
	PlayField: TField;
	//key:char;


procedure zapol;
	var
		j,i: Integer;
begin
	for j:=1 to 8 do 
	begin
		for i:=1 to 8 do 
		begin

			if (j=2) then
			begin
				PlayField[j,i].figuretype:=FigureTypePawn;
				PlayField[j,i].IsBlack:=true;
			end;

			if (j=7) then
			begin
				PlayField[j,i].figuretype:=FigureTypePawn;
				PlayField[j,i].IsBlack:=false;
			end;

			if ((j=1) or (j=8)) and ((i=3) or (i=6)) then
			begin
				PlayField[j,i].figuretype:=FigureTypebishop;
				if (j=1) then
				PlayField[j,i].IsBlack:=true
				else
				PlayField[j,i].IsBlack:=false;
			end;

			if ((j=1) or (j=8)) and ((i=2) or (i=7)) then
			begin
				PlayField[j,i].figuretype:=FigureTypeknight;
				if (j=1) then
				PlayField[j,i].IsBlack:=true
				else
				PlayField[j,i].IsBlack:=false;
			end;

			if ((i=1) or (i=8)) and ((j=1)or (j=8)) then
			begin
				PlayField[j,i].figuretype:=FigureTypecastle;
				if (j=1) then
				PlayField[j,i].IsBlack:=true
				else
				PlayField[j,i].IsBlack:=false;
			end;

			if ((j=1) or (j=8)) and (i=4) then
			begin
				PlayField[j,i].figuretype:=FigureTypequeen;
				if (j=1) then
				PlayField[j,i].IsBlack:=true
				else
				PlayField[j,i].IsBlack:=false;
			end;

			if ((j=1) or (j=8)) and (i=5) then
			begin
				PlayField[j,i].figuretype:=FigureTypeking;
				if (j=1) then
				PlayField[j,i].IsBlack:=true
				else
				PlayField[j,i].IsBlack:=false;
			end;



		end;
	end;

end;



procedure pawn(row,col:integer ; color:boolean);
var
	x,y: Integer;
begin
	y:=(row)*90;
	x:=(col-1)*90;
	
	if (color=true) then
	setfillstyle(1,brown)
	else
	setfillstyle(1,yellow);

	bar(x+10,y,x+80,y-10);
	x:=x+50;
	y:=y-10;
	bar(x,y,x-10,y-40);
	x:=x-20;
	y:=y-40;
	bar(x,y,x+30,y-20);		
end;

procedure bishop(row,col:integer ;color:boolean);     //слон
	var 
	x,y:integer;
begin
	y:=(row)*90;
	x:=(col-1)*90;

	if (color=true) then
	setfillstyle(1,brown)
	else
	setfillstyle(1,yellow);

	bar(x+10,y,x+80,y-10);						//10,80 80,70
	x:=x+60;
	y:=y-10;							
	bar(x,y,x-30,y-40);								//70,70  20,30
	x:=x-10;
	y:=y-40;
	bar(x,y,x-10,y-10);						//20,30   30,20
	
end;
procedure knight(row,col:integer ;color:boolean);    //конь	
	var 
	x,y:integer;
begin
	y:=(row)*90;
	x:=(col-1)*90;

	if (color=true) then
	setfillstyle(1,brown)
	else
	setfillstyle(1,yellow);

	bar(x+10,y,x+80,y-10);						
	x:=x+50;
	y:=y-10;
	bar(x,y,x-10,y-60);
	y:=y-40;
	bar(x,y,x+20,y+20);

end;
procedure castle(row,col:integer ;color:boolean);      //ладья
	var 
	x,y:integer;
begin
	y:=(row)*90;
	x:=(col-1)*90;

	if (color=true) then
	setfillstyle(1,brown)
	else
	setfillstyle(1,yellow);

	bar(x+10,y,x+80,y-10);
	x:=x+60;
	y:=y-10;
	bar(x,y,x-30,y-60);
	x:=x-20;
	y:=y-50;
	bar(x,y,x-10,y-20);
	x:=x+10;
	bar(x,y,x+10,y-20);
	


end;
procedure queen(row,col:integer ;color:boolean);
	var
		x,y: Integer;
begin
	y:=(row)*90;
	x:=(col-1)*90;

	if (color=true) then
	setfillstyle(1,brown)
	else
	setfillstyle(1,yellow);

	bar(x+10,y,x+80,y-10);
	x:=x+60;
	y:=y-10;
	bar(x,y,x-30,y-50);
	x:=x-40;
	y:=y-40;
	bar(x,y,x+50,y-20);
	bar(x+20,y,x+30,y-40)



end;
procedure king(row,col:integer ;color:boolean);

		var
		x,y: Integer;
begin
	y:=(row)*90;
	x:=(col-1)*90;

	if (color=true) then
	setfillstyle(1,brown)
	else
	setfillstyle(1,yellow);

	bar(x+10,y,x+80,y-10);
	x:=x+60;
	y:=y-10;
	bar(x,y,x-30,y-40);
	x:=x-10;
	y:=y-40;
	bar(x-10,y,x,y-30);
	x:=x-10;
	y:=y-10;
	bar(x-10,y,x+20,y-10);
end;

procedure riskont(i,j: integer; isRed: boolean);
	var
		x,y:integer;
begin
	y:=(j-1)*90;
	x:=(i-1)*90;
	
	if (isRed) then
		setfillstyle(1,red)
	else
		setfillstyle(1,green);

	bar(x,y,x+90,y+90);
end;

procedure desk();
	var
	 i,j,col1,col2,smena:byte;
	 x,y:integer;

begin
	x:=0;
	y:=0;
	col1:=15;
	col2:=16;
	for j:=1 to 8 do 
	begin
	
		for i:=1 to 8 do
		begin

			if (i mod 2 =1) then
			begin
				setfillstyle(1 ,col1);
				bar(x,y,x+90,y+90);
				x:=x+90;
				y:=y+90;
			end
			else
			begin
				setfillstyle(1 ,col2);
				bar(x,y,x+90,y-90);
				x:=x+90;
				y:=y-90;
			end;

			if (konti = i) and (kontj = j) then
				riskont(i,j,true);

			if (fromi = i) and (fromj = j) then
				riskont(i,j,false);

			case PlayField[j,i].FigureType of
				FigureTypePawn: pawn(j,i, PlayField[j,i].IsBlack);
				FigureTypebishop:bishop(j,i,PlayField[j,i].IsBlack);
		  		FigureTypeknight:knight(j,i,PlayField[j,i].IsBlack);
		 		FigureTypecastle:castle(j,i,PlayField[j,i].IsBlack);
				FigureTypequeen:queen(j,i,PlayField[j,i].IsBlack);
				figureTypeking:king(j,i,PlayField[j,i].IsBlack);
			end;
		end;
		y:=y+90;
		x:=0;
		smena:=col1;
		col1:=col2;
		col2:=smena;
	end;
end;


procedure redrawall();
begin
	desk();
end;



procedure kontur(firstface:boolean; noblack: boolean);
	var key:char;
begin

	repeat
	writeln(kontj,' ',konti);
	 	key:=readkey;
	 	case key of
		 	'a':
		 	begin
		 		if (konti > 1) then
		 			konti:= konti-1;	
		 	end;

		 	's':
		 	begin
		 		if (kontj <8)  then
		 			kontj:= kontj+1;	
		 	end;

		 	'd':
		 	begin
		 		if (konti <8) then
		 			konti:= konti+1;	
		 	end;

		 	'w':
		 	begin
		 		if (kontj > 1) then
		 			kontj:= kontj-1;	
		 	end;

		 	'l':
		 	begin
		 		if (firstface=true) then
		 		if ((playfield[kontj,konti].FigureType>0) and (noblack <> playfield[kontj,konti].IsBlack)) then
		 		begin
		 			break;
		 		end;

		 		if (firstface=false) then																								//logic
		 		begin
		 			case playfield[fromj,fromi].FigureType of
		 				FigureTypePawn:
			 				Begin

			 					if ( ((playfield[fromj,fromi].IsBlack=true) and ((fromj-kontj)<>-1)) or (abs(fromi-konti)<>0) ) or ( ((playfield[fromj,fromi].IsBlack=false) and ((fromj-kontj)<>1)) or (abs(fromi-konti)<>0) )  then
			 					continue;

			 				end;
		 				figureTypeking: 
		 					Begin
			 					if (abs(fromj - kontj)>1) or (abs(fromi-konti)>1) then
			 					Begin
			 						continue;
			 					end;
		 					end;
		 				FigureTypecastle:
			 				Begin
			 					if ((abs(fromj-kontj)<>0) and (abs(fromi-konti)<>0))  then

			 					continue;
			 				end;
			 			FigureTypequeen:
			 				Begin
			 					if (abs(fromj-kontj)<>(abs(fromi-konti))) and ((abs(fromj-kontj)<>0) and (abs(fromi-konti)<>0)) then
			 					continue;
			 				end;
			 			FigureTypeknight:
			 				begin
			 					if ((abs(fromj-kontj)<>1) and (abs(fromi-konti)<>1)) or ((abs(fromi-konti)<>2) and (abs(fromj-kontj)<>2))	then
			 					continue;		
			 				end;
			 			FigureTypebishop:
			 				begin
			 					if (abs(fromj-kontj)<>(abs(fromi-konti))) then
			 					continue; 
			 				end;
		 			end;
		 				






		 			if ((playfield[kontj,konti].FigureType=0) or (playfield[kontj,konti].IsBlack=noblack)) then
		 				break;
		 		end;
	 		end;

	 	end;

	 	redrawall();
	
	 until false;
end;

Begin
	 gm:=0;
	 gd:=0;
	 DetectGraph(Gd,Gm);
	 InitGraph(gd,gm,'');
	 
	 setbkcolor(colorPink);
	 ClearDevice;
	 zapol();

	 
	 //setActivePage();
	 repeat
	 writeln('turn white begin');
	 konti:=1;
	 kontj:=8;

	 redrawall();

	 
	 kontur(true, true);
	 fromi:=konti;
	 fromj:=kontj;
	 writeln('chosen: ', fromi, ' ', fromj);

	 kontur(false, true);
	 toi:=konti;
	 toj:=kontj;
	 writeln('chosen2: ', toi, ' ', toj);

	 playfield[toj,toi]:=playfield[fromj,fromi];
	 playfield[fromj,fromi].FigureType:=0;
	 writeln('moved');
	 fromi :=0;
	 fromj :=0;


	 writeln('turn black begin');
	 konti:=1;
	 kontj:=1;

	 redrawall();
	 
	 kontur(true, false);
	 fromi:=konti;
	 fromj:=kontj;
	 writeln('chosen: ', fromi, ' ', fromj);

	 kontur(false,false);
	 toi:=konti;
	 toj:=kontj;
	 writeln('chosen2: ', toi, ' ', toj);

	 playfield[toj,toi]:=playfield[fromj,fromi];
	 playfield[fromj,fromi].FigureType:=0;
	 writeln('moved');
	 fromi :=0;
	 fromj :=0;

	 until false;
	 

	 
	 

	//redrawall 

	 readkey();

	 closeGraph();
End.
	
