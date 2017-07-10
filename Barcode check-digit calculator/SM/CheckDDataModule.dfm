object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 150
  Width = 325
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=94483ycWSmrC22893etWS995!5k88X;Pers' +
      'ist Security Info=True;User ID=CorsoDelphiSQL;Initial Catalog=Ad' +
      'ventureWorks;Data Source=corso-cappellari.database.windows.net'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 48
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Sales')
    Left = 128
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 216
    Top = 48
  end
end
