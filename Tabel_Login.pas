unit Tabel_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TForm2 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    e1: TEdit;
    e2: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    zqry1: TZQuery;
    con1: TZConnection;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure b3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Tabel_User, Tabel_Daftar, Main_Menu;

{$R *.dfm}

procedure TForm2.b1Click(Sender: TObject);
begin
with zqry1 do begin
SQL.Clear;
SQL.Add('select * from user where username='+QuotedStr(e1.Text));
open;
end;
//end with
//jika tidak ditemukan data yang dicari
//maka tampilkan pesan

if zqry1.RecordCount=0
then
Application.MessageBox('Maaf User Name Tidak Ditemukan','Informasi',MB_OK or MB_ICONINFORMATION)
else
begin
if zqry1.FieldByName('password').AsString<>e2.Text
then
Application.MessageBox('Pastikan Password yang Anda Masukkan Benar','error',MB_OK or MB_ICONERROR)
else
begin
hide;
Form14.Show;
end;
end;
end;

procedure TForm2.b2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
e1.Text:='';
e2.Text:='';
end;

procedure TForm2.b3Click(Sender: TObject);
begin
Hide;
form3.showmodal;
end;

end.
