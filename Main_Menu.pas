unit Main_Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm14 = class(TForm)
    Menu1: TMainMenu;
    FORMS1: TMenuItem;
    LOGOUT1: TMenuItem;
    EXIT1: TMenuItem;
    USER1: TMenuItem;
    LOGIN1: TMenuItem;
    PEGAWAI1: TMenuItem;
    OBAT1: TMenuItem;
    JABATAN1: TMenuItem;
    JENISOBAT1: TMenuItem;
    PEMBELIAN1: TMenuItem;
    RINCIANPENJUALAN1: TMenuItem;
    PENJUALAN1: TMenuItem;
    RINCIANPEMBELIAN1: TMenuItem;
    SUPLIER1: TMenuItem;
    procedure USER1Click(Sender: TObject);
    procedure LOGIN1Click(Sender: TObject);
    procedure PEGAWAI1Click(Sender: TObject);
    procedure OBAT1Click(Sender: TObject);
    procedure JABATAN1Click(Sender: TObject);
    procedure JENISOBAT1Click(Sender: TObject);
    procedure PEMBELIAN1Click(Sender: TObject);
    procedure RINCIANPENJUALAN1Click(Sender: TObject);
    procedure PENJUALAN1Click(Sender: TObject);
    procedure RINCIANPEMBELIAN1Click(Sender: TObject);
    procedure SUPLIER1Click(Sender: TObject);
    procedure LOGOUT1Click(Sender: TObject);
    procedure EXIT1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

uses Tabel_User, Tabel_Kustomer, Tabel_Pegawai, Tabel_Obat, Tabel_Jabatan,
  Tabel_Jenis_Obat, Tabel_Pembelian, Tabel_Rincian_Penjualan,
  Tabel_Penjualan, Tabel_Rincian_Pembelian, Tabel_Suplier, Tabel_Login;

{$R *.dfm}

procedure TForm14.USER1Click(Sender: TObject);
begin
form1.showmodal;
end;

procedure TForm14.LOGIN1Click(Sender: TObject);
begin
form4.showmodal;
end;

procedure TForm14.PEGAWAI1Click(Sender: TObject);
begin
form5.showmodal;
end;

procedure TForm14.OBAT1Click(Sender: TObject);
begin
form6.showmodal;
end;

procedure TForm14.JABATAN1Click(Sender: TObject);
begin
form7.showmodal;
end;

procedure TForm14.JENISOBAT1Click(Sender: TObject);
begin
form8.showmodal;
end;

procedure TForm14.PEMBELIAN1Click(Sender: TObject);
begin
form9.showmodal;
end;

procedure TForm14.RINCIANPENJUALAN1Click(Sender: TObject);
begin
form10.showmodal;
end;

procedure TForm14.PENJUALAN1Click(Sender: TObject);
begin
form11.showmodal;
end;

procedure TForm14.RINCIANPEMBELIAN1Click(Sender: TObject);
begin
form12.showmodal;
end;

procedure TForm14.SUPLIER1Click(Sender: TObject);
begin
form13.showmodal;
end;

procedure TForm14.LOGOUT1Click(Sender: TObject);
begin
Hide;
form2.show;
end;

procedure TForm14.EXIT1Click(Sender: TObject);
begin
if MessageDlg('APAKAH INGIN MENUTUP APLIKASI INI ?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
Application.Terminate;
end else
begin
hide;
form14.ShowModal;
end;
end;

end.
