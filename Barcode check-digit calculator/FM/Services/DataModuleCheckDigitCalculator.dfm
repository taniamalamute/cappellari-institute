object DataModuleCheckDigit: TDataModuleCheckDigit
  OldCreateOrder = False
  Height = 150
  Width = 356
  object ConnectionCD: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=94483ycWSmrC22893etWS995!5k88X;Pers' +
      'ist Security Info=True;User ID=CorsoDelphiSQL;Initial Catalog=Ad' +
      'ventureWorks;Data Source=corso-cappellari.database.windows.net'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 40
  end
  object QueryFunctionCheckDigit: TADOQuery
    Connection = ConnectionCD
    Parameters = <>
    SQL.Strings = (
      'SELECT dbo.FM_CalculateCheckDigit(')
    Left = 184
    Top = 40
  end
end
