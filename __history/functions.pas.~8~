unit functions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    EditSayi2: TEdit;
    EditSayi1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    function Toplama(sayi1, sayi2: Integer): Integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

  ShowMessage(Toplama(StrToInt(EditSayi1.Text), StrToInt(EditSayi2.Text))
    .ToString());
end;

function TForm1.Toplama(sayi1, sayi2: Integer): Integer;
begin
  Result := sayi1 + sayi2;
end;

end.
