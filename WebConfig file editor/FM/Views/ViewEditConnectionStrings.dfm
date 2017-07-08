object FormEditConnectionStrings: TFormEditConnectionStrings
  Left = 0
  Top = 0
  Caption = 'Modifica le stringhe di connessione'
  ClientHeight = 237
  ClientWidth = 492
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
  object lblChooseConnection: TLabel
    Left = 24
    Top = 21
    Width = 128
    Height = 13
    Caption = 'Seleziona una connessione'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblDataSource: TLabel
    Left = 24
    Top = 83
    Width = 203
    Height = 13
    Caption = 'Data source (istanza di SQL Server):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDatabase: TLabel
    Left = 23
    Top = 110
    Width = 112
    Height = 13
    Caption = 'Nome del DataBase:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPassword: TLabel
    Left = 24
    Top = 164
    Width = 57
    Height = 13
    Caption = 'Password:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblUserID: TLabel
    Left = 23
    Top = 137
    Width = 57
    Height = 13
    Caption = 'ID utente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cbxConnections: TComboBox
    Left = 24
    Top = 40
    Width = 169
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = cbxConnectionsChange
  end
  object edtDataSource: TEdit
    Left = 233
    Top = 80
    Width = 232
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtDatabase: TEdit
    Left = 141
    Top = 107
    Width = 324
    Height = 21
    TabOrder = 2
  end
  object edtUserID: TEdit
    Left = 86
    Top = 134
    Width = 379
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object edtPassword: TEdit
    Left = 87
    Top = 161
    Width = 378
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object btnSave: TButton
    Left = 352
    Top = 197
    Width = 113
    Height = 25
    Caption = 'Salva le modifiche'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btnSaveClick
  end
end
