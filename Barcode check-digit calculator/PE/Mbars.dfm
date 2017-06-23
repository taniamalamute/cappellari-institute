object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 273
  Width = 382
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=94483ycWSmrC22893etWS995!5k88X;Pers' +
      'ist Security Info=True;User ID=CorsoDelphiSQL;Initial Catalog=Fr' +
      'eeSeatsDB;Data Source=corso-cappellari.database.windows.net;Use ' +
      'Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Wor' +
      'kstation ID=I5-PC;Use Encryption for Data=False;Tag with column ' +
      'collation when possible=False'
    Provider = 'SQLOLEDB.1'
    Left = 96
    Top = 48
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DataSource1
    Parameters = <>
    SQL.Strings = (
      'DECLARE @CheckString VARCHAR(8000) = '#39'551271470146'#39';'
      'DECLARE @chk_digit    int;'
      ''
      'WITH Tally (n) AS'
      '('
      '    SELECT TOP (LEN(@CheckString))'
      '        ROW_NUMBER() OVER (ORDER BY (SELECT NULL))'
      '    -- 80 row tally table'
      '    FROM (VALUES (0),(0),(0),(0),(0),(0),(0),(0)) a(n)'
      
        '    CROSS JOIN (VALUES (0),(0),(0),(0),(0),(0),(0),(0),(0),(0)) ' +
        'b(n)'
      ')'
      
        '    SELECT    @chk_digit = SUM(CONVERT(int, SUBSTRING(@CheckStri' +
        'ng, LEN(@CheckString) - n + 1, 1)) * CASE WHEN n % 2 = 1 THEN 3 ' +
        'ELSE 1 END)'
      '    FROM   Tally'
      '    WHERE    n    <= LEN(@CheckString)'
      '    SELECT    @chk_digit = (10 - (@chk_digit % 10)) % 10   '
      '   SELECT    @chk_digit as result')
    Left = 272
    Top = 64
    object ADOQuery1result: TIntegerField
      FieldName = 'result'
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    Left = 184
    Top = 56
  end
end
