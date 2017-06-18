object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 356
  Width = 363
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=94483ycWSmrC22893etWS995!5k88X;Pers' +
      'ist Security Info=True;User ID=CorsoDelphiSQL;Initial Catalog=Fr' +
      'eeSeatsDB;Data Source=corso-cappellari.database.windows.net'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 40
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      ''
      'with free as '
      
        '(select rownumber, seatnumber, taken, row_number() over (partiti' +
        'on by rownumber order by seatnumber) as numeraliberi'
      'from RoomsAndSeats'
      'where taken = 0'
      '),'
      'adiacenti as'
      
        '(select rownumber, seatnumber, taken, count(*) over (partition b' +
        'y rownumber, seatnumber-numeraliberi) as consecutivi'
      'from free'
      '),'
      'estratti as'
      '(select * from adiacenti where consecutivi>=1)'
      'SELECT rownumber,'
      '  count(CASE WHEN seatnumber = 1 THEN taken END) AS attr1,'
      '  count(CASE WHEN seatnumber = 2 THEN taken END) AS attr2,'
      '  count(CASE WHEN seatnumber = 3 THEN taken END) AS attr3,'
      '  count(CASE WHEN seatnumber = 4 THEN taken END) AS attr4,'
      '  count(CASE WHEN seatnumber = 5 THEN taken END) AS attr5,'
      '  count(CASE WHEN seatnumber = 6 THEN taken END) AS attr6,'
      '  count(CASE WHEN seatnumber = 7 THEN taken END) AS attr7,'
      '  count(CASE WHEN seatnumber = 8 THEN taken END) AS attr8,'
      '  count(CASE WHEN seatnumber = 9 THEN taken END) AS attr9,'
      '  count(CASE WHEN seatnumber = 10 THEN taken END) AS attr10,'
      '  count(CASE WHEN seatnumber = 11 THEN taken END) AS attr11,'
      '  count(CASE WHEN seatnumber = 12 THEN taken END) AS attr12,'
      '  count(CASE WHEN seatnumber = 13 THEN taken END) AS attr13,'
      '  count(CASE WHEN seatnumber = 14 THEN taken END) AS attr14,'
      '  count(CASE WHEN seatnumber = 15 THEN taken END) AS attr15,'
      '  count(CASE WHEN seatnumber = 16 THEN taken END) AS attr16,'
      '  count(CASE WHEN seatnumber = 17 THEN taken END) AS attr17,'
      '  count(CASE WHEN seatnumber = 18 THEN taken END) AS attr18,'
      '  count(CASE WHEN seatnumber = 19 THEN taken END) AS attr19,'
      '  count(CASE WHEN seatnumber = 20 THEN taken END) AS attr20,'
      '  count(CASE WHEN seatnumber = 21 THEN taken END) AS attr21,'
      '  count(CASE WHEN seatnumber = 22 THEN taken END) AS attr22,'
      '  count(CASE WHEN seatnumber = 23 THEN taken END) AS attr23,'
      '  count(CASE WHEN seatnumber = 24 THEN taken END) AS attr24,'
      '  count(CASE WHEN seatnumber = 25 THEN taken END) AS attr25,'
      '  count(CASE WHEN seatnumber = 26 THEN taken END) AS attr26,'
      '  count(CASE WHEN seatnumber = 27 THEN taken END) AS attr27,'
      '  count(CASE WHEN seatnumber = 28 THEN taken END) AS attr28,'
      '  count(CASE WHEN seatnumber = 29 THEN taken END) AS attr29,'
      '  count(CASE WHEN seatnumber = 30 THEN taken END) AS attr30,'
      '  count(CASE WHEN seatnumber = 31 THEN taken END) AS attr31,'
      '  count(CASE WHEN seatnumber = 32 THEN taken END) AS attr32,'
      '  count(CASE WHEN seatnumber = 33 THEN taken END) AS attr33,'
      '  count(CASE WHEN seatnumber = 34 THEN taken END) AS attr34,'
      '  count(CASE WHEN seatnumber = 35 THEN taken END) AS attr35,'
      '  count(CASE WHEN seatnumber = 36 THEN taken END) AS attr36,'
      '  count(CASE WHEN seatnumber = 37 THEN taken END) AS attr37,'
      '  count(CASE WHEN seatnumber = 38 THEN taken END) AS attr38,'
      '  count(CASE WHEN seatnumber = 39 THEN taken END) AS attr39,'
      '  count(CASE WHEN seatnumber = 40 THEN taken END) AS attr40'
      '  FROM estratti'
      'GROUP BY rownumber '
      '')
    Left = 176
    Top = 40
    object ADOQuery1rownumber: TStringField
      FieldName = 'rownumber'
      FixedChar = True
      Size = 1
    end
    object ADOQuery1attr1: TIntegerField
      FieldName = 'attr1'
      ReadOnly = True
      OnGetText = ADOQuery1attr1GetText
    end
    object ADOQuery1attr2: TIntegerField
      FieldName = 'attr2'
      ReadOnly = True
      OnGetText = ADOQuery1attr2GetText
    end
    object ADOQuery1attr3: TIntegerField
      FieldName = 'attr3'
      ReadOnly = True
      OnGetText = ADOQuery1attr3GetText
    end
    object ADOQuery1attr4: TIntegerField
      FieldName = 'attr4'
      ReadOnly = True
      OnGetText = ADOQuery1attr4GetText
    end
    object ADOQuery1attr5: TIntegerField
      FieldName = 'attr5'
      ReadOnly = True
      OnGetText = ADOQuery1attr5GetText
    end
    object ADOQuery1attr6: TIntegerField
      FieldName = 'attr6'
      ReadOnly = True
      OnGetText = ADOQuery1attr6GetText
    end
    object ADOQuery1attr7: TIntegerField
      FieldName = 'attr7'
      ReadOnly = True
      OnGetText = ADOQuery1attr7GetText
    end
    object ADOQuery1attr8: TIntegerField
      FieldName = 'attr8'
      ReadOnly = True
      OnGetText = ADOQuery1attr8GetText
    end
    object ADOQuery1attr9: TIntegerField
      FieldName = 'attr9'
      ReadOnly = True
      OnGetText = ADOQuery1attr9GetText
    end
    object ADOQuery1attr10: TIntegerField
      FieldName = 'attr10'
      ReadOnly = True
      OnGetText = ADOQuery1attr10GetText
    end
    object ADOQuery1attr11: TIntegerField
      FieldName = 'attr11'
      ReadOnly = True
      OnGetText = ADOQuery1attr11GetText
    end
    object ADOQuery1attr12: TIntegerField
      FieldName = 'attr12'
      ReadOnly = True
      OnGetText = ADOQuery1attr12GetText
    end
    object ADOQuery1attr13: TIntegerField
      FieldName = 'attr13'
      ReadOnly = True
      OnGetText = ADOQuery1attr13GetText
    end
    object ADOQuery1attr14: TIntegerField
      FieldName = 'attr14'
      ReadOnly = True
      OnGetText = ADOQuery1attr14GetText
    end
    object ADOQuery1attr15: TIntegerField
      FieldName = 'attr15'
      ReadOnly = True
      OnGetText = ADOQuery1attr15GetText
    end
    object ADOQuery1attr16: TIntegerField
      FieldName = 'attr16'
      ReadOnly = True
      OnGetText = ADOQuery1attr16GetText
    end
    object ADOQuery1attr17: TIntegerField
      FieldName = 'attr17'
      ReadOnly = True
      OnGetText = ADOQuery1attr17GetText
    end
    object ADOQuery1attr18: TIntegerField
      FieldName = 'attr18'
      ReadOnly = True
      OnGetText = ADOQuery1attr18GetText
    end
    object ADOQuery1attr19: TIntegerField
      FieldName = 'attr19'
      ReadOnly = True
      OnGetText = ADOQuery1attr19GetText
    end
    object ADOQuery1attr20: TIntegerField
      FieldName = 'attr20'
      ReadOnly = True
      OnGetText = ADOQuery1attr20GetText
    end
    object ADOQuery1attr21: TIntegerField
      FieldName = 'attr21'
      ReadOnly = True
      OnGetText = ADOQuery1attr21GetText
    end
    object ADOQuery1attr22: TIntegerField
      FieldName = 'attr22'
      ReadOnly = True
      OnGetText = ADOQuery1attr22GetText
    end
    object ADOQuery1attr23: TIntegerField
      FieldName = 'attr23'
      ReadOnly = True
      OnGetText = ADOQuery1attr23GetText
    end
    object ADOQuery1attr24: TIntegerField
      FieldName = 'attr24'
      ReadOnly = True
      OnGetText = ADOQuery1attr24GetText
    end
    object ADOQuery1attr25: TIntegerField
      FieldName = 'attr25'
      ReadOnly = True
      OnGetText = ADOQuery1attr25GetText
    end
    object ADOQuery1attr26: TIntegerField
      FieldName = 'attr26'
      ReadOnly = True
      OnGetText = ADOQuery1attr26GetText
    end
    object ADOQuery1attr27: TIntegerField
      FieldName = 'attr27'
      ReadOnly = True
      OnGetText = ADOQuery1attr27GetText
    end
    object ADOQuery1attr28: TIntegerField
      FieldName = 'attr28'
      ReadOnly = True
      OnGetText = ADOQuery1attr28GetText
    end
    object ADOQuery1attr29: TIntegerField
      FieldName = 'attr29'
      ReadOnly = True
      OnGetText = ADOQuery1attr29GetText
    end
    object ADOQuery1attr30: TIntegerField
      FieldName = 'attr30'
      ReadOnly = True
      OnGetText = ADOQuery1attr30GetText
    end
    object ADOQuery1attr31: TIntegerField
      FieldName = 'attr31'
      ReadOnly = True
      OnGetText = ADOQuery1attr31GetText
    end
    object ADOQuery1attr32: TIntegerField
      FieldName = 'attr32'
      ReadOnly = True
      OnGetText = ADOQuery1attr32GetText
    end
    object ADOQuery1attr33: TIntegerField
      FieldName = 'attr33'
      ReadOnly = True
      OnGetText = ADOQuery1attr33GetText
    end
    object ADOQuery1attr34: TIntegerField
      FieldName = 'attr34'
      ReadOnly = True
      OnGetText = ADOQuery1attr34GetText
    end
    object ADOQuery1attr35: TIntegerField
      FieldName = 'attr35'
      ReadOnly = True
      OnGetText = ADOQuery1attr35GetText
    end
    object ADOQuery1attr36: TIntegerField
      FieldName = 'attr36'
      ReadOnly = True
      OnGetText = ADOQuery1attr36GetText
    end
    object ADOQuery1attr37: TIntegerField
      FieldName = 'attr37'
      ReadOnly = True
      OnGetText = ADOQuery1attr37GetText
    end
    object ADOQuery1attr38: TIntegerField
      FieldName = 'attr38'
      ReadOnly = True
      OnGetText = ADOQuery1attr38GetText
    end
    object ADOQuery1attr39: TIntegerField
      FieldName = 'attr39'
      ReadOnly = True
      OnGetText = ADOQuery1attr39GetText
    end
    object ADOQuery1attr40: TIntegerField
      FieldName = 'attr40'
      ReadOnly = True
      OnGetText = ADOQuery1attr40GetText
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 104
    Top = 40
  end
end
