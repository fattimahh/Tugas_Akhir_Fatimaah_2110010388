object Form5: TForm5
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form5'
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
    Left = 376
    Top = 8
    Width = 82
    Height = 13
    Caption = 'DATA CATATAN'
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 288
    Width = 320
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
    Left = 32
    Top = 40
    Width = 673
    Height = 241
    TabOrder = 1
    object Button1: TButton
      Left = 24
      Top = 160
      Width = 75
      Height = 25
      Caption = 'BARU'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 120
      Top = 160
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 224
      Top = 160
      Width = 75
      Height = 25
      Caption = 'UBAH'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 336
      Top = 160
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 448
      Top = 160
      Width = 75
      Height = 25
      Caption = 'BATAL'
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 552
      Top = 160
      Width = 75
      Height = 25
      Caption = 'LAPORAN'
      TabOrder = 5
    end
    object Edit1: TEdit
      Left = 136
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 6
      Text = 'Edit1'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 136
      Top = 8
      Width = 121
      Height = 21
      Date = 45108.813782986110000000
      Time = 45108.813782986110000000
      TabOrder = 7
    end
    object Edit2: TEdit
      Left = 136
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 8
      Text = 'Edit1'
    end
    object Edit3: TEdit
      Left = 136
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 9
      Text = 'Edit1'
    end
    object Edit4: TEdit
      Left = 384
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 10
      Text = 'Edit1'
    end
    object Edit5: TEdit
      Left = 384
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 11
      Text = 'Edit1'
    end
    object Edit6: TEdit
      Left = 384
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 12
      Text = 'Edit1'
    end
    object Edit7: TEdit
      Left = 384
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 13
      Text = 'Edit1'
    end
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 592
    Top = 8
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
    Left = 512
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_catatan')
    Params = <>
    Left = 552
    Top = 8
  end
  object frxReport1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45108.772366481480000000
    ReportOptions.LastChange = 45108.772366481480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 672
    Top = 8
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    Left = 632
    Top = 8
  end
end
