object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calcolo Check Digit        -- Barcode EAN-13 --'
  ClientHeight = 255
  ClientWidth = 403
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
  object GroupBox1: TGroupBox
    Left = 24
    Top = 35
    Width = 353
    Height = 198
    TabOrder = 0
    object Label1: TLabel
      Left = 33
      Top = 47
      Width = 71
      Height = 13
      Caption = 'Codice EAN-13'
    end
    object lblCheckDigit: TLabel
      Left = 33
      Top = 94
      Width = 53
      Height = 13
      Caption = 'Check Digit'
    end
    object ImgBarcode: TImage
      Left = 210
      Top = 88
      Width = 113
      Height = 80
      Center = True
    end
    object BtnCalcola: TButton
      Left = 230
      Top = 42
      Width = 75
      Height = 25
      Caption = 'Calcola'
      TabOrder = 0
      OnClick = BtnCalcolaClick
    end
    object EdtEAN13: TEdit
      Left = 119
      Top = 44
      Width = 83
      Height = 21
      MaxLength = 12
      NumbersOnly = True
      TabOrder = 1
    end
    object DBEdtCheckDigit: TDBEdit
      Left = 131
      Top = 91
      Width = 16
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clBtnFace
      DataField = 'Check Digit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      OnChange = DBEdtCheckDigitChange
    end
  end
end
