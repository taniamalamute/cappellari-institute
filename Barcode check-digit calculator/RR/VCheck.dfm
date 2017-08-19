object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 166
  ClientWidth = 428
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
    Left = 16
    Top = 8
    Width = 93
    Height = 13
    Caption = 'Select Code Lenght'
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 173
    Height = 13
    Caption = 'Insert Code to Calculate Check-digit'
  end
  object Label3: TLabel
    Left = 360
    Top = 56
    Width = 53
    Height = 13
    Caption = 'Check-digit'
  end
  object Label4: TLabel
    Left = 16
    Top = 112
    Width = 73
    Height = 13
    Caption = 'Complete Code'
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 27
    Width = 145
    Height = 21
    TabOrder = 0
    OnChange = ComboBox1Change
    Items.Strings = (
      ''
      '8'
      '12'
      '13'
      '14'
      '17'
      '18')
  end
  object Edit1: TEdit
    Left = 16
    Top = 75
    Width = 217
    Height = 21
    MaxLength = 1
    TabOrder = 1
  end
  object Button1: TButton
    Left = 256
    Top = 73
    Width = 75
    Height = 25
    Caption = 'Calculate'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 360
    Top = 75
    Width = 53
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 16
    Top = 131
    Width = 315
    Height = 21
    Enabled = False
    TabOrder = 4
  end
end
