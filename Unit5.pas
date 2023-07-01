unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls,
  ExtCtrls, ComCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit1: TEdit;
    DateTimePicker1: TDateTimePicker;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure Button2Click(Sender: TObject);
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
  id:string;
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
id:= zquery1.Fields[0].AsString;
datetimepicker1.Date:= zquery1.Fields[1].AsDateTime;
edit1.Text:= zquery1.Fields[2].AsString;
edit2.Text:= zquery1.Fields[3].AsString;
edit3.Text:= zquery1.Fields[4].AsString;
edit4.Text:= zquery1.Fields[5].AsString;
edit5.Text:= zquery1.Fields[6].AsString;
edit6.Text:= zquery1.Fields[7].AsString;
edit7.Text:= zquery1.Fields[8].AsString;
edit1.Enabled:= True;
edit2.Enabled:= True;
edit3.Enabled:= True;
edit4.Enabled:= True;
edit5.Enabled:= True;
edit6.Enabled:= True;
edit7.Enabled:= True;
button1.Enabled := False;
button2.Enabled := False;
button3.Enabled := True;
button4.Enabled := True;
button5.Enabled := True;
button6.Enabled := False;
end;

Procedure TForm5.Button1Click(Sender: TObject);
begin
bersih;
button1.Enabled:= false;
button2.Enabled:= True;
button3.Enabled:= False;
button4.Enabled:= False;
button5.Enabled:= True;
button6.Enabled:= False;
Edit1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;
Edit4.Enabled:= True;
Edit5.Enabled:= True;
Edit6.Enabled:= True;
Edit7.Enabled:= True;
end;

procedure TForm5.bersih;
begin
edit1.clear;
edit2.clear;
edit3.clear;
edit4.clear;
edit5.clear;
edit6.Clear;
edit7.Clear;
end;

procedure TForm5.posisiawal;
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
Edit4.Enabled:= False;
Edit5.Enabled:= False;
edit6.Enabled:= False;
Edit7.Enabled:= False;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
if edit1.Text ='' then
begin
ShowMessage('SEMESTER TIDAK BOLEH KOSONG!');
end else
if edit2.Text ='' then
begin
ShowMessage('ID SISWA TIDAK BOLEH KOSONG!');
end else
if edit3.Text ='' then
begin
ShowMessage('ID WALI KELAS TIDAK BOLEH KOSONG!');
end else
if edit4.Text ='' then
begin
ShowMessage('ID ORANG TUA ATAU WALI TIDAK BOLEH KOSONG!');
end else
if edit5.Text ='' then
begin
ShowMessage('ID POIN TIDAK BOLEH KOSONG!');
end else
if edit6.Text ='' then
begin
ShowMessage('KETERANGAN TIDAK BOLEH KOSONG!');
end else
if edit7.Text ='' then
begin
ShowMessage('STATUS TIDAK BOLEH KOSONG!');
end else
begin
zquery1.SQL.Clear;
zquery1.SQL.Add('insert into tabel_catatan values(null,"'+formatdatetime('yyyy-mm-dd',datetimepicker1.Date)+'","'+edit1.Text+'","'+edit2.Text+'","'+edit3.Text+'","'+edit4.Text+'","'+edit5.Text+'","'+edit6.Text+'","'+edit7.Text+'")');
zquery1.ExecSQL ;
zquery1.SQL.Clear;
zquery1.SQL.Add('select * from tabel_catatan');
zquery1.Open;
ShowMessage('Data Berhasil Disimpan');
posisiawal;
end;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
if (edit1.Text= '')or(edit2.Text= '')or(edit3.Text= '')or(edit4.Text= '')or(edit5.Text= '')or(edit6.Text= '')or(edit7.Text= '')then
begin
  ShowMessage('Inputan Wajib Di Isi');
end else
begin
zquery1.SQL.Clear;
zquery1.SQL.Add('update tabel_catatan set tanggal="'+FormatDateTime('yyyy-mm-dd', DateTimePicker1.Date)+'",semester="'+edit1.Text+'",id_siswa="'+edit2.Text+'",id_walikelas="'+edit3.Text+'",id_ortuatauwali="'+edit4.Text+'",id_point="'+edit5.Text+'",keterangan="'+edit6.Text+'",status="'+edit7.Text+'" where id_catatan ="'+id+'"');
zquery1.ExecSQL;
zquery1.SQL.Clear;
zquery1.SQL.Add('select * from tabel_catatan');
zquery1.Open;
ShowMessage('Data Berhasil Disimpan');
posisiawal;

end;
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?', mtWarning, [mbYes, mbNo], 0) = mrYes then
begin
  zquery1.SQL.Clear;
  zquery1.SQL.Add('delete from tabel_catatan where id_catatan ="'+id+'"');
  zquery1.ExecSQL;
  zquery1.SQL.Clear;
  zquery1.SQL.Add('select * from tabel_catatan');
  zquery1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS');
  posisiawal;
end
else
begin
  ShowMessage('DATA BATAL DIHAPUS');
  posisiawal;
end;
end;

procedure TForm5.Button5Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
posisiawal;
end;

procedure TForm5.Button6Click(Sender: TObject);
begin
frxReport1.showreport();
end;

end.
