object Form6: TForm6
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form6'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 8
    object DataSiswa1: TMenuItem
      Caption = 'Menu'
      object DataSiswa2: TMenuItem
        Caption = 'Data Siswa'
        OnClick = DataSiswa2Click
      end
      object DataWaliKelas1: TMenuItem
        Caption = 'Data Wali Kelas'
        OnClick = DataWaliKelas1Click
      end
      object DataPoin1: TMenuItem
        Caption = 'Data Poin'
        OnClick = DataPoin1Click
      end
      object DataOrangTuaWali1: TMenuItem
        Caption = 'Data Orang Tua/ Wali'
        OnClick = DataOrangTuaWali1Click
      end
      object DataCatatan1: TMenuItem
        Caption = 'Data Catatan'
      end
    end
  end
end
