object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 231
  ClientWidth = 617
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
  object Label1: TLabel
    Left = 26
    Top = 10
    Width = 156
    Height = 13
    Caption = 'Insert 12 digits of your barcode:'
  end
  object Edit1: TEdit
    Left = 24
    Top = 32
    Width = 41
    Height = 21
    TabOrder = 0
    TextHint = '0'
  end
  object Edit2: TEdit
    Left = 72
    Top = 32
    Width = 41
    Height = 21
    TabOrder = 1
    TextHint = '0'
  end
  object Edit3: TEdit
    Left = 120
    Top = 32
    Width = 41
    Height = 21
    TabOrder = 2
    TextHint = '0'
  end
  object Edit4: TEdit
    Left = 168
    Top = 32
    Width = 41
    Height = 21
    TabOrder = 3
    TextHint = '0'
  end
  object Edit5: TEdit
    Left = 216
    Top = 32
    Width = 41
    Height = 21
    TabOrder = 4
    TextHint = '0'
  end
  object Edit6: TEdit
    Left = 264
    Top = 32
    Width = 41
    Height = 21
    TabOrder = 5
    TextHint = '0'
  end
  object Edit7: TEdit
    Left = 312
    Top = 32
    Width = 41
    Height = 21
    TabOrder = 6
    TextHint = '0'
  end
  object Edit8: TEdit
    Left = 360
    Top = 32
    Width = 41
    Height = 21
    TabOrder = 7
    TextHint = '0'
  end
  object Edit9: TEdit
    Left = 408
    Top = 32
    Width = 41
    Height = 21
    TabOrder = 8
    TextHint = '0'
  end
  object Edit10: TEdit
    Left = 456
    Top = 32
    Width = 41
    Height = 21
    TabOrder = 9
    TextHint = '0'
  end
  object Edit11: TEdit
    Left = 504
    Top = 32
    Width = 41
    Height = 21
    TabOrder = 10
    TextHint = '0'
  end
  object Edit12: TEdit
    Left = 552
    Top = 32
    Width = 41
    Height = 21
    TabOrder = 11
    TextHint = '0'
  end
  object Button1: TButton
    Left = 72
    Top = 72
    Width = 473
    Height = 25
    Caption = 'Calculate your barcode'#39's Check Digit'
    TabOrder = 12
  end
  object Edit13: TEdit
    Left = 200
    Top = 103
    Width = 217
    Height = 58
    TabOrder = 13
    TextHint = 'Your Check Digit is...'
  end
  object Button2: TButton
    Left = 72
    Top = 176
    Width = 473
    Height = 25
    Caption = 'Reset All and calculate a new Check Digit'
    TabOrder = 14
  end
end
