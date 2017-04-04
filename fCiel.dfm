object cielFrm: TcielFrm
  Left = 323
  Top = 242
  Width = 361
  Height = 162
  Caption = 'Koniec hry'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 117
    Top = 2
    Width = 236
    Height = 45
    AutoSize = False
    Caption = 'Gratulujem!'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clBlack
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 117
    Top = 0
    Width = 236
    Height = 45
    AutoSize = False
    Caption = 'Gratulujem!'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clSkyBlue
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 120
    Top = 48
    Width = 225
    Height = 19
    AutoSize = False
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 124
    Top = 64
    Width = 222
    Height = 19
    AutoSize = False
    Caption = 'Stla'#269'te CTRL+N pre nov'#250' hru.'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object koniecBtn: TButton
    Left = 176
    Top = 96
    Width = 121
    Height = 25
    Caption = 'Zavrie'#357' toto okno'
    TabOrder = 0
    OnClick = koniecBtnClick
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 16
    Width = 100
    Height = 101
    Caption = 'a'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -96
    Font.Name = 'Webdings'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
end
