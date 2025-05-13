unit records;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm7 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
     //Record lar verileri bir arada tutmak için kullanilan nesnelerdir
  TKisi = record
    ad: string;
    soyad: string;
    yas: integer;

  end;

var
  Form7: TForm7;
  VKisi: TKisi;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
  VKisi.ad := 'yakup';
  VKisi.soyad := 'altinas';
  VKisi.yas := 22;

  ShowMessage(Vkisi.ad );
end;

end.
