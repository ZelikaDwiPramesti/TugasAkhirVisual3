object Form9: TForm9
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Pembelian'
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
    Left = 32
    Top = 16
    Width = 79
    Height = 15
    Caption = 'Id Pembelian'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l2: TLabel
    Left = 32
    Top = 56
    Width = 67
    Height = 15
    Caption = 'Supplier Id'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l3: TLabel
    Left = 32
    Top = 96
    Width = 66
    Height = 15
    Caption = 'Pegawai Id'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l4: TLabel
    Left = 32
    Top = 136
    Width = 79
    Height = 15
    Caption = 'Pembelian Id'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l5: TLabel
    Left = 32
    Top = 176
    Width = 72
    Height = 15
    Caption = 'Total Harga'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
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
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object e3: TEdit
    Left = 152
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object e4: TEdit
    Left = 152
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object e5: TEdit
    Left = 152
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object b1: TButton
    Left = 24
    Top = 328
    Width = 75
    Height = 25
    Caption = 'BARU'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object b2: TButton
    Left = 128
    Top = 328
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object b3: TButton
    Left = 232
    Top = 328
    Width = 75
    Height = 25
    Caption = 'EDIT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object b4: TButton
    Left = 352
    Top = 328
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object b5: TButton
    Left = 464
    Top = 328
    Width = 75
    Height = 25
    Caption = 'BATAL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object b6: TButton
    Left = 584
    Top = 328
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object dg1: TDBGrid
    Left = 344
    Top = 16
    Width = 473
    Height = 193
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DS1: TDataSource
    Left = 32
    Top = 392
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Port = 0
    Left = 96
    Top = 392
  end
  object zqry1: TZQuery
    Params = <>
    Left = 152
    Top = 392
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 304
    Top = 392
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45260.913333009260000000
    ReportOptions.LastChange = 45260.913333009260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 368
    Top = 392
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
