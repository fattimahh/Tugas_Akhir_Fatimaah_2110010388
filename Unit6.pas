unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm6 = class(TForm)
    MainMenu1: TMainMenu;
    DataSiswa1: TMenuItem;
    DataSiswa2: TMenuItem;
    DataWaliKelas1: TMenuItem;
    DataPoin1: TMenuItem;
    DataOrangTuaWali1: TMenuItem;
    DataCatatan1: TMenuItem;
    procedure DataSiswa2Click(Sender: TObject);
    procedure DataWaliKelas1Click(Sender: TObject);
    procedure DataPoin1Click(Sender: TObject);
    procedure DataOrangTuaWali1Click(Sender: TObject);
    procedure DataCatatan1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}

procedure TForm6.DataSiswa2Click(Sender: TObject);
begin
form1.show;
end;

procedure TForm6.DataWaliKelas1Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm6.DataPoin1Click(Sender: TObject);
begin
form3.show;
end;

procedure TForm6.DataOrangTuaWali1Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm6.DataCatatan1Click(Sender: TObject);
begin
form5.show;
end;

end.
