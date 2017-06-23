object Formbarcodes: TFormbarcodes
  Left = 0
  Top = 0
  Caption = 'Formbarcodes'
  ClientHeight = 163
  ClientWidth = 550
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
  object Label1: TLabel
    Left = 80
    Top = 21
    Width = 393
    Height = 13
    Caption = 
      'Inserire Barcode di 12 cifre e premere Calcolo Check Digit per o' +
      'ttenere ultima cifra'
  end
  object Button1: TButton
    Left = 144
    Top = 80
    Width = 233
    Height = 41
    Caption = 'Calcolo Check Digit'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 80
    Top = 40
    Width = 297
    Height = 21
    Alignment = taRightJustify
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 383
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 2
  end
end
