object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 182
  Width = 505
  object ADOConnection1: TADOConnection
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
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 168
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 164
    Top = 96
  end
end
