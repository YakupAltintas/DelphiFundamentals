object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 326
  ClientWidth = 857
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 40
    Width = 21
    Height = 15
    Caption = 'Vize'
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 25
    Height = 15
    Caption = 'Final'
  end
  object Label3: TLabel
    Left = 216
    Top = 40
    Width = 61
    Height = 15
    Caption = 'Oratalama :'
  end
  object Label4: TLabel
    Left = 216
    Top = 72
    Width = 62
    Height = 15
    Caption = 'Harf Notu : '
  end
  object lblOrt: TLabel
    Left = 281
    Top = 40
    Width = 3
    Height = 15
  end
  object lblHarfNotu: TLabel
    Left = 281
    Top = 72
    Width = 3
    Height = 15
  end
  object Button1: TButton
    Left = 98
    Top = 122
    Width = 75
    Height = 25
    Caption = 'Hesapla'
    TabOrder = 0
    OnClick = Button1Click
  end
  object editVize: TEdit
    Left = 74
    Top = 37
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object editFinal: TEdit
    Left = 74
    Top = 77
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 529
    Top = 0
    Width = 328
    Height = 326
    Align = alRight
    TabOrder = 3
    ExplicitLeft = 408
    ExplicitHeight = 255
    object Button2: TButton
      Left = 112
      Top = 167
      Width = 75
      Height = 25
      Caption = 'G'#252'n G'#246'ster'
      TabOrder = 0
      OnClick = Button2Click
    end
    object editGunNumarasi: TEdit
      Left = 88
      Top = 123
      Width = 121
      Height = 23
      TabOrder = 1
    end
  end
end
