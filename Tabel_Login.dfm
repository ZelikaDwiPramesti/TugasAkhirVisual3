object Form2: TForm2
  Left = 175
  Top = 154
  Width = 928
  Height = 480
  Caption = 'Login'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 104
    Top = 40
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object l2: TLabel
    Left = 104
    Top = 96
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object e1: TEdit
    Left = 216
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object e2: TEdit
    Left = 216
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object b1: TButton
    Left = 96
    Top = 184
    Width = 75
    Height = 25
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = b1Click
  end
  object b2: TButton
    Left = 216
    Top = 184
    Width = 75
    Height = 25
    Caption = 'EXIT'
    TabOrder = 3
    OnClick = b2Click
  end
  object b3: TButton
    Left = 320
    Top = 184
    Width = 75
    Height = 25
    Caption = 'DAFTAR'
    TabOrder = 4
    OnClick = b3Click
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 160
    Top = 328
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
    Left = 80
    Top = 328
  end
end
