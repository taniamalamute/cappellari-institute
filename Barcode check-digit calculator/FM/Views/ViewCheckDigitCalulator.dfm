object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'FormCheckDigitCalculator'
  ClientHeight = 140
  ClientWidth = 370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object lblInsertBarcode: TLabel
    Left = 24
    Top = 21
    Width = 324
    Height = 13
    Caption = 
      'Inserisci il codice a barre di cui desideri calcolare il codice ' +
      'di controllo'
  end
  object lblForCheckDigit: TLabel
    Left = 24
    Top = 88
    Width = 123
    Height = 16
    Caption = 'Codice di controllo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblForCompleteBarcode: TLabel
    Left = 24
    Top = 110
    Width = 162
    Height = 16
    Caption = 'Codice a barre completo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCheckDigit: TLabel
    Left = 153
    Top = 88
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblCompleteBarcode: TLabel
    Left = 192
    Top = 110
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtBarcode: TEdit
    Left = 24
    Top = 40
    Width = 81
    Height = 21
    MaxLength = 12
    NumbersOnly = True
    TabOrder = 0
  end
  object btnCalulate: TButton
    Left = 152
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Calcola'
    TabOrder = 1
    OnClick = btnCalulateClick
  end
end
