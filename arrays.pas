unit arrays;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

  // sabit diziler
  tekBoyutluDizi: array [0 .. 9] of integer;
  // tek boyutlu 10 elemanlik integer bir dizi olusturduk
  ikiBoyutluDizi: array [0 .. 9, 0 .. 9] of integer;
  // 2 boyutlu integer bir dizi olusturduk
  dizininDizisi: array [0 .. 9] of array [0 .. 9] of char;
  // dizi icinde dizi olarak char bir dizi olusturduk

  // dinamik diziler
  dinamikDizi: array of string;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  SetLength(dinamikDizi, 10); // dinamik dizimin uzunlugunu belirttim
  dinamikDizi[0] := 'Delphi'; // ilk elemanina atama yaptik
  dinamikDizi := nil; // diziyi sonlandirdik   1. yol
  // Finalize(dinamikDizi); // bu da diziyi sonlandirir   2. yol
end;

end.
