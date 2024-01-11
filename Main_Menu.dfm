object Form14: TForm14
  Left = 225
  Top = 185
  Width = 928
  Height = 480
  Caption = 'Main Menu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Menu1: TMainMenu
    Left = 72
    Top = 24
    object FORMS1: TMenuItem
      Caption = 'FORMS'
      object USER1: TMenuItem
        Caption = 'USER'
        OnClick = USER1Click
      end
      object LOGIN1: TMenuItem
        Caption = 'KUSTOMER'
        OnClick = LOGIN1Click
      end
      object PEGAWAI1: TMenuItem
        Caption = 'PEGAWAI'
        OnClick = PEGAWAI1Click
      end
      object OBAT1: TMenuItem
        Caption = 'OBAT'
        OnClick = OBAT1Click
      end
      object JABATAN1: TMenuItem
        Caption = 'JABATAN'
        OnClick = JABATAN1Click
      end
      object JENISOBAT1: TMenuItem
        Caption = 'JENIS OBAT'
        OnClick = JENISOBAT1Click
      end
      object PEMBELIAN1: TMenuItem
        Caption = 'PEMBELIAN'
        OnClick = PEMBELIAN1Click
      end
      object RINCIANPENJUALAN1: TMenuItem
        Caption = 'RINCIAN PENJUALAN'
        OnClick = RINCIANPENJUALAN1Click
      end
      object PENJUALAN1: TMenuItem
        Caption = 'PENJUALAN'
        OnClick = PENJUALAN1Click
      end
      object RINCIANPEMBELIAN1: TMenuItem
        Caption = 'RINCIAN PEMBELIAN'
        OnClick = RINCIANPEMBELIAN1Click
      end
      object SUPLIER1: TMenuItem
        Caption = 'SUPLIER'
        OnClick = SUPLIER1Click
      end
    end
    object LOGOUT1: TMenuItem
      Caption = 'LOG OUT'
      OnClick = LOGOUT1Click
    end
    object EXIT1: TMenuItem
      Caption = 'EXIT'
      OnClick = EXIT1Click
    end
  end
end
