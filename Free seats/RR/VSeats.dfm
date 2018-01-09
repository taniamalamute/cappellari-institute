object ViewFreeSeats: TViewFreeSeats
  Left = 0
  Top = 0
  Caption = 'ViewFreeSeats'
  ClientHeight = 242
  ClientWidth = 395
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
    Left = 16
    Top = 8
    Width = 81
    Height = 13
    Caption = 'Check FreeSeats'
  end
  object Button1: TButton
    Left = 16
    Top = 77
    Width = 161
    Height = 36
    Caption = 'Check'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBMemo1: TDBMemo
    Left = 16
    Top = 130
    Width = 137
    Height = 95
    TabOrder = 1
  end
  object memFreeSeats: TMemo
    Left = 183
    Top = 42
    Width = 204
    Height = 192
    Lines.Strings = (
      'memFreeSeats')
    TabOrder = 2
  end
  object ledtRequiredSeats: TLabeledEdit
    Left = 16
    Top = 50
    Width = 161
    Height = 21
    EditLabel.Width = 73
    EditLabel.Height = 13
    EditLabel.Caption = 'Required Seats'
    TabOrder = 3
  end
end
