object FormSatuan: TFormSatuan
  Left = 496
  Top = 200
  Width = 486
  Height = 362
  Caption = 'Satuan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 24
    Width = 49
    Height = 13
    Caption = 'Nama      :'
  end
  object lbl2: TLabel
    Left = 16
    Top = 272
    Width = 87
    Height = 13
    Caption = 'Masukkan Nama : '
  end
  object lbl3: TLabel
    Left = 16
    Top = 56
    Width = 49
    Height = 13
    Caption = 'Deskripsi :'
  end
  object edt1: TEdit
    Left = 72
    Top = 24
    Width = 337
    Height = 21
    TabOrder = 0
  end
  object btnsimpan: TButton
    Left = 104
    Top = 88
    Width = 67
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 1
    OnClick = btnsimpanClick
  end
  object btnedit: TButton
    Left = 184
    Top = 88
    Width = 67
    Height = 25
    Caption = 'EDIT'
    TabOrder = 2
    OnClick = btneditClick
  end
  object btnhapus: TButton
    Left = 264
    Top = 88
    Width = 73
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 3
    OnClick = btnhapusClick
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 128
    Width = 417
    Height = 120
    DataSource = DataModule1.ds1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt2: TEdit
    Left = 112
    Top = 272
    Width = 321
    Height = 21
    TabOrder = 5
    OnChange = edt2Change
  end
  object btnbatal: TBitBtn
    Left = 352
    Top = 88
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = btnbatalClick
  end
  object edt3: TEdit
    Left = 72
    Top = 56
    Width = 337
    Height = 21
    TabOrder = 7
  end
end
