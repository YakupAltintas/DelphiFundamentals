unit if_else_case;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    editVize: TEdit;
    Label1: TLabel;
    editFinal: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblOrt: TLabel;
    lblHarfNotu: TLabel;
    Panel1: TPanel;
    Button2: TButton;
    editGunNumarasi: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  // if else vize final hesaplama
  vizeNotu: integer;
  finalNotu: integer;
  ortalama: double;

  // case örneði güne özel seçim
  gunNumarasi: Integer;
  gunAdi: string;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin

  vizeNotu := StrToInt(editVize.Text);
  finalNotu := StrToInt(editFinal.Text);
  ortalama := double(vizeNotu * 0.4 + finalNotu * 0.6);
  if ortalama >= 85 then
  begin
    lblOrt.Caption := ortalama.ToString();
    lblHarfNotu.Caption := 'AA';
  end
  else if ortalama > 80 then
  begin
    lblOrt.Caption := ortalama.ToString();
    lblHarfNotu.Caption := 'BB';
  end
  else if ortalama > 70 then
  begin
    lblOrt.Caption := ortalama.ToString();
    lblHarfNotu.Caption := 'CC';
  end
  else if ortalama > 60 then
  begin
    lblOrt.Caption := ortalama.ToString();
    lblHarfNotu.Caption := 'DD';
  end
  else if ortalama >= 50 then
  begin
    lblOrt.Caption := ortalama.ToString();
    lblHarfNotu.Caption := 'DC';
  end
  else
  begin
    lblOrt.Caption := ortalama.ToString();
    lblHarfNotu.Caption := 'FF';
  end;



end;

procedure TForm3.Button2Click(Sender: TObject);

begin
  gunNumarasi := StrToInt(editGunNumarasi.Text);
  case gunNumarasi of
    1:
      gunAdi := 'Pazartesi';
    2:
      gunAdi := 'Salý';
    3:
      gunAdi := 'Çarþamba';
    4:
      gunAdi := 'Perþembe';
    5:
      gunAdi := 'Cuma';
    6:
      gunAdi := 'Cumartesi';
    7:
      gunAdi := 'Pazar';
  else
    gunAdi := 'Geçersiz gün numarasý';
  end;
  ShowMessage(gunAdi);
end;



end.
