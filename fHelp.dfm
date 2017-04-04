object helpFrm: ThelpFrm
  Left = 367
  Top = 244
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsDialog
  Caption = 'N'#225'poveda'
  ClientHeight = 238
  ClientWidth = 273
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
    Left = 13
    Top = 2
    Width = 262
    Height = 45
    AutoSize = False
    Caption = 'Labyrinth 1.0'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clBlack
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 13
    Top = 0
    Width = 262
    Height = 45
    AutoSize = False
    Caption = 'Labyrinth 1.0'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clSkyBlue
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 257
    Height = 137
    AutoSize = False
    Caption = 
      'Cie'#318'om hry je dosta'#357' sa z '#318'av'#233'ho horn'#233'ho rohu ('#269'erven'#233' pol'#237#269'ko) ' +
      'do prav'#233'ho horn'#233'ho rohu (zelen'#233' pol'#237#269'ko) Hra sa ovl'#225'da '#353#237'pkami. '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
    WordWrap = True
  end
  object Button1: TButton
    Left = 24
    Top = 192
    Width = 225
    Height = 41
    Caption = 'OK'
    TabOrder = 0
    OnClick = Button1Click
  end
end
