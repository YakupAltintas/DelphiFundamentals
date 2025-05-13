unit ClassArchitecture;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, csPersonel;

type
  TForm8 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  personel1: TPersonel;

implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
  personel1 := TPersonel.Create; // sinifi baslattik
  try
    personel1.pAd := 'Yakup';
    personel1.pSoyad := 'Altintas';
    personel1.pYas := 23;
    ShowMessage(personel1.tamAd); // Ýstersen burada tamAd fonksiyonunu kullan
  finally
    personel1.Free; // sinifi bellekten temizledik
  end;

end;



end.
