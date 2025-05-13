unit classes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, csPersonel;

type
  TForm8 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  end;

var
  Form8: TForm8;
  personel1: TPersonel;

implementation

procedure TForm8.Button1Click(Sender: TObject);
begin
  personel1.Create; // personel sinifini baslatir
  try
    personel1.pAd := 'yakup';
    personel1.pSoyad := 'altintas';
    personel1.pYas := 23;
    ShowMessage(personel1.pAd);
  finally
    personel1.Free; // Fonksiyonu bellekten temizler
  end;

end;

end.
