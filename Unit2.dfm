object Form2: TForm2
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form2'
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
    Left = 344
    Top = 16
    Width = 96
    Height = 13
    Caption = 'DATA WALI KELAS'
  end
  object Panel1: TPanel
    Left = 16
    Top = 32
    Width = 617
    Height = 209
    TabOrder = 0
    object Label2: TLabel
      Left = 32
      Top = 24
      Width = 18
      Height = 13
      Caption = 'NIK'
    end
    object Label3: TLabel
      Left = 32
      Top = 56
      Width = 31
      Height = 13
      Caption = 'NAMA'
    end
    object Label4: TLabel
      Left = 32
      Top = 88
      Width = 80
      Height = 13
      Caption = 'JENIS KELAMIN'
    end
    object Label5: TLabel
      Left = 32
      Top = 124
      Width = 66
      Height = 13
      Caption = 'PENDIDIKAN'
    end
    object Label6: TLabel
      Left = 320
      Top = 24
      Width = 36
      Height = 13
      Caption = 'MAPEL'
    end
    object Label7: TLabel
      Left = 320
      Top = 56
      Width = 84
      Height = 13
      Caption = 'TINGKAT KELAS'
    end
    object Label8: TLabel
      Left = 320
      Top = 88
      Width = 48
      Height = 13
      Caption = 'JABATAN'
    end
    object Edit1: TEdit
      Left = 152
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 152
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 152
      Top = 88
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = 'JENIS KELAMIN'
    end
    object Edit3: TEdit
      Left = 152
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 432
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object ComboBox2: TComboBox
      Left = 432
      Top = 56
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 5
      Text = 'TINGKAT KELAS'
    end
    object Edit5: TEdit
      Left = 432
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object Button1: TButton
      Left = 32
      Top = 160
      Width = 75
      Height = 25
      Caption = 'BARU'
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 128
      Top = 160
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      TabOrder = 8
    end
    object Button3: TButton
      Left = 224
      Top = 160
      Width = 75
      Height = 25
      Caption = 'UBAH'
      TabOrder = 9
    end
    object Button4: TButton
      Left = 328
      Top = 160
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      TabOrder = 10
    end
    object Button5: TButton
      Left = 424
      Top = 160
      Width = 75
      Height = 25
      Caption = 'BATAL'
      TabOrder = 11
    end
    object Button6: TButton
      Left = 520
      Top = 160
      Width = 75
      Height = 25
      Caption = 'LAPORAN'
      TabOrder = 12
    end
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 256
    Width = 801
    Height = 105
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 720
    Top = 160
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
    Left = 728
    Top = 56
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_walikelas')
    Params = <>
    Left = 728
    Top = 112
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    Left = 728
    Top = 208
  end
end
