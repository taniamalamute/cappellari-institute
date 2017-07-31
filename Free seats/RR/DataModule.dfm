object DataSeats: TDataSeats
  OldCreateOrder = False
  Height = 180
  Width = 246
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=94483ycWSmrC22893etWS995!5k88X;Pers' +
      'ist Security Info=True;User ID=CorsoDelphiSQL;Initial Catalog=Fr' +
      'eeSeatsDB;Data Source=corso-cappellari.database.windows.net'
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 120
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 120
    Top = 88
  end
end
