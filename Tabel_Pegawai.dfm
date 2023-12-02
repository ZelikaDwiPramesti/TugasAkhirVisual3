object Form5: TForm5
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Pegawai'
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
    Left = 24
    Top = 16
    Width = 66
    Height = 15
    Caption = 'Id Pegawai'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l2: TLabel
    Left = 24
    Top = 48
    Width = 64
    Height = 15
    Caption = 'Jabatan Id'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l3: TLabel
    Left = 24
    Top = 80
    Width = 89
    Height = 15
    Caption = 'Nama Pegawai'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l4: TLabel
    Left = 24
    Top = 112
    Width = 97
    Height = 15
    Caption = 'Alamat Pegawai'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l5: TLabel
    Left = 24
    Top = 152
    Width = 116
    Height = 15
    Caption = 'No Telpon Pegawai'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l6: TLabel
    Left = 24
    Top = 192
    Width = 48
    Height = 15
    Caption = 'Jabatan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l7: TLabel
    Left = 24
    Top = 232
    Width = 39
    Height = 15
    Caption = 'Status'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object e1: TEdit
    Left = 176
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object e2: TEdit
    Left = 176
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object e3: TEdit
    Left = 176
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object e4: TEdit
    Left = 176
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object e5: TEdit
    Left = 176
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object e6: TEdit
    Left = 176
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object e7: TEdit
    Left = 176
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object b1: TButton
    Left = 16
    Top = 312
    Width = 75
    Height = 25
    Caption = 'BARU'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object b2: TButton
    Left = 112
    Top = 312
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object b3: TButton
    Left = 208
    Top = 312
    Width = 75
    Height = 25
    Caption = 'EDIT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object b4: TButton
    Left = 312
    Top = 312
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object b5: TButton
    Left = 408
    Top = 312
    Width = 75
    Height = 25
    Caption = 'BATAL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object b6: TButton
    Left = 504
    Top = 312
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object dg1: TDBGrid
    Left = 368
    Top = 88
    Width = 489
    Height = 185
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DS1: TDataSource
    Left = 24
    Top = 368
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Port = 0
    Left = 80
    Top = 368
  end
  object zqry1: TZQuery
    Params = <>
    Left = 144
    Top = 368
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 200
    Top = 368
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
    Left = 272
    Top = 368
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
