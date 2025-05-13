unit Verables;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  // Kendi degisken tiplerimizi olusturduk
  TVeritabani = (Oracle, Mysql, MsSQL);
  TSayiAraligi = 1 .. 99;

  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  //DEGISKEN TANIMLAMA YERI

  Vbyte: Byte;         // 0 .. 255 (1 byte - iþaretsiz)
  Vw: Word;            // 0 .. 65.535 (2 byte - iþaretsiz)
  Vcard: Cardinal;     // 0 .. 4.294.967.295 (4 byte - iþaretsiz, 32-bit)
  VLongWord: LongWord; // 0 .. 4.294.967.295 (4 byte - iþaretsiz, Cardinal ile ayný)

  Vsayi: Integer;      // -2.147.483.648 .. 2.147.483.647 (4 byte - iþaretli)
  Vyas: Integer;       // -2.147.483.648 .. 2.147.483.647 (4 byte - iþaretli)
  VlongÝnt: Int64;     // -9.223.372.036.854.775.808 .. 9.223.372.036.854.775.807 (8 byte - iþaretli)

  VSingle: Single;      // 1.5E-45 .. 3.4E38 (4 byte - ~7-8 anlamlý basamak)
  VDouble: Double;      // 5.0E-324 .. 1.7E308 (8 byte - ~15-16 anlamlý basamak)
  VExtended: Extended;  // 3.6E-4951 .. 1.1E4932 (10 byte - ~19-20 anlamlý basamak)
  VReal: Real;          // Platforma baðlý (genellikle Double ile ayný)
  Vcurr: Currency;      // -922.337.203.685.477.5808 .. 922.337.203.685.477.5807 (8 byte - sabit noktalý, finansal iþlemler için)
  vComp: Comp;          // -2^63+1 .. 2^63-1 (8 byte - 64-bit tamsayý olarak depolanýr ama gerçek sayý gibi kullanýlýr)

  Vmetin: String;       // Unicode string (dynamic size - ~2 milyar karakter)
  Vdurum: Boolean;      // True veya False (1 byte)

  VDatabase: TVeritabani; // yukarida biz olusturduk kendi degiskenimiz
  VSecilecekSayi: TSayiAraligi;

begin

  VSecilecekSayi := 49;
  // 1..99 aralýðýnda bir sayi vereceðimiz belirttik ve 49 degerini atadik
  VDatabase := Oracle; // verlebilecek degerlerden birini seçip verdim

  Vsayi := High(integer); // integer'in max degerini bize verir
  // deðiþkenler üzerinde iþlemlerin yapýldýðý yer
  Vsayi := 10;
  Vmetin := 'yakup';
  Vdurum := False;

  // Ekranda mesaj göstermek için kullanýlýr
  ShowMessage('sayi : ' + IntToStr(Vsayi) + 'metin : ' + Vmetin + ' Durum :' +
    BoolToStr(Vdurum, True));
  Vyas := 25;
  // koþul iþafesi if else kullanýmý
  if Vyas > 18 then
  begin
    ShowMessage('Ehliyet alabilirisin!');
  end
  else
    ShowMessage('Ehliyet alamazsýn! ');

end;

end.
