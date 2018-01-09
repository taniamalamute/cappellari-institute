object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 220
  Width = 353
  object ADOConnection1: TADOConnection
    Provider = 'SQLOLEDB.1'
    Left = 48
    Top = 24
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 152
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 160
    Top = 96
  end
end
