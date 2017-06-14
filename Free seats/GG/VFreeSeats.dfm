object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Ricerca Posti Adiacenti'
  ClientHeight = 209
  ClientWidth = 591
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
  object DBGrid1: TDBGrid
    Left = 309
    Top = 35
    Width = 252
    Height = 120
    DataSource = DataModule5.DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Row Number'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'From'
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'To'
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Total Free Near Seats'
        Width = 80
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 35
    Width = 265
    Height = 120
    TabOrder = 1
    object Label1: TLabel
      Left = 29
      Top = 47
      Width = 67
      Height = 13
      Caption = 'Numero Posti:'
    end
    object BtnFindSeats: TButton
      Left = 155
      Top = 44
      Width = 75
      Height = 25
      Caption = 'Cerca'
      TabOrder = 0
      OnClick = BtnFindSeatsClick
    end
    object UpDown1: TUpDown
      Left = 126
      Top = 44
      Width = 16
      Height = 21
      Associate = EdtSeatsNumber
      Min = 1
      Position = 1
      TabOrder = 1
    end
    object EdtSeatsNumber: TEdit
      Left = 101
      Top = 44
      Width = 25
      Height = 21
      NumbersOnly = True
      TabOrder = 2
      Text = '1'
    end
  end
end
