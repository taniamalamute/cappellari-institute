object FormEditApplicationName: TFormEditApplicationName
  Left = 0
  Top = 0
  Caption = 'Modifica il nome dell'#39'applicazione'
  ClientHeight = 115
  ClientWidth = 372
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
  object lblApplicationName: TLabel
    Left = 24
    Top = 16
    Width = 110
    Height = 13
    Caption = 'Nome dell'#39'applicazione:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtApplicationName: TEdit
    Left = 24
    Top = 35
    Width = 321
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object btnSave: TButton
    Left = 232
    Top = 72
    Width = 113
    Height = 25
    Caption = 'Salva le modifiche'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnSaveClick
  end
end
