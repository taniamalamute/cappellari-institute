object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 150
  Width = 306
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=94483ycWSmrC22893etWS995!5k88X;Pers' +
      'ist Security Info=True;User ID=CorsoDelphiSQL;Initial Catalog=Ad' +
      'ventureWorks;Data Source=corso-cappellari.database.windows.net;U' +
      'se Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;' +
      'Workstation ID=LAPTOP-U5G9M3AG;Use Encryption for Data=False;Tag' +
      ' with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 48
    Top = 24
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM Sales')
    Left = 128
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 208
    Top = 24
  end
end
