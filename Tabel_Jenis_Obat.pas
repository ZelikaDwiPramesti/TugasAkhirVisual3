unit Tabel_Jenis_Obat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm8 = class(TForm)
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    l7: TLabel;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    e6: TEdit;
    e7: TEdit;
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
    cbb1: TComboBox;
    frxrprt1: TfrxReport;
    procedure setawal;
    procedure bersih;
    procedure enable;
    procedure b1Click(Sender: TObject);
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
  Form8: TForm8;
  id : string;
implementation

{$R *.dfm}

procedure TForm8.bersih;
begin
e2.Clear;
e3.Clear;
e4.Clear;
cbb1.text:= '';
e6.Clear;
e7.Clear;
end;

procedure TForm8.b1Click(Sender: TObject);
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

procedure TForm8.enable;
begin
e2.Enabled:= True;
e3.Enabled:= True;
e4.Enabled:= True;
cbb1.Enabled:= True;
e6.Enabled:= True;
e7.Enabled:= True;
end;

procedure TForm8.setawal;
begin
bersih;

e2.Enabled:= false;
e3.Enabled:= false;
e4.Enabled:= false;
cbb1.Enabled:= false;
e6.Enabled:= false;
e7.Enabled:= false;

b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
b6.Enabled:= True;
end;

procedure TForm8.b2Click(Sender: TObject);
begin
if (e2.Text= '')or (e3.Text ='')or (e4.Text ='')or (cbb1.Text ='')or (e6.Text ='')or (e7.Text ='') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('obat_id',e2.Text,[])) and (zqry1.Locate('nm_obat',e3.Text,[])) then
begin
ShowMessage('DATA USER SUDAH DIGUNAKAN');
setawal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into jenis_obat values (null,"'+e2.Text+'","'+e3.Text+'","'+e4.Text+'","'+cbb1.Text+'","'+e6.Text+'","'+e7.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from jenis_obat');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
setawal;

end;
end;

procedure TForm8.b3Click(Sender: TObject);
begin
if (e2.Text= '')or (e3.Text ='')or (e4.Text ='')or (cbb1.Text ='')or (e6.Text ='')or (e7.Text ='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (e2.Text = zqry1.Fields[1].AsString) and (e3.Text = zqry1.Fields[2].AsString)and (e4.Text = zqry1.Fields[3].AsString)and (cbb1.Text = zqry1.Fields[4].AsString)and (e6.Text = zqry1.Fields[5].AsString)and (e7.Text = zqry1.Fields[6].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
setawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('id').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update jenis_obat set obat_id= "'+e2.Text+'",nm_obat="'+e3.Text+'",deskripsi_obat="'+e4.Text+'",ket_obat="'+cbb1.Text+'",harga_jual="'+e6.Text+'",jumlah_stok="'+e7.Text+'" where id="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from jenis_obat');
zqry1.Open;
setawal;
end;
end;

procedure TForm8.b4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('id').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from jenis_obat where id="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from jenis_obat');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
setawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
setawal;
end;
end;

procedure TForm8.b5Click(Sender: TObject);
begin
setawal;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
setawal;
end;

procedure TForm8.dg1CellClick(Column: TColumn);
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
cbb1.Text:= zqry1.FieldList[4].AsString;
e6.Text:= zqry1.FieldList[5].AsString;
e7.Text:= zqry1.FieldList[6].AsString;
end;

procedure TForm8.b6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
