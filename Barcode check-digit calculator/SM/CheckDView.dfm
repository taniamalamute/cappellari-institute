object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 231
  ClientWidth = 796
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 16
    Width = 143
    Height = 13
    Caption = 'Enter your 12 barcode'#39's digits'
  end
  object Edit1: TEdit
    Left = 24
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 0
    TextHint = '0'
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 86
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 1
    TextHint = '0'
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 147
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 2
    TextHint = '0'
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 208
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 3
    TextHint = '0'
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 270
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 4
    TextHint = '0'
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 334
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 5
    TextHint = '0'
    OnKeyPress = Edit6KeyPress
  end
  object Edit7: TEdit
    Left = 389
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 6
    TextHint = '0'
    OnKeyPress = Edit7KeyPress
  end
  object Edit8: TEdit
    Left = 458
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 7
    TextHint = '0'
    OnKeyPress = Edit8KeyPress
  end
  object Edit9: TEdit
    Left = 520
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 8
    TextHint = '0'
    OnKeyPress = Edit9KeyPress
  end
  object Edit10: TEdit
    Left = 584
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 9
    TextHint = '0'
    OnKeyPress = Edit10KeyPress
  end
  object Edit11: TEdit
    Left = 648
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 10
    TextHint = '0'
    OnKeyPress = Edit11KeyPress
  end
  object Edit12: TEdit
    Left = 720
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 11
    TextHint = '0'
    OnKeyPress = Edit12KeyPress
  end
  object Edit13: TEdit
    Left = 192
    Top = 120
    Width = 377
    Height = 21
    TabOrder = 12
    TextHint = 'Your check digit is...'
  end
  object Button1: TButton
    Left = 192
    Top = 80
    Width = 377
    Height = 25
    Caption = 'Calculate your check digit'
    TabOrder = 13
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 0
    Top = 168
    Width = 793
    Height = 25
    Caption = 'Calculate another Checkdigit'
    TabOrder = 14
    OnClick = Button2Click
  end
end
