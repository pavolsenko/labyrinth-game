object mainFrm: TmainFrm
  Left = 212
  Top = 146
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Labyrinth 1.0'
  ClientHeight = 524
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mainMnu
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Shape3: TShape
    Left = 9
    Top = 65
    Width = 17
    Height = 18
    Brush.Color = clMaroon
    Pen.Color = clMaroon
  end
  object Shape2: TShape
    Left = 711
    Top = 498
    Width = 17
    Height = 17
    Brush.Color = clGreen
    Pen.Color = clGreen
  end
  object Shape1: TShape
    Left = 8
    Top = 64
    Width = 721
    Height = 452
    Brush.Color = clSkyBlue
    Pen.Mode = pmMask
  end
  object Label3: TLabel
    Left = 475
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
    Left = 473
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
    Left = 585
    Top = 40
    Width = 144
    Height = 19
    AutoSize = False
    Caption = '(C) Pavol Senko 2006'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object casLabel: TLabel
    Left = 8
    Top = 8
    Width = 169
    Height = 39
    AutoSize = False
    Caption = '0:00:00.0'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object hracImg: TImage
    Left = 10
    Top = 67
    Width = 15
    Height = 15
    Picture.Data = {
      055449636F6E0000010001000F0F000001000800540500001600000028000000
      0F0000001E000000010008000000000000000000000000000000000000010000
      0000000000D7F70000D3F30000CDED0000CAEA0000C3E30000C1E00000BEDE00
      00B9D80000B4D30000B2D10000B1D00000AECD0000A3C10000A7C60000A6C500
      C0C0C000009EBC00009BB9000098B6000097B5000093B100008FAD00008EAC00
      008DAA00008CA9000085A2000087A5000082A00000829F00007F9D00007C9900
      00779400007592000074900000718D0000718E00006C8900006D8900006B8800
      0068850000668200BFBFBF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000002A2A2A2A2A2A2A2A2A2A2A2A2A2A2A002A2A2A2A2A20212225272A2A
      2A2A2A002A2A2A1C1B1C1D1E1F2326282A2A2A002A2A1816152A2A2A2A2A2124
      282A2A002A2A12112A11121417192A21262A2A002A100C2A0D0E0C101316192A
      23272A002A0D0B0908090B0D1013171C1F252A002A0A07060506070A0D10141A
      1E222A002A070403020304070B0C12181D212A002A0603012A2A0306092A2A16
      1C202A002A2A02002A2A0205082A2A151B2A2A002A2A030100010306090E1116
      1C2A2A002A2A2A03020304070B0C12182A2A2A002A2A2A2A2A06070A0D102A2A
      2A2A2A002A2A2A2A2A2A2A2A2A2A2A2A2A2A2A00F83E0000E00E0000C0060000
      8002000080020000000000000000000000000000000000000000000080020000
      80020000C0060000E00E0000F83E0000}
  end
  object n1Img: TImage
    Left = 208
    Top = 32
    Width = 15
    Height = 15
    Picture.Data = {
      055449636F6E0000010001000F0F000001001800340300001600000028000000
      0F0000001E000000010018000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000A90000A80000A50000A100009D0000000000000000000000000000
      000000000000000000000000000000B60000B70000B60000B40000B00000AB00
      00A50000A000009B0000000000000000000000000000000000000000C10000C4
      0000000000000000000000000000000000000000000000A100009B0000000000
      000000000000000000000000CF000000FFFFFF000000FFFFFF000000FFFFFF00
      0000FFFFFF0000000000A00000000000000000000000000000D50000DB000000
      FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF0000000000A500009D0000
      000000000000000000E00000E70000EC00000000000000000000000000000000
      00000000000000B60000AB0000A10000000000000000000000EA0000F30000FA
      0000FE0000FA0000F30000EA0000E00000D50000C90000BC0000B00000A50000
      000000000000000000F30000FE0000FF0000FF0000FF0000FE0000F30000E700
      00DB0000CF0000C10000B40000A80000000000000000000000FA0000FF0000FF
      0000000000000000FF0000FA0000EC0000000000000000C40000B60000A90000
      000000000000000000000000FF0000FF0000000000000000FF0000000000EE00
      00000000000000C50000B70000000000000000000000000000000000FF0000FF
      0000FF0000FF0000000000FA0000000000DF0000D20000C40000B60000000000
      000000000000000000000000000000FF0000FF0000000000FE0000F30000E700
      00000000CF0000C1000000000000000000000000000000000000000000000000
      0000000000FA0000F30000EA0000E00000D50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000F83E0000E00E0000C0060000
      8002000080020000000000000000000000000000000000000000000080020000
      80020000C0060000E00E0000F83E0000}
    Visible = False
  end
  object n5Img: TImage
    Left = 272
    Top = 32
    Width = 15
    Height = 15
    Picture.Data = {
      055449636F6E0000010001000F0F000001001800340300001600000028000000
      0F0000001E000000010018000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000A90000A80000A50000A100009D0000000000000000000000000000
      000000000000000000000000000000B60000B70000B60000B40000B00000AB00
      00A50000A000009B0000000000000000000000000000000000000000C10000C4
      0000000000000000000000000000000000000000000000A100009B0000000000
      000000000000000000000000CF000000FFFFFF000000FFFFFF000000FFFFFF00
      0000FFFFFF0000000000A00000000000000000000000000000D50000DB000000
      FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF0000000000A500009D0000
      000000000000000000E00000E70000EC00000000000000000000000000000000
      00000000000000B60000AB0000A10000000000000000000000EA0000F30000FA
      0000FE0000FA0000F30000EA0000E00000D50000C90000BC0000B00000A50000
      000000000000000000F30000FE0000FF0000FF0000FF0000FE0000F30000E700
      00DB0000CF0000C10000B40000A80000000000000000000000FA0000FF0000FF
      0000000000000000FF0000FA0000EC0000000000000000C40000B60000A90000
      000000000000000000000000FF0000FF0000000000000000FF0000000000EE00
      00000000000000C50000B70000000000000000000000000000000000FF0000FF
      0000FF0000FF0000000000FA0000000000DF0000D20000C40000B60000000000
      000000000000000000000000000000FF0000FF0000000000FE0000F30000E700
      00000000CF0000C1000000000000000000000000000000000000000000000000
      0000000000FA0000F30000EA0000E00000D50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000F83E0000E00E0000C0060000
      8002000080020000000000000000000000000000000000000000000080020000
      80020000C0060000E00E0000F83E0000}
    Visible = False
  end
  object n2Img: TImage
    Left = 224
    Top = 32
    Width = 15
    Height = 15
    Picture.Data = {
      055449636F6E0000010001000F0F000001001800340300001600000028000000
      0F0000001E000000010018000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000A90000A80000A50000A100009D0000000000000000000000000000
      000000000000000000000000000000B60000B70000B60000B40000B00000AB00
      00A50000A000009B0000000000000000000000000000000000000000C10000C4
      0000000000000000000000000000000000000000000000A100009B0000000000
      000000000000000000000000CF000000FFFFFF000000FFFFFF000000FFFFFF00
      0000FFFFFF0000000000A00000000000000000000000000000D50000DB000000
      FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF0000000000A500009D0000
      000000000000000000E00000E70000EC00000000000000000000000000000000
      00000000000000B60000AB0000A10000000000000000000000EA0000F30000FA
      0000FE0000FA0000F30000EA0000E00000D50000C90000BC0000B00000A50000
      000000000000000000F30000FE0000FF0000FF0000FF0000FE0000F30000E700
      00DB0000CF0000C10000B40000A80000000000000000000000FA0000FF0000FF
      0000000000000000FF0000FA0000EC0000000000000000C40000B60000A90000
      000000000000000000000000FF0000FF0000000000000000FF0000000000EE00
      00000000000000C50000B70000000000000000000000000000000000FF0000FF
      0000FF0000FF0000000000FA0000000000DF0000D20000C40000B60000000000
      000000000000000000000000000000FF0000FF0000000000FE0000F30000E700
      00000000CF0000C1000000000000000000000000000000000000000000000000
      0000000000FA0000F30000EA0000E00000D50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000F83E0000E00E0000C0060000
      8002000080020000000000000000000000000000000000000000000080020000
      80020000C0060000E00E0000F83E0000}
    Visible = False
  end
  object n3Img: TImage
    Left = 240
    Top = 32
    Width = 15
    Height = 15
    Picture.Data = {
      055449636F6E0000010001000F0F000001001800340300001600000028000000
      0F0000001E000000010018000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000A90000A80000A50000A100009D0000000000000000000000000000
      000000000000000000000000000000B60000B70000B60000B40000B00000AB00
      00A50000A000009B0000000000000000000000000000000000000000C10000C4
      0000000000000000000000000000000000000000000000A100009B0000000000
      000000000000000000000000CF000000FFFFFF000000FFFFFF000000FFFFFF00
      0000FFFFFF0000000000A00000000000000000000000000000D50000DB000000
      FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF0000000000A500009D0000
      000000000000000000E00000E70000EC00000000000000000000000000000000
      00000000000000B60000AB0000A10000000000000000000000EA0000F30000FA
      0000FE0000FA0000F30000EA0000E00000D50000C90000BC0000B00000A50000
      000000000000000000F30000FE0000FF0000FF0000FF0000FE0000F30000E700
      00DB0000CF0000C10000B40000A80000000000000000000000FA0000FF0000FF
      0000000000000000FF0000FA0000EC0000000000000000C40000B60000A90000
      000000000000000000000000FF0000FF0000000000000000FF0000000000EE00
      00000000000000C50000B70000000000000000000000000000000000FF0000FF
      0000FF0000FF0000000000FA0000000000DF0000D20000C40000B60000000000
      000000000000000000000000000000FF0000FF0000000000FE0000F30000E700
      00000000CF0000C1000000000000000000000000000000000000000000000000
      0000000000FA0000F30000EA0000E00000D50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000F83E0000E00E0000C0060000
      8002000080020000000000000000000000000000000000000000000080020000
      80020000C0060000E00E0000F83E0000}
    Visible = False
  end
  object n4Img: TImage
    Left = 256
    Top = 32
    Width = 15
    Height = 15
    Picture.Data = {
      055449636F6E0000010001000F0F000001001800340300001600000028000000
      0F0000001E000000010018000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000A90000A80000A50000A100009D0000000000000000000000000000
      000000000000000000000000000000B60000B70000B60000B40000B00000AB00
      00A50000A000009B0000000000000000000000000000000000000000C10000C4
      0000000000000000000000000000000000000000000000A100009B0000000000
      000000000000000000000000CF000000FFFFFF000000FFFFFF000000FFFFFF00
      0000FFFFFF0000000000A00000000000000000000000000000D50000DB000000
      FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF0000000000A500009D0000
      000000000000000000E00000E70000EC00000000000000000000000000000000
      00000000000000B60000AB0000A10000000000000000000000EA0000F30000FA
      0000FE0000FA0000F30000EA0000E00000D50000C90000BC0000B00000A50000
      000000000000000000F30000FE0000FF0000FF0000FF0000FE0000F30000E700
      00DB0000CF0000C10000B40000A80000000000000000000000FA0000FF0000FF
      0000000000000000FF0000FA0000EC0000000000000000C40000B60000A90000
      000000000000000000000000FF0000FF0000000000000000FF0000000000EE00
      00000000000000C50000B70000000000000000000000000000000000FF0000FF
      0000FF0000FF0000000000FA0000000000DF0000D20000C40000B60000000000
      000000000000000000000000000000FF0000FF0000000000FE0000F30000E700
      00000000CF0000C1000000000000000000000000000000000000000000000000
      0000000000FA0000F30000EA0000E00000D50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000F83E0000E00E0000C0060000
      8002000080020000000000000000000000000000000000000000000080020000
      80020000C0060000E00E0000F83E0000}
    Visible = False
  end
  object infoLbl1: TLabel
    Left = 224
    Top = 152
    Width = 194
    Height = 19
    Caption = 'Vitajte v hre Labyrinth! '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
  end
  object infoLbl2: TLabel
    Left = 224
    Top = 176
    Width = 297
    Height = 129
    AutoSize = False
    Caption = 
      'Cie'#318'om hry je vyhn'#250#357' sa nepriate'#318'om a dosta'#357' sa s postavi'#269'kou z ' +
      #318'av'#233'ho horn'#233'ho rohu ('#269'erven'#253' '#353'tvor'#269'ek) do prav'#233'ho doln'#233'ho rohu (' +
      'zelen'#253' '#353'tvor'#269'ek). Postavi'#269'ka sa ovl'#225'da '#353#237'pkami. Pokra'#269'ujte klikn' +
      'ut'#237'm na tla'#269#237'tko "Nov'#225' hra". '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object runBtn: TButton
    Left = 304
    Top = 320
    Width = 137
    Height = 33
    Caption = '-> Nov'#225' hra <-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Novhra1Click
  end
  object mainMnu: TMainMenu
    Left = 256
    object Hra1: TMenuItem
      Caption = '&Hra'
      object Novhra1: TMenuItem
        Caption = '&Nov'#225' hra'
        ShortCut = 16462
        OnClick = Novhra1Click
      end
      object Retartujhru1: TMenuItem
        Caption = '&Re'#353'tartuj hru'
        Enabled = False
        ShortCut = 16466
        OnClick = Retartujhru1Click
      end
      object Na2: TMenuItem
        Caption = '-'
      end
      object Na1: TMenuItem
        Caption = '&Ukon'#269'i'#357
        ShortCut = 27
        OnClick = Na1Click
      end
    end
    object Moznosti1: TMenuItem
      Caption = '&Mo'#382'nosti'
      object Ukzaas1: TMenuItem
        Caption = 'Uk'#225'za'#357' '#269'as'
        Checked = True
        ShortCut = 16468
        OnClick = Ukzaas1Click
      end
    end
    object Nstroje1: TMenuItem
      Caption = '&N'#225'stroje'
      Visible = False
      object Njdinajkratiucestu1: TMenuItem
        Caption = '&N'#225'jdi najkrat'#353'iu cestu'
        ShortCut = 16454
      end
    end
    object Napoveda1: TMenuItem
      Caption = '&N'#225'poveda'
      object Oaplikcii1: TMenuItem
        Caption = 'O aplik'#225'cii...'
        OnClick = Oaplikcii1Click
      end
    end
  end
  object XPManifest1: TXPManifest
    Left = 288
  end
  object mainTimer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = mainTimerTimer
    Left = 192
  end
  object ActionList1: TActionList
    Left = 224
    object hore: TAction
      Caption = 'hore'
      ShortCut = 38
      OnExecute = horeExecute
    end
    object vpravo: TAction
      Caption = 'vpravo'
      ShortCut = 39
      OnExecute = vpravoExecute
    end
    object dole: TAction
      Caption = 'dole'
      ShortCut = 40
      OnExecute = doleExecute
    end
    object vlavo: TAction
      Caption = 'vlavo'
      ShortCut = 37
      OnExecute = vlavoExecute
    end
  end
end