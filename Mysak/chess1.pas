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
	
	PlayField: TField;


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

			if ((j=1) or (j=7)) and (i=1) then
			begin
				PlayField[j,i].figuretype:=FigureTypecastle;
				if (j=1) then
				PlayField[j,i].IsBlack:=true
				else
				PlayField[j,i].IsBlack:=false;
			end;

			if ((j=1) or (j=7)) and (i=2) then
			begin
				PlayField[j,i].figuretype:=FigureTypeknight;
				if (j=1) then
				PlayField[j,i].IsBlack:=true
				else
				PlayField[j,i].IsBlack:=false;
			end;

			if ((j=1) or (j=7)) and (i=3) then
			begin
				PlayField[j,i].figuretype:=FigureTypebishop;
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
	x:=x+70;
	y:=y-10;							
	bar(x,y,x-60,y-50);								//70,70  20,30
	x:=x-60;
	y:=y-50;
	bar(x,y,x+10,y-10);						//20,30   30,20
	x:=x+10;
	bar(x,y,x+10,y-10);
	x:=x+10;
	bar(x,y,x+10,y-10);
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
	bar(x+5,y,x+10,y+10);


end;
{procedure queen();
	var
		: Integer;
begin
	
end;}
{procedure king();
	var
		: Integer;
begin
	
end;}
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

			case PlayField[j,i].FigureType of
				FigureTypePawn: pawn(j,i, PlayField[j,i].IsBlack);
				FigureTypebishop:bishop(j,i,PlayField[i,j].IsBlack);
		  		FigureTypeknight:knight(j,i,PlayField[i,j].IsBlack);
		 		FigureTypecastle:castle(j,i,PlayField[i,j].IsBlack);
				//FigureTypequeen:queen(i,j,PlayField[i,j].IsBlack);
				//figureTypeking:king(i,j,PlayField[i,j].IsBlack);
			end;
		end;
		y:=y+90;
		x:=0;
		smena:=col1;
		col1:=col2;
		col2:=smena;
	end;

	
	
end;




Begin
	 gm:=0;
	 gd:=0;
	 DetectGraph(Gm,Gd);
	 InitGraph(gm,gd,'');
	 
	 setbkcolor(colorPink);
	 ClearDevice;
	 
	 zapol();
	 desk();

	 
	

	 readkey();

	 closeGraph();
End.
	
