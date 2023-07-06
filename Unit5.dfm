object Form5: TForm5
  Left = 192
  Top = 125
  Width = 870
  Height = 467
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
    object Label2: TLabel
      Left = 64
      Top = 8
      Width = 39
      Height = 13
      Caption = 'Tanggal'
    end
    object Label3: TLabel
      Left = 64
      Top = 40
      Width = 44
      Height = 13
      Caption = 'Semester'
    end
    object Label4: TLabel
      Left = 64
      Top = 64
      Width = 42
      Height = 13
      Caption = 'ID Siswa'
    end
    object Label5: TLabel
      Left = 64
      Top = 96
      Width = 64
      Height = 13
      Caption = 'ID Wali Kelas'
    end
    object Label6: TLabel
      Left = 288
      Top = 8
      Width = 65
      Height = 13
      Caption = 'ID Orang Tua'
    end
    object Label7: TLabel
      Left = 288
      Top = 40
      Width = 38
      Height = 13
      Caption = 'ID Point'
    end
    object Label8: TLabel
      Left = 288
      Top = 64
      Width = 55
      Height = 13
      Caption = 'Keterangan'
    end
    object Label9: TLabel
      Left = 288
      Top = 96
      Width = 30
      Height = 13
      Caption = 'Status'
    end
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
      OnClick = Button6Click
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
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'laporansiswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'libmysql.dll'
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
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45108.772366481500000000
    ReportOptions.LastChange = 45108.772366481500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 672
    Top = 8
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 313.700990000000000000
          Top = 11.338590000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'LAPORAN DATA CATATAN')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 94.488250000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 22.677180000000000000
          Width = 30.236240000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 52.913420000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 124.724490000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'SEMESTER')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 207.874150000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID SISWA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 264.567100000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID Walikelas')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 207.874150000000000000
        Width = 793.701300000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo7: TfrxMemoView
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 30.236240000000000000
          DataField = 'id_catatan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_catatan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 52.913420000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          DataField = 'tanggal'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 124.724490000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          DataField = 'semester'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."semester"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 207.874150000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          DataField = 'id_siswa'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_siswa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 264.567100000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          DataField = 'id_walikelas'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_walikelas"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 279.685220000000000000
        Width = 793.701300000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 362.834880000000000000
        Width = 793.701300000000000000
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 632
    Top = 8
  end
end
