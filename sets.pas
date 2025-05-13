unit sets;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TAylar = set of 1 .. 12;

var
  Form5: TForm5;
  vAylar: TAylar;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
  vAylar := [1, 2, 3]; // 1,2,3 degerlerini ekledik
  vAylar := vAylar + [4, 5]; // 4,5 degerlerini ekledik

  Include(vAylar, 7); // 7 degerini ekledik

  Exclude(vAylar, 7); // 7 degerini cikardik

  if 7 in vAylar then      // 7 degeri var mi? kontrolu yaptýk
    ShowMessage('7. ay mevcut')
  else
    ShowMessage('7. ay mevcut degil');

end;

end.
