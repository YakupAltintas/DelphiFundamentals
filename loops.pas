unit loops;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    ListBox1: TListBox;
    editStart: TEdit;
    editFinal: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnFor: TButton;
    btnRepeat: TButton;
    btnWhie: TButton;
    procedure btnForClick(Sender: TObject);
    procedure btnRepeatClick(Sender: TObject);
    procedure btnWhieClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  startNumber: integer;
  finalNumber: integer;
  i: integer;

implementation

{$R *.dfm}

procedure TForm4.btnForClick(Sender: TObject);
var
  start: Integer;
begin
  startNumber := StrToInt(editStart.Text);
  finalNumber := StrToInt(editFinal.Text);
  ListBox1.Items.Clear();
  for i := startNumber to finalNumber do
  begin
    ListBox1.Items.Add(i.ToString());
  end;

end;

procedure TForm4.btnRepeatClick(Sender: TObject);
begin
  startNumber := StrToInt(editStart.Text);
  finalNumber := StrToInt(editFinal.Text);
  i := startNumber;
  ListBox1.Items.Clear();

  repeat
    ListBox1.Items.Add(i.ToString());
    i := i + 1;
  until (i = finalNumber + 1);
end;

procedure TForm4.btnWhieClick(Sender: TObject);
begin
  startNumber := StrToInt(editStart.Text);
  finalNumber := StrToInt(editFinal.Text);
  i := startNumber;
  ListBox1.Items.Clear();

  while i <= finalNumber  do
  begin
    ListBox1.Items.Add(i.ToString());
    i := i + 1;
  end;
end;

end.
