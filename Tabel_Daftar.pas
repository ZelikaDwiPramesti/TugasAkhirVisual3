unit Tabel_Daftar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TForm3 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    e1: TEdit;
    e2: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    cbb1: TComboBox;
    cbb2: TComboBox;
    con1: TZConnection;
    zqry1: TZQuery;
    procedure setawal;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Tabel_Login;

{$R *.dfm}

procedure TForm3.setawal;
begin
e1.Clear;
e2.Clear;
cbb1.text:='';
cbb2.text:='';
end;

procedure TForm3.b1Click(Sender: TObject);
begin
if (e1.Text= '')or (e2.Text ='')or(cbb1.Text= '')or (cbb2.Text ='')then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('username',e1.Text,[])) and (zqry1.Locate('password',e2.Text,[])) then
begin
ShowMessage('DATA USER SUDAH DIGUNAKAN');
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into user values (null,"'+e1.Text+'","'+e2.Text+'","'+cbb1.Text+'","'+cbb2.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from user');
zqry1.Open;
Application.MessageBox('BERHASIL MENDAFTAR','Informasi',MB_OK or MB_ICONINFORMATION)

end;
setawal;
end;

procedure TForm3.b2Click(Sender: TObject);
begin
setawal;
end;

procedure TForm3.b3Click(Sender: TObject);
begin
close;
form2.Show;
end;

end.
