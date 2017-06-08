{*****************************************************************************}
{                                                                             }
{                         Ricerca Posti Adiacenti                             }
{                                                                             }
{      Gianmaria G.                                                           }
{                                                                             }
{      Corso Programmazione ERP @ Istituto Cappellari                         }
{                                                                             }
{      8/6/2017                                                               }
{                                                                             }
{*****************************************************************************}

unit Model;

interface

uses
  System.Classes, IModel, IFindSeats, DataModule;

type
  TModel = class (TInterfacedObject, IModelDB)
  public
    constructor create (AFindSeats: IFindSeatsP);
    procedure FindSeatsNumber (ASeats : string);
  private
    function QueryFindSeats (ARoom, ASeatsNumber : string) : string;
end;

implementation

var
   FFindSeats : IFindSeatsP;

{ TModel }

constructor TModel.create(AFindSeats: IFindSeatsP);
begin
   FFindSeats := AFindSeats;
end;

// setto la query e la avvio
procedure TModel.FindSeatsNumber(ASeats: string) ;
begin
  DataModule5.CloseQry;
  DataModule5.ClearQry;
  // imposto la query passandogli la funzione di composizione query
  // ''' in attesa che il db cresca imposto la roomID a 1 '''
  DataModule5.SetQry(QueryFindSeats('1',ASeats));
  DataModule5.OpenQry;
end;


function TModel.QueryFindSeats(ARoom, ASeatsNumber: string) : string;
begin
  result :=
           '  DECLARE @SeatsRequest as int; '
   + #13#10'  DECLARE @Room as int; '
   + #13#10'  SET     @SeatsRequest = ' + ASeatsNumber + '; '
   + #13#10'  SET     @Room = ' + ARoom + '; '

   + #13#10'  WITH     FreeSeatsNumered AS '
   + #13#10'  ('
   + #13#10'  SELECT   SeatNumber, RowNumber, ROW_NUMBER() OVER (PARTITION BY SeatNumber ORDER BY RowNumber) AS ColNum '
   + #13#10'  FROM     dbo.RoomsAndSeats '
   + #13#10'  WHERE    taken = 0 and '
   + #13#10'           RoomID = @Room '
   + #13#10'  ),'
   + #13#10'  NumeredContinuous AS '
   + #13#10'  ('
   + #13#10'  SELECT  SeatNumber, RowNumber, COUNT(*) OVER (PARTITION BY SeatNumber, char(ascii(RowNumber) - ColNum)) AS SFree '
   + #13#10'  FROM    FreeSeatsNumered '
   + #13#10'  )'
   + #13#10'  Select   SeatNumber AS Fila, Min(RowNumber) AS Inizio, Max(RowNumber) AS Fine '
   + #13#10'  FROM     NumeredContinuous '
   + #13#10'  WHERE    SFree >= @SeatsRequest '
   + #13#10'  Group BY SFree, SeatNumber; ' ;
end;
end.
