object DataModule5: TDataModule5
  OldCreateOrder = False
  Height = 182
  Width = 505
  object ADOConnectionAdventureWork: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=94483ycWSmrC22893etWS995!5k88X;Pers' +
      'ist Security Info=True;User ID=CorsoDelphiSQL;Initial Catalog=Ad' +
      'ventureWorks;Data Source=corso-cappellari.database.windows.net;U' +
      'se Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;' +
      'Workstation ID=GILDA-PC;Use Encryption for Data=False;Tag with c' +
      'olumn collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 40
  end
  object ADOQryCheckDigit: TADOQuery
    Connection = ADOConnectionAdventureWork
    Parameters = <>
    Left = 184
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ADOQryCheckDigit
    Left = 180
    Top = 96
  end
end
