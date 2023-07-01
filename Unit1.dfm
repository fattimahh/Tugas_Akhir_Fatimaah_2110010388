object Form1: TForm1
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 352
    Top = 0
    Width = 144
    Height = 29
    Caption = 'DATA SISWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 48
    Top = 24
    Width = 633
    Height = 337
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 56
      Width = 18
      Height = 13
      Caption = 'NIS'
    end
    object Label3: TLabel
      Left = 24
      Top = 88
      Width = 26
      Height = 13
      Caption = 'NISN'
    end
    object Label4: TLabel
      Left = 24
      Top = 120
      Width = 18
      Height = 13
      Caption = 'NIK'
    end
    object Label5: TLabel
      Left = 24
      Top = 152
      Width = 31
      Height = 13
      Caption = 'NAMA'
    end
    object Label6: TLabel
      Left = 24
      Top = 184
      Width = 79
      Height = 13
      Caption = 'TEMPAT LAHIR'
    end
    object Label7: TLabel
      Left = 24
      Top = 216
      Width = 86
      Height = 13
      Caption = 'TANGGAL LAHIR'
    end
    object Label8: TLabel
      Left = 24
      Top = 248
      Width = 80
      Height = 13
      Caption = 'JENIS KELAMIN'
    end
    object Label9: TLabel
      Left = 344
      Top = 56
      Width = 84
      Height = 13
      Caption = 'TINGKAT KELAS'
    end
    object Label10: TLabel
      Left = 344
      Top = 88
      Width = 51
      Height = 13
      Caption = 'JURUSAN'
    end
    object Label11: TLabel
      Left = 344
      Top = 120
      Width = 75
      Height = 13
      Caption = 'ID WALIKELAS'
    end
    object Label12: TLabel
      Left = 344
      Top = 152
      Width = 43
      Height = 13
      Caption = 'ALAMAT'
    end
    object Label13: TLabel
      Left = 344
      Top = 184
      Width = 69
      Height = 13
      Caption = 'NO TELEPON'
    end
    object Label14: TLabel
      Left = 344
      Top = 216
      Width = 43
      Height = 13
      Caption = 'STATUS'
    end
    object Edit1: TEdit
      Left = 128
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 128
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 128
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 128
      Top = 152
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 128
      Top = 184
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object DateTimePicker1: TDateTimePicker
      Left = 128
      Top = 216
      Width = 121
      Height = 21
      Date = 45108.588422175930000000
      Time = 45108.588422175930000000
      TabOrder = 5
    end
    object ComboBox1: TComboBox
      Left = 128
      Top = 248
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 6
      Items.Strings = (
        'Perempuan'
        'Laki - Laki')
    end
    object ComboBox2: TComboBox
      Left = 472
      Top = 56
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 7
    end
    object ComboBox3: TComboBox
      Left = 472
      Top = 88
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 8
    end
    object Edit6: TEdit
      Left = 472
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 9
    end
    object Edit7: TEdit
      Left = 472
      Top = 152
      Width = 121
      Height = 21
      TabOrder = 10
    end
    object Edit8: TEdit
      Left = 472
      Top = 184
      Width = 121
      Height = 21
      TabOrder = 11
    end
    object Edit9: TEdit
      Left = 472
      Top = 216
      Width = 121
      Height = 21
      TabOrder = 12
    end
    object Button1: TButton
      Left = 40
      Top = 288
      Width = 75
      Height = 25
      Caption = 'BARU'
      TabOrder = 13
      OnClick = FormShow
    end
    object Button2: TButton
      Left = 128
      Top = 288
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      TabOrder = 14
    end
    object Button3: TButton
      Left = 216
      Top = 288
      Width = 75
      Height = 25
      Caption = 'UBAH'
      TabOrder = 15
    end
    object Button4: TButton
      Left = 304
      Top = 288
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      TabOrder = 16
    end
    object Button5: TButton
      Left = 392
      Top = 288
      Width = 75
      Height = 25
      Caption = 'BATAL'
      TabOrder = 17
    end
    object Button6: TButton
      Left = 480
      Top = 288
      Width = 75
      Height = 25
      Caption = 'LAPORAN'
      TabOrder = 18
    end
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 368
    Width = 633
    Height = 217
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'laporansiswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\USER\OneDrive\Documents\TugasAkhir\libmysql.dll'
    Left = 712
    Top = 48
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_siswa')
    Params = <>
    Left = 712
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 712
    Top = 120
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    Left = 712
    Top = 152
  end
  object frxReport1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45108.595483888890000000
    ReportOptions.LastChange = 45108.595483888890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 712
    Top = 184
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
