object DataSeats: TDataSeats
  OldCreateOrder = False
  Height = 180
  Width = 246
  object ADOConnection1: TADOConnection
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 120
    Top = 32
  end
end
