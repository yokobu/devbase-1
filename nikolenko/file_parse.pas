program fileParse;

uses
	crt;

var
	OneLine: string;
	OldFile: textFile;
	NewFile: textFile;

begin
	Assign(OldFile, 'old.txt');
	Assign(NewFile, 'new.txt');

	rewrite(NewFile);
	reset(OldFile);

	while (not EOF(OldFile)) Do
	begin
		readln(OldFile, OneLine);

		write(NewFile, 'writeln(''' );
		write(NewFile, OneLine );
		writeln(NewFile, ''');' );

		Write('*');
	end;

	Close(OldFile);
	Close(NewFile);

	readln();
end.
