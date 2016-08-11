unit uniconsole;

interface
	procedure SetTitle(title: pchar);
	
	procedure TextColor(col: integer; bkCol: integer);
	procedure GotoXY(x: shortint; y: shortint);
	procedure ClrScr();	
	procedure Delay(ms: integer);

	function Keypressed(): boolean;
	function ReadKey(): Shortint;
	function ReadChar(): char;
	

implementation

uses
  Windows;

procedure delay(ms: integer);
begin
	sleep(ms);
end;

function keypressed(): boolean;
var
	input_read : DWORD;
	input_rec: INPUT_RECORD;
begin
	keypressed := false;
	repeat
		input_read := 0;
		PeekConsoleInput(
			GetStdHandle(STD_INPUT_HANDLE),
			input_rec,
			1,
			input_read
			);

		if (input_read > 0) then
		begin
			if (input_rec.EventType = KEY_EVENT)
				and (input_rec.Event.KeyEvent.bKeyDown)
				and (input_rec.Event.KeyEvent.wVirtualKeyCode > 31)
			then
			begin
				keypressed := true;			
				break;
			end
			else
			begin
				ReadConsoleInput(
					GetStdHandle(STD_INPUT_HANDLE),
					input_rec,
					1,
					input_read
					);
			end;
		end
	until input_read = 0;
end;


procedure readInput(var input_rec: INPUT_RECORD);
var
	input_read : DWORD;
begin
	repeat
		input_read := 0;
		ReadConsoleInput(
			GetStdHandle(STD_INPUT_HANDLE),
			input_rec,
			1,
			input_read
			);
	until (input_rec.EventType = KEY_EVENT)
			and (input_rec.Event.KeyEvent.bKeyDown)
			and (input_rec.Event.KeyEvent.wVirtualKeyCode > 31);
end;

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

function readkey(): Shortint;
var
	input_rec: INPUT_RECORD;
begin
	readInput(input_rec);
	readkey := input_rec.Event.KeyEvent.wVirtualKeyCode;
end;



function readchar(): char;
var
	input_rec: INPUT_RECORD;
begin
	readInput(input_rec);
	readchar := input_rec.Event.KeyEvent.AsciiChar;
end;	

(* Starting routine *)
begin
	SetConsoleCP(CP_UTF8);
	SetConsoleOutputCP(CP_UTF8);
	textcolor(7,0);
	clrscr;
	FlushConsoleInputBuffer(GetStdHandle(STD_INPUT_HANDLE));
end.