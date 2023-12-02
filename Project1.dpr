program Project1;

uses
  Forms,
  Tabel_User in 'Tabel_User.pas' {Form1},
  Tabel_Login in 'Tabel_Login.pas' {Form2},
  Tabel_Daftar in 'Tabel_Daftar.pas' {Form3},
  Tabel_Kustomer in 'Tabel_Kustomer.pas' {Form4},
  Tabel_Pegawai in 'Tabel_Pegawai.pas' {Form5},
  Tabel_Obat in 'Tabel_Obat.pas' {Form6},
  Tabel_Jabatan in 'Tabel_Jabatan.pas' {Form7},
  Tabel_Jenis_Obat in 'Tabel_Jenis_Obat.pas' {Form8},
  Tabel_Pembelian in 'Tabel_Pembelian.pas' {Form9},
  Tabel_Rincian_Penjualan in 'Tabel_Rincian_Penjualan.pas' {Form10},
  Tabel_Penjualan in 'Tabel_Penjualan.pas' {Form11},
  Tabel_Rincian_Pembelian in 'Tabel_Rincian_Pembelian.pas' {Form12},
  Tabel_Suplier in 'Tabel_Suplier.pas' {Form13},
  Main_Menu in 'Main_Menu.pas' {Form14};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm14, Form14);
  Application.Run;
end.
