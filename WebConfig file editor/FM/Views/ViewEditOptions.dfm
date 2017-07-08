object FormEditOptions: TFormEditOptions
  Left = 0
  Top = 0
  Caption = 'Modifica le opzioni'
  ClientHeight = 154
  ClientWidth = 291
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblChooseOption: TLabel
    Left = 24
    Top = 16
    Width = 191
    Height = 13
    Caption = 'Seleziona l'#39'opzione che vuoi aggiornare:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblValue: TLabel
    Left = 24
    Top = 77
    Width = 45
    Height = 11
    Caption = 'VALORE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cbxOptions: TComboBox
    Left = 24
    Top = 35
    Width = 241
    Height = 21
    TabOrder = 0
    OnChange = cbxOptionsChange
  end
  object edtOptionValue: TEdit
    Left = 75
    Top = 72
    Width = 190
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btnSave: TButton
    Left = 152
    Top = 112
    Width = 113
    Height = 25
    Caption = 'Salva le modifiche'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnSaveClick
  end
end
