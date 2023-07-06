object Form3: TForm3
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 336
    Top = 8
    Width = 138
    Height = 29
    Caption = 'DATA POIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 200
    Top = 40
    Width = 457
    Height = 201
    TabOrder = 0
    object Label2: TLabel
      Left = 48
      Top = 40
      Width = 60
      Height = 13
      Caption = 'NAMA POIN'
    end
    object Label3: TLabel
      Left = 48
      Top = 80
      Width = 35
      Height = 13
      Caption = 'TOTAL'
    end
    object Label4: TLabel
      Left = 48
      Top = 120
      Width = 74
      Height = 13
      Caption = 'KETERANGAN'
    end
    object Edit1: TEdit
      Left = 184
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 184
      Top = 80
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 184
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Button1: TButton
      Left = 8
      Top = 152
      Width = 75
      Height = 25
      Caption = 'BARU'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 80
      Top = 152
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 152
      Top = 152
      Width = 75
      Height = 25
      Caption = 'UBAH'
      TabOrder = 5
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 224
      Top = 152
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      TabOrder = 6
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 296
      Top = 152
      Width = 75
      Height = 25
      Caption = 'BATAL'
      TabOrder = 7
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 368
      Top = 152
      Width = 75
      Height = 25
      Caption = 'LAPORAN'
      TabOrder = 8
      OnClick = Button6Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 192
    Top = 248
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 768
    Top = 192
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 768
    Top = 232
  end
  object frxReport1: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45108.743844097230000000
    ReportOptions.LastChange = 45108.743844097230000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 768
    Top = 272
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'laporansiswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'libmysql.dll'
    Left = 768
    Top = 104
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_poin')
    Params = <>
    Left = 768
    Top = 152
  end
end
