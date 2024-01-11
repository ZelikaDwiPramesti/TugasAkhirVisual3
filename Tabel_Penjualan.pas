unit Tabel_Penjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm11 = class(TForm)
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    b6: TButton;
    dg1: TDBGrid;
    DS1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    procedure b1Click(Sender: TObject);
    procedure setawal;
    procedure bersih;
    procedure enable;
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
    procedure b6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;
  id : string;
implementation

{$R *.dfm}

procedure TForm11.b1Click(Sender: TObject);
begin
bersih;

b1.Enabled:= True;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;
b6.Enabled:= True;

enable;
end;

procedure TForm11.bersih;
begin
e2.Clear;
e3.Clear;
e4.Clear;
end;

procedure TForm11.enable;
begin
e2.Enabled:= True;
e3.Enabled:= True;
e4.Enabled:= True;
end;

procedure TForm11.setawal;
begin
bersih;

e2.Enabled:= false;
e3.Enabled:= false;
e4.Enabled:= false;

b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
b6.Enabled:= True;
end;

procedure TForm11.b2Click(Sender: TObject);
begin
if (e2.Text= '')or (e3.Text ='')or (e4.Text ='') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('kustomer_id',e2.Text,[])) and (zqry1.Locate('tgl_penjualan',e3.Text,[])) then
begin
ShowMessage('DATA USER SUDAH DIGUNAKAN');
setawal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into penjualan values (null,"'+e2.Text+'","'+e3.Text+'","'+e4.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from penjualan');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
setawal;

end;
end;

procedure TForm11.b3Click(Sender: TObject);
begin
if (e2.Text= '')or (e3.Text ='')or (e4.Text ='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (e2.Text = zqry1.Fields[1].AsString) and (e3.Text = zqry1.Fields[2].AsString)and (e4.Text = zqry1.Fields[3].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
setawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('id').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update penjualan set kustomer_id= "'+e2.Text+'",tgl_penjualan="'+e3.Text+'",total_pembayaran="'+e4.Text+'" where id="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from penjualan');
zqry1.Open;
setawal;
end;
end;

procedure TForm11.b4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('id').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from penjualan where id="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from penjualan');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
setawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
setawal;
end;
end;

procedure TForm11.b5Click(Sender: TObject);
begin
setawal;
end;

procedure TForm11.FormShow(Sender: TObject);
begin
setawal;
end;

procedure TForm11.dg1CellClick(Column: TColumn);
begin
enable;
b1.Enabled:= False;
b2.Enabled:= False;
b3.Enabled:= True;
b4.Enabled:= True;
b5.Enabled:= True;
b6.Enabled:= True;
id:=zqry1.Fields[0].AsString;
e2.Text:= zqry1.FieldList[1].AsString;
e3.Text:= zqry1.FieldList[2].AsString;
e4.Text:= zqry1.FieldList[3].AsString;
end;

procedure TForm11.b6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
