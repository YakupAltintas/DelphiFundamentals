program Project2;

uses
  Vcl.Forms,
  Verables in 'Verables.pas' {Form2},
  functions in 'functions.pas' {Form1},
  if_else_case in 'if_else_case.pas' {Form3},
  loops in 'loops.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
