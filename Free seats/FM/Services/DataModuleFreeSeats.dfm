object DataModFreeSeats: TDataModFreeSeats
  OldCreateOrder = False
  Height = 150
  Width = 289
  object Connection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=94483ycWSmrC22893etWS995!5k88X;Pers' +
      'ist Security Info=True;User ID=CorsoDelphiSQL;Initial Catalog=Fr' +
      'eeSeatsDB;Data Source=corso-cappellari.database.windows.net'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 16
  end
  object QueryFreeSeats: TADOQuery
    Connection = Connection
    Parameters = <>
    SQL.Strings = (
      
        'DECLARE @cursorePosti AS CURSOR, @RoomID AS INT, @RowNumber AS C' +
        'HAR(1), @RowNumberPrecedente AS CHAR(1), @SeatNumber AS SMALLINT' +
        ', @Taken AS BIT, @TakenPrecedente AS BIT, @Conteggio AS SMALLINT' +
        ', @DaPosto AS SMALLINT, @APosto AS SMALLINT, @PostiTotali AS SMA' +
        'LLINT CREATE TABLE #PostiLiberi(RoomID int, RowNumber char(1), D' +
        'aPosto smallint, APosto smallint, NumeroPosti smallint) SET @Con' +
        'teggio = 0; SET @cursorePosti = CURSOR FOR SELECT RoomID, RowNum' +
        'ber, SeatNumber, Taken FROM dbo.RoomsAndSeats ORDER BY RowNumber' +
        ', SeatNumber OPEN @cursorePosti FETCH NEXT FROM @cursorePosti IN' +
        'TO @RoomID, @RowNumber, @SeatNumber, @Taken; SET'#9'@RowNumberPrece' +
        'dente = @RowNumber; SELECT @PostiTotali = COUNT(*) FROM dbo.Room' +
        'sAndSeats WHERE RowNumber = @RowNumber; WHILE @@FETCH_STATUS = 0' +
        ' BEGIN IF @RowNumberPrecedente = @RowNumber BEGIN IF @Taken = 0 ' +
        'BEGIN IF @Conteggio = 0 BEGIN SET @DaPosto = @SeatNumber; END SE' +
        'T @Conteggio = @Conteggio +1 IF @SeatNumber = @PostiTotali BEGIN' +
        ' INSERT INTO #PostiLiberi (RoomID, RowNumber, DaPosto, APosto, N' +
        'umeroPosti) VALUES (@RoomID, @RowNumber, @DaPosto, @SeatNumber, ' +
        '@Conteggio); SET @Conteggio = 0; END END ELSE BEGIN IF @TakenPre' +
        'cedente = 0 BEGIN SET @APosto = @SeatNumber -1 ; INSERT INTO #Po' +
        'stiLiberi (RoomID, RowNumber, DaPosto, APosto, NumeroPosti) VALU' +
        'ES (@RoomID, @RowNumber, @DaPosto, @APosto, @Conteggio); END SET' +
        ' @Conteggio = 0; END END ELSE BEGIN SET @Conteggio = 1; SET @DaP' +
        'osto = @SeatNumber; END SET @RowNumberPrecedente = @RowNumber; S' +
        'ET @TakenPrecedente = @Taken; FETCH NEXT FROM @cursorePosti INTO' +
        ' @RoomID, @RowNumber, @SeatNumber, @Taken; END SELECT RoomID, Ro' +
        'wNumber, DaPosto, APosto, NumeroPosti FROM #PostiLiberi WHERE Nu' +
        'meroPosti>=')
    Left = 128
    Top = 16
  end
end