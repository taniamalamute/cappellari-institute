object Formview: TFormview
  Left = 0
  Top = 0
  Caption = 'Formview'
  ClientHeight = 341
  ClientWidth = 779
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
    Left = 24
    Top = 21
    Width = 70
    Height = 13
    Caption = 'Inserisci i posti'
  end
  object Label2: TLabel
    Left = 264
    Top = 9
    Width = 94
    Height = 13
    Caption = 'POSTI DISPONIBILI'
  end
  object edtRequiredSeats: TEdit
    Left = 24
    Top = 40
    Width = 193
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 24
    Top = 83
    Width = 193
    Height = 62
    Caption = 'CERCA'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 264
    Top = 40
    Width = 507
    Height = 281
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 2
  end
end
