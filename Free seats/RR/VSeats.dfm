object FreeSeats: TFreeSeats
  Left = 0
  Top = 0
  Caption = 'FreeSeats'
  ClientHeight = 214
  ClientWidth = 326
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
    Width = 81
    Height = 13
    Caption = 'Check FreeSeats'
  end
  object Button1: TButton
    Left = 16
    Top = 40
    Width = 81
    Height = 25
    Caption = 'Check'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 112
    Top = 42
    Width = 201
    Height = 164
    TabOrder = 1
  end
end
