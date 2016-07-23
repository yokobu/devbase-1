program gr;
uses crt,graph;
const
      ScreenW = 900;
      ScreenH = 600;
      
      GravX = ScreenW div 2;
      GravY = ScreenH div 2;

      BorderWidth = 20;
      BorderL=BorderWidth;
      BorderR=ScreenW - BorderWidth;
      BorderU=BorderWidth;
      BorderD=ScreenH - BorderWidth;
      
      NIskr=200;
      Cycle=10;//500;
      IperC=2;
      Igas=0.2; //0.05;
      Irspeed=40;//20;      
      DSpeed=0.004;
      DAngle=pi/45;

      NColors=6;
      PColor: array[1..NColors,1..3] of byte =
              (
              (white,lightgray,darkgray),
              (yellow,lightgreen,green),
              (lightred,red,brown),
              (white,yellow,red),
              (white,lightcyan,cyan),
              (lightBlue,cyan,white));

type TVector = record
            x,y:real;
            r,fi: real;
            end;
        Tiskra = record
            x,y: word;
            xt,yt: real;
            level: byte;
            fi: -180..179 ;
            speed: real;
            enabled: boolean;
            end;
var
  quit: boolean;           {do we have to quit?}
  vectorcontrol: boolean;  {type of control (vector/scalar)}
  borders:  boolean;       {do we have 'Borders'?}
  infinite: boolean;       {do we have 'Infinite Field'?}
  gravity:  boolean;       {do we have 'Force to Center'?}

  cl: byte;                {color palette}
  grDriver: Integer;
  grMode: Integer;
  rk: char;
  i: word;

  speed: TVector;
  centerX,centerY: real;
  iskra: array[1..NIskr]of TIskra;

procedure Decartize(var source: TVector); {перевод в декартовую систему}
begin
with source do
  begin
  x:=r*cos(fi);
  y:=r*sin(fi)
  end
end;

procedure Polarize(var source: TVector); {перевод в полярную систему}
begin
with source do
  begin
  r:=sqrt(sqr(x)+sqr(y));
  if y>0
  then
    begin
    if x=0
    then
      fi:=pi/2
    else
      if x>0
      then                {x>0}
        fi:=arctan(y/x)
      else                {x<0}
        fi:=pi+arctan(y/x)
    end

  else         {y<=0}
    if y<0
    then
      begin
      if x=0
      then
        fi:=-pi/2
      else
        if x>0
        then              {x>0}
          fi:=arctan(y/x)
        else              {x<0}
          fi:=pi+arctan(y/x)
      end

    else     {y=0}
      begin
      if x<>0
      then
        if x>0
        then              {x>0}
          fi:=0
        else              {x<0}
          fi:=pi;
      end
  end
end;

procedure move(var source: TIskra);
begin
putpixel(source.x,source.y,black);
with source do
     if enabled
     then
       begin
       speed:=speed-0.2*Igas;
       xt:=xt+speed*cos(fi*pi/180);
       yt:=yt+speed*sin(fi*pi/180);

       if borders
       then
         begin
         if xt<=BorderL
         then xt:=BorderL+1
         else if xt>=BorderR
              then xt:=BorderR-1;

         if yt<=BorderU
         then yt:=BorderU+1
         else if yt>=BorderD
              then yt:=BorderD-1;
         end;

       if infinite
       then
         begin
         if xt<0
         then xt:=640
         else if xt>640 then xt:=0;

         if yt<0
         then yt:=480
         else if yt>480 then yt:=0;
         end;
       x:=round(xt);
       y:=round(yt);
       if speed<=0
       then
          begin
          putpixel(x,y,PColor[cl,3]);
          enabled:=false
          end
       else
          if speed<irspeed*0.015
          then
            putpixel(x,y,PColor[cl,3])
          else
            if speed<irspeed*0.02
            then
              putpixel(x,y,PColor[cl,2])
            else
              if vectorcontrol
              then putpixel(x,y,white)
              else putpixel(x,y,lightgreen);
       //delay(Cycle div Niskr);
       end
     else
       begin
       enabled:=true;
       xt:=centerx;
       yt:=centery;
       speed:=random(Irspeed)*0.04;
       fi:=random(360)-180
       end
end;

procedure turn;
const iskrai: word=1;
      blin: boolean=true;
var j: byte;
begin
for j:=1 to IperC do
  begin
  if iskrai>Niskr
  then
    iskrai:=1
  else
    inc(iskrai);
  move(iskra[iskrai]);
end;

if gravity
 then setcolor(red)
 else setcolor(black);
circle(gravx,gravy,10);
setcolor(black)
end;

{==MAIN==}
begin
randomize;
clrscr;
writeln('===Sparkling Point===');
writeln;
writeln('Arrows - Contols');
writeln('S - Stop(HandBrake)');
writeln('M - Return to center');
writeln('V - Vector/Scalar control switch');
writeln('G - Force to center switch');
writeln('B - Borders switch');
writeln('I - Infinite field switch');
writeln('Shift+Q - Quit');
writeln('Press any key');
readkey;
grDriver := detect;
InitGraph(grDriver, grMode,'');
quit:= false;
vectorcontrol:=true;
borders:=false;
infinite:=true;
gravity:=false;
cl:=1;
speed.r:=0;
speed.fi:=0;
speed.x:=0;
speed.y:=0;
centerx:=GravX;
centery:=GravY;
for i:=1 to NIskr do iskra[i].enabled:=false;

repeat
if keypressed
then
  begin
  rk:=readkey;
  if vectorcontrol
  then
    begin
    case rk of
            #0:begin
                   case readkey of
                       #72:speed.r:=speed.r+dspeed;
                       #75:speed.fi:=speed.fi-DAngle;
                       #77:speed.fi:=speed.fi+DAngle;
                       #80:begin
                           speed.r:=speed.r-2*dspeed;
                           if speed.r<0 then speed.r:=0
                           end
                       end
                end;
            's':speed.r:=0;
            'm':begin
                centerx:=GravX;
                centery:=GravY;
                end;
            end;
    decartize(speed)
    end
  else
    begin
    case rk of

            #0:begin
                   case readkey of
                       #72:speed.y:=speed.y-2*dspeed;
                       #75:speed.x:=speed.x-2*dspeed;
                       #77:speed.x:=speed.x+2*dspeed;
                       #80:speed.y:=speed.y+2*dspeed
                       end
                   end;
            's':begin
                speed.x:=0;
                speed.y:=0
                end
            end;
    polarize(speed);
    end;
case rk of
     'm': begin
          centerx:=GravX;
          centery:=GravY
          end;
     'g': gravity:=not gravity;
     'i': begin
          if infinite
          then
            begin
            infinite:=false;
            cl:=2
            end
          else
            begin
            infinite:=true;
            borders:=false;
            cl:=1;
            end
          end;

     'b': begin
          if borders
          then
            begin
            borders:=false;
            cl:=2
            end
          else
            begin
            borders:=true;
            cl:=3;
            infinite:=false
            end
          end;
     'v': vectorcontrol:=not vectorcontrol;
     'Q': quit:=true
     end;
end;

{--gravity to center--}
if gravity
then
  begin
  speed.x:=speed.x+(gravX-centerx)*1E-06;
  speed.y:=speed.y+(gravY-centery)*1E-06
  end;

{--movement--}
centerx:=centerx+speed.x;
centery:=centery+speed.y;

{--ricochet--}
if borders
then
  begin
  if centerX>BorderR
  then
    begin
    speed.x:=-abs(speed.x);
    centerx:=BorderR-1;
    end
  else if centerx<BorderL
       then
         begin
         speed.x:=abs(speed.x);
         centerx:=BorderL+1;
         end;

  if centerY>BorderD
  then
    begin
    speed.Y:=-abs(speed.Y);
    centerY:=BorderD-1;
    end
  else if centerY<BorderU
       then
         begin
         speed.Y:=abs(speed.Y);
         centerY:=BorderU+1;
         end
end;

polarize(speed);

{--infinite field--}
if infinite
then
  begin
  if centerx<0
  then centerx:=640
  else if centerx>640
       then centerx:=0;

  if centery<0
  then centery:=480
  else if centery>480
       then centery:=0
  end;

turn;

until quit;
setcolor(white);
end.
