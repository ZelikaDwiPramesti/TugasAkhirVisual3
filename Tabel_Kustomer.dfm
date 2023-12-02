object Form4: TForm4
  Left = 206
  Top = 155
  Width = 928
  Height = 480
  Caption = 'Kustomer'
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
    Left = 56
    Top = 16
    Width = 76
    Height = 15
    Caption = 'Id Kustomer'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l2: TLabel
    Left = 56
    Top = 48
    Width = 35
    Height = 15
    Caption = 'Nama'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l3: TLabel
    Left = 56
    Top = 80
    Width = 87
    Height = 15
    Caption = 'Jenis Kelamin'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l4: TLabel
    Left = 56
    Top = 112
    Width = 35
    Height = 15
    Caption = 'Umur'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l5: TLabel
    Left = 56
    Top = 144
    Width = 76
    Height = 15
    Caption = 'Berat Badan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l6: TLabel
    Left = 56
    Top = 176
    Width = 99
    Height = 15
    Caption = 'Golongan Darah'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cbb1: TComboBox
    Left = 200
    Top = 80
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Items.Strings = (
      'Laki-Laki'
      'Perempuan')
  end
  object e1: TEdit
    Left = 200
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object e2: TEdit
    Left = 200
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object e3: TEdit
    Left = 200
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object e4: TEdit
    Left = 200
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object e5: TEdit
    Left = 200
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object b1: TButton
    Left = 32
    Top = 272
    Width = 75
    Height = 25
    Caption = 'BARU'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object b2: TButton
    Left = 136
    Top = 272
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object b3: TButton
    Left = 240
    Top = 272
    Width = 75
    Height = 25
    Caption = 'EDIT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object b4: TButton
    Left = 344
    Top = 272
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object b5: TButton
    Left = 448
    Top = 272
    Width = 75
    Height = 25
    Caption = 'BATAL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object b6: TButton
    Left = 560
    Top = 272
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object dg1: TDBGrid
    Left = 440
    Top = 24
    Width = 320
    Height = 120
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DS1: TDataSource
    Left = 32
    Top = 352
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Port = 0
    Left = 88
    Top = 352
  end
  object zqry1: TZQuery
    Params = <>
    Left = 152
    Top = 352
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 208
    Top = 352
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45260.893667870370000000
    ReportOptions.LastChange = 45260.893667870370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 280
    Top = 352
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
