unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, StdCtrls,
  ExtCtrls;

type
  TForm4 = class(TForm)
    DataSource1: TDataSource;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
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
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure bersih;
    procedure posisiawal;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
 id:string;
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
id:= zquery1.Fields[0].AsString;
edit1.Text:= zquery1.Fields[1].AsString;
edit2.Text:= zquery1.Fields[2].AsString;
combobox1.Text:= zquery1.Fields[3].AsString;
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
combobox1.Enabled:= True;
button1.Enabled:= False;
button2.Enabled:= False;
button3.Enabled:= True;
button4.Enabled:= True;
button5.Enabled:= True;
button6.Enabled:= False;
end;


procedure TForm4.bersih;
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
edit6.Clear;
edit7.Clear;
end;

procedure TForm4.posisiawal;
begin
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
Edit6.Enabled:= False;
Edit7.Enabled:= False;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
if edit1.Text ='' then
begin
ShowMessage('NIK TIDAK BOLEH KOSONG!');
end else
if edit2.Text ='' then
begin
ShowMessage('NAMA TIDAK BOLEH KOSONG!');
end else
if combobox1.Text ='Pilih jenis kelamin' then
begin
ShowMessage('SILAHKAN PILIH JENIS KELAMIN');
end else
if edit3.Text ='' then
begin
ShowMessage('PENDIDIKAN TIDAK BOLEH KOSONG!');
end else
if edit4.Text ='' then
begin
ShowMessage('NOMOR TELPON TIDAK BOLEH KOSONG!');
end else
if edit5.Text ='' then
begin
ShowMessage('ALAMAT TIDAK BOLEH KOSONG!');
end else
if edit6.Text ='' then
begin
ShowMessage('PEKERJAAN TIDAK BOLEH KOSONG!');
end else
if edit7.Text ='' then
begin
ShowMessage('STATUS TIDAK BOLEH KOSONG!');
end else
begin
zquery1.SQL.Clear;
zquery1.SQL.Add('insert into tabel_ortuatauwali values(null,"'+edit1.Text+'","'+edit2.Text+'","'+combobox1.Text+'","'+edit3.Text+'","'+edit4.Text+'","'+edit5.Text+'","'+edit6.Text+'","'+edit7.Text+'")');
zquery1.ExecSQL ;
zquery1.SQL.Clear;
zquery1.SQL.Add('select * from tabel_ortuatauwali');
zquery1.Open;
ShowMessage('Data Berhasil Disimpan');
posisiawal;
end;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
if (edit1.Text= '')or(edit2.Text= '')or(edit3.Text= '')or(edit4.Text= '')or(edit5.Text= '')or(edit6.Text= '')or(edit7.Text= '')then
begin
  ShowMessage('Inputan Wajib Di Isi');
end else
begin
zquery1.SQL.Clear;
zquery1.SQL.Add(' update tabel_ortuatauwali set nik="'+edit1.Text+'",nama="'+edit2.Text+'",jenis_kelamin="'+combobox1.Text+'",pendidikan="'+edit3.Text+'",no_telepon="'+edit4.Text+'",alamat="'+edit5.Text+'",pekerjaan="'+edit6.Text+'",status="'+edit7.Text+'" where id_ortuatauwali ="'+id+'"');
zquery1.ExecSQL ;
zquery1.SQL.Clear;
zquery1.SQL.Add('select * from tabel_ortuatauwali');
zquery1.Open;
ShowMessage('Data Berhasil Disimpan');
posisiawal;
end;
end;
procedure TForm4.Button5Click(Sender: TObject);
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

procedure TForm4.Button6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
