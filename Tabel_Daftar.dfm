object Form3: TForm3
  Left = 193
  Top = 224
  Width = 928
  Height = 480
  Caption = 'Daftar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 40
    Top = 24
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object l2: TLabel
    Left = 40
    Top = 72
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object l3: TLabel
    Left = 40
    Top = 120
    Width = 25
    Height = 13
    Caption = 'Level'
  end
  object l4: TLabel
    Left = 40
    Top = 168
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object e1: TEdit
    Left = 152
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object e2: TEdit
    Left = 152
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object b1: TButton
    Left = 56
    Top = 240
    Width = 75
    Height = 25
    Caption = 'DAFTAR'
    TabOrder = 2
    OnClick = b1Click
  end
  object b2: TButton
    Left = 192
    Top = 240
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 3
    OnClick = b2Click
  end
  object b3: TButton
    Left = 88
    Top = 296
    Width = 129
    Height = 25
    Caption = 'KEMBALI KE LOGIN'
    TabOrder = 4
    OnClick = b3Click
  end
  object cbb1: TComboBox
    Left = 152
    Top = 120
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'Admin'
      'User')
  end
  object cbb2: TComboBox
    Left = 152
    Top = 168
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'Apoteker'
      'Asisten Apoteker')
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    HostName = 'localhost'
    Port = 3306
    Database = 'apotek'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\Asus\Documents\Semester 5\Pemprograman Visual 3\2110010' +
      '208_Zelika Dwi Pramesti\libmysql.dll'
    Left = 88
    Top = 368
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 168
    Top = 368
  end
end
