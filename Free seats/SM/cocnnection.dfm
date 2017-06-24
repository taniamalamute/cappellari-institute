object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 237
  Width = 305
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=94483ycWSmrC22893etWS995!5k88X;Pers' +
      'ist Security Info=True;User ID=CorsoDelphiSQL;Initial Catalog=Fr' +
      'eeSeatsDB;Data Source=corso-cappellari.database.windows.net'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 48
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  *  from RoomsAndSeats')
    Left = 128
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 208
    Top = 48
  end
end
