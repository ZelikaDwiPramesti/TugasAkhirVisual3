unit Tabel_Pegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    l7: TLabel;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    e5: TEdit;
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
    cbb1: TComboBox;
    cbb2: TComboBox;
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
  Form5: TForm5;
  id : string;
implementation

{$R *.dfm}

{ TForm5 }

procedure TForm5.bersih;
begin
e2.Clear;
e3.Clear;
e4.Clear;
e5.Clear;
cbb1.text:= '';
cbb2.text:= '';
end;

procedure TForm5.enable;
begin
e2.Enabled:= True;
e3.Enabled:= True;
e4.Enabled:= True;
e5.Enabled:= True;
cbb1.Enabled:= True;
cbb2.Enabled:= True;
end;

procedure TForm5.setawal;
begin
e2.Enabled:= false;
e3.Enabled:= false;
e4.Enabled:= false;
e5.Enabled:= false;
cbb1.Enabled:= false;
cbb2.Enabled:= false;

b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
b6.Enabled:= True;
end;

procedure TForm5.b1Click(Sender: TObject);
begin
bersih;

b1.Enabled:= False;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;
b6.Enabled:= True;

enable;
end;

procedure TForm5.b2Click(Sender: TObject);
begin
if (e2.Text= '')or (e3.Text ='')or(e4.Text= '')or (e5.Text ='')or (cbb1.Text ='')or (cbb2.Text ='') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('jabatan_id',e2.Text,[])) and (zqry1.Locate('nm_pegawai',e3.Text,[])) then
begin
ShowMessage('DATA USER SUDAH DIGUNAKAN');
setawal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into pegawai values (null,"'+e2.Text+'","'+e3.Text+'","'+e4.Text+'","'+e5.Text+'","'+cbb1.Text+'","'+cbb2.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pegawai');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
setawal;

end;
end;

procedure TForm5.b3Click(Sender: TObject);
begin
if (e2.Text= '')or (e3.Text ='')or (e4.Text= '')or (e5.Text ='')or (cbb1.Text ='')or (cbb2.Text ='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (e2.Text = zqry1.Fields[1].AsString) and (e3.Text = zqry1.Fields[2].AsString) and (e4.Text = zqry1.Fields[3].AsString) and (e5.Text = zqry1.Fields[4].AsString) and (cbb1.Text = zqry1.Fields[5].AsString) and (cbb2.Text = zqry1.Fields[6].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
setawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('id').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update pegawai set jabatan_id= "'+e2.Text+'",nm_pegawai="'+e3.Text+'",alamat_pegawai="'+e4.Text+'",no_telp_pegawai="'+e5.Text+'",jabatan="'+cbb1.Text+'",status="'+cbb2.Text+'" where id="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pegawai');
zqry1.Open;
setawal;
end;
end;

procedure TForm5.b4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('id').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from pegawai where id="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pegawai');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
setawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
setawal;
end;
end;

procedure TForm5.b5Click(Sender: TObject);
begin
setawal;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
setawal;
end;

procedure TForm5.dg1CellClick(Column: TColumn);
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
e5.Text:= zqry1.FieldList[4].AsString;
cbb1.Text:= zqry1.FieldList[5].AsString;
cbb2.Text:= zqry1.FieldList[6].AsString;
end;

procedure TForm5.b6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
