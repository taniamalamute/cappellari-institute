object DataModule5: TDataModule5
  OldCreateOrder = False
  Height = 182
  Width = 505
  object ADOConnectionFreeSeats: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=94483ycWSmrC22893etWS995!5k88X;Pers' +
      'ist Security Info=True;User ID=CorsoDelphiSQL;Initial Catalog=Fr' +
      'eeSeatsDB;Data Source=corso-cappellari.database.windows.net'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 40
  end
  object ADOQryFreeSeats: TADOQuery
    Connection = ADOConnectionFreeSeats
    Parameters = <>
    Left = 184
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ADOQryFreeSeats
    Left = 164
    Top = 96
  end
  object ADOQrySeats: TADOQuery
    Connection = ADOConnectionFreeSeats
    Parameters = <>
    Left = 284
    Top = 32
  end
  object DataSource2: TDataSource
    DataSet = ADOQrySeats
    Left = 260
    Top = 97
  end
end
