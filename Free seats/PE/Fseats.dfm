object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 630
  ClientWidth = 1084
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
    Left = 16
    Top = 8
    Width = 166
    Height = 13
    Caption = 'Numero posti consecutivi richiesto:'
  end
  object Label2: TLabel
    Left = 16
    Top = 69
    Width = 223
    Height = 13
    Caption = 'Posti non disponibili contrassegnati da valore X'
  end
  object Label3: TLabel
    Left = 16
    Top = 360
    Width = 230
    Height = 13
    Caption = 'Posti Disponibili elencati per fila e numero posto.'
  end
  object RichiestaPosti: TEdit
    Left = 16
    Top = 27
    Width = 166
    Height = 21
    Alignment = taCenter
    TabOrder = 0
    OnKeyPress = RichiestaPostiKeyPress
  end
  object MemoDisplay: TMemo
    Left = 16
    Top = 381
    Width = 1060
    Height = 241
    Lines.Strings = (
      '')
    ReadOnly = True
    TabOrder = 1
  end
  object CheckDispButton: TButton
    Left = 227
    Top = 21
    Width = 166
    Height = 34
    Caption = 'Controllo Disponibilita'
    TabOrder = 2
    OnClick = CheckDispButtonClick
  end
  object GrigliaTeatro: TDBGrid
    Left = 16
    Top = 88
    Width = 1060
    Height = 263
    DataSource = DataModule1.DataSource2
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'rownumber'
        Title.Caption = 'Fila'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr1'
        Title.Caption = '1'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr2'
        Title.Caption = '2'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr3'
        Title.Caption = '3'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr4'
        Title.Caption = '4'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr5'
        Title.Caption = '5'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr6'
        Title.Caption = '6'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr7'
        Title.Caption = '7'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr8'
        Title.Caption = '8'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr9'
        Title.Caption = '9'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr10'
        Title.Caption = '10'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr11'
        Title.Caption = '11'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr12'
        Title.Caption = '12'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr13'
        Title.Caption = '13'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr14'
        Title.Caption = '14'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr15'
        Title.Caption = '15'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr16'
        Title.Caption = '16'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr17'
        Title.Caption = '17'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr18'
        Title.Caption = '18'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr19'
        Title.Caption = '19'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr20'
        Title.Caption = '20'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr21'
        Title.Caption = '21'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr22'
        Title.Caption = '22'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr23'
        Title.Caption = '23'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr24'
        Title.Caption = '24'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr25'
        Title.Caption = '25'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr26'
        Title.Caption = '26'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr27'
        Title.Caption = '27'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr28'
        Title.Caption = '28'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr29'
        Title.Caption = '29'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr30'
        Title.Caption = '30'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr31'
        Title.Caption = '31'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr32'
        Title.Caption = '32'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr33'
        Title.Caption = '33'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr34'
        Title.Caption = '34'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr35'
        Title.Caption = '35'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr36'
        Title.Caption = '36'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr37'
        Title.Caption = '37'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr38'
        Title.Caption = '38'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr39'
        Title.Caption = '39'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'attr40'
        Title.Caption = '40'
        Width = 20
        Visible = True
      end>
  end
end