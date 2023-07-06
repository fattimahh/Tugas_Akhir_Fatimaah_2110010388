unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, frxClass, frxDBSet, Grids, DBGrids,
  StdCtrls, ExtCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    procedure bersih;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  id: string;
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.bersih;
begin
edit1.Clear;
edit2.clear;
edit3.clear;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.posisiawal;
begin
bersih;
button1.Enabled:= True;
button2.Enabled:= False;
button3.Enabled:= False;
button4.Enabled:= False;
button5.Enabled:= False;
button6.Enabled:= True;
Edit1.Enabled:= False;
Edit2.Enabled:= False;
Edit3.Enabled:= False;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
bersih;
button1.Enabled:= False;
button2.Enabled:= True;
button3.Enabled:= False;
button4.Enabled:= False;
button5.Enabled:= True;
button6.Enabled:= False;
Edit1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
if edit1.Text ='' then
begin
ShowMessage('NAMA POIN TIDAK BOLEH KOSONG!');
end else
if edit2.Text ='' then
begin
ShowMessage('TOTAL TIDAK BOLEH KOSONG!');
end else
if edit3.Text ='' then
begin
ShowMessage('KETERANGAN TIDAK BOLEH KOSONG!');
end else
begin
zquery1.SQL.Clear;
zquery1.SQL.Add('insert into tabel_poin values(null,"'+edit1.Text+'","'+edit2.Text+'","'+edit3.Text+'")');
zquery1.ExecSQL ;
zquery1.SQL.Clear;
zquery1.SQL.Add('select * from tabel_poin');
zquery1.Open;
ShowMessage('Data Berhasil Disimpan');
posisiawal;
end;
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
id:= zquery1.Fields[0].AsString;
edit1.Text:= zquery1.Fields[1].AsString;
edit2.Text:= zquery1.Fields[2].AsString;
edit3.Text:= zquery1.Fields[3].AsString;
edit1.Enabled:= True;
edit2.Enabled:= True;
edit3.Enabled:= True;
button1.Enabled:= False;
button2.Enabled:= False;
button3.Enabled:= True;
button4.Enabled:= True;
button5.Enabled:= True;
button6.Enabled:= False;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
if (edit1.Text= '')or(edit2.Text= '')or(edit3.Text= '')then
begin
  ShowMessage('Inputan Wajib Di Isi');
end else
begin
zquery1.SQL.Clear;
zquery1.SQL.Add(' update tabel_poin set nama_poin="'+edit1.Text+'",total="'+edit2.Text+'",keterangan="'+edit3.Text+'" where id_poin="'+id+'"');
zquery1.ExecSQL ;
zquery1.SQL.Clear;
zquery1.SQL.Add('select * from tabel_poin');
zquery1.Open;
ShowMessage('Data Berhasil Disimpan');
posisiawal;
end;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zquery1.SQL.Clear;
zquery1.SQL.Add('delete from tabel_poin where id_poin ="'+id+'"');
zquery1. ExecSQL;
zquery1.SQL.Clear;
zquery1.SQL.Add('select * from tabel_poin');
zquery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
posisiawal;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
frxreport1.ShowReport();
end;

end.
