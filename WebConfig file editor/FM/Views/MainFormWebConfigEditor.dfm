object FormWebConfigEditor: TFormWebConfigEditor
  Left = 0
  Top = 0
  Caption = 'WebConfig editor'
  ClientHeight = 283
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblFileName: TLabel
    Left = 24
    Top = 56
    Width = 4
    Height = 14
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object gbxOperations: TGroupBox
    Left = 24
    Top = 136
    Width = 313
    Height = 129
    Caption = 'Seleziona un'#39'operazione da compiere sul file'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object btnEditConnectionStrings: TButton
      Left = 56
      Top = 24
      Width = 193
      Height = 25
      Caption = 'Modifica le stringhe di connessione'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnEditConnectionStringsClick
    end
    object btnEditOptions: TButton
      Left = 88
      Top = 55
      Width = 129
      Height = 25
      Caption = 'Modifica le opzioni'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnEditOptionsClick
    end
    object btnEditApplicationName: TButton
      Left = 64
      Top = 86
      Width = 177
      Height = 25
      Caption = 'Modifica il nome dell'#39'applicazione'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnEditApplicationNameClick
    end
  end
  object btnChooseFile: TButton
    Left = 48
    Top = 16
    Width = 265
    Height = 25
    Caption = 'Seleziona un file Web.config che desideri modificare'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnChooseFileClick
  end
end
