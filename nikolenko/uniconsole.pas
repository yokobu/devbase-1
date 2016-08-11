unit uniconsole;

interface
	procedure setTitle(title: pchar);
	procedure textcolor(col: integer; bkCol: integer);
	procedure GotoXY(x: shortint; y: shortint);
	procedure clrscr();

implementation

uses
  Windows;

procedure setTitle(title: pchar);
var
	newTitle: WideString;
begin
	newTitle := utf8decode(title);	
	SetConsoleTitleW(pWideChar(newTitle));
end;

procedure textcolor(col: integer; bkCol: integer);
var
	fullcol: integer;
begin
	fullcol := (bkCol mod 16) * 16 + (col mod 16);
	SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), fullcol);	
end;

procedure GotoXY(x: shortint; y: shortint);
var
	coord: TCoord;
begin
	coord.x := x;
	coord.y := y;
	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), coord);
end;

procedure clrscr();
var
	coord: TCoord;
begin
	coord.x := 0;
	coord.y := 0;

	FillConsoleOutputCharacter(
		GetStdHandle(STD_OUTPUT_HANDLE),
		' ',
		80*25,
		coord,
		nil
		);

	FillConsoleOutputAttribute(
		GetStdHandle(STD_OUTPUT_HANDLE),
		7,
		80*25,
		coord,
		nil
		);
	GotoXY(0,0);
end;

(* Starting routine *)
begin
	SetConsoleCP(CP_UTF8);
	SetConsoleOutputCP(CP_UTF8);
	textcolor(7,0);
	clrscr;
end.