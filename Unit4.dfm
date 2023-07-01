object Form4: TForm4
  Left = 192
  Top = 124
  Width = 870
  Height = 451
  Caption = 'Form4'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 312
    Top = 0
    Width = 225
    Height = 29
    Caption = 'DATA ORANG TUA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 288
    Width = 697
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Panel1: TPanel
    Left = 48
    Top = 24
    Width = 657
    Height = 249
    TabOrder = 1
    object Label2: TLabel
      Left = 328
      Top = 8
      Width = 69
      Height = 13
      Caption = 'NO TELEPON'
    end
    object Label3: TLabel
      Left = 328
      Top = 48
      Width = 43
      Height = 13
      Caption = 'ALAMAT'
    end
    object Label4: TLabel
      Left = 328
      Top = 80
      Width = 63
      Height = 13
      Caption = 'PEKERJAAN'
    end
    object Label5: TLabel
      Left = 328
      Top = 112
      Width = 43
      Height = 13
      Caption = 'STATUS'
    end
    object Label6: TLabel
      Left = 56
      Top = 8
      Width = 18
      Height = 13
      Caption = 'NIK'
    end
    object Label7: TLabel
      Left = 56
      Top = 48
      Width = 31
      Height = 13
      Caption = 'NAMA'
    end
    object Label8: TLabel
      Left = 56
      Top = 80
      Width = 80
      Height = 13
      Caption = 'JENIS KELAMIN'
    end
    object Label9: TLabel
      Left = 56
      Top = 112
      Width = 66
      Height = 13
      Caption = 'PENDIDIKAN'
    end
    object Edit1: TEdit
      Left = 176
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 176
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 176
      Top = 80
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 176
      Top = 112
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 432
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object Edit5: TEdit
      Left = 432
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object Edit6: TEdit
      Left = 432
      Top = 80
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object Edit7: TEdit
      Left = 432
      Top = 112
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object Button1: TButton
      Left = 40
      Top = 152
      Width = 75
      Height = 25
      Caption = 'BARU'
      TabOrder = 8
    end
    object Button2: TButton
      Left = 128
      Top = 152
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      TabOrder = 9
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 224
      Top = 152
      Width = 75
      Height = 25
      Caption = 'UBAH'
      TabOrder = 10
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 320
      Top = 152
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      TabOrder = 11
    end
    object Button5: TButton
      Left = 408
      Top = 152
      Width = 75
      Height = 25
      Caption = 'BATAL'
      TabOrder = 12
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 504
      Top = 152
      Width = 75
      Height = 25
      Caption = 'LAPORAN'
      TabOrder = 13
      OnClick = Button6Click
    end
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 752
    Top = 96
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
    Left = 744
    Top = 16
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_poin')
    Params = <>
    Left = 752
    Top = 56
  end
  object frxReport1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45108.768425821760000000
    ReportOptions.LastChange = 45108.768425821760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 768
    Top = 184
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    Left = 768
    Top = 136
  end
end
