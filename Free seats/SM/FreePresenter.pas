unit FreePresenter;

interface

uses viewinterf,Presenterinterf;

type

  TPresenter = class abstract(TInterfacedObject,IPresenterinterf)
  protected
    FView: IviewInterf;
  public
  constructor Create(AView: IviewInterf); overload;

  var posti, numfila : integer;
  var query, fila, poltrona : string;

  procedure getquery;

  end;

implementation



uses
  System.Classes
  ,System.SysUtils
  ,Data.Win.ADODB
  ,connection;
{ TPresenterWordCalculator }

constructor TPresenter.Create(AView: IViewinterf);
begin
  FView := AView;
end;


procedure GetQuery;

 begin
    TPresenter.posti := strToInt( FView.testo);
  if (TPresenter.posti<=0) or (TPresenter.posti>= 41) then
begin
  Fview.Msg;
  TPresenter.posti:=0;

end

else
begin
  Datamodule2.ADOQuery1.close;
  Datamodule2.ADOQuery1.SQL.Clear;

  TPresenter.query:= 'WITH postiliberi AS (SELECT *, ROW_NUMBER() OVER (PARTITION BY RowNumber ORDER BY SeatNumber ) AS grp FROM [dbo].[RoomsAndSeats] WHERE taken = 0),counted AS';
  TPresenter.query := TPresenter.query + ' (SELECT *,COUNT(*) OVER ( PARTITION BY Rownumber, SeatNumber - grp ) AS cnt FROM postiliberi) SELECT RowNumber, SeatNumber FROM counted WHERE cnt >=' + intToStr(TPresenter.posti) + ' ORDER BY Rownumber, SeatNumber;';
  Datamodule2.ADOQuery1.SQL.Add(TPresenter.query);

  Datamodule2.ADOQuery1.Open;


  datamodule2.ADOQuery1.First;
 end;

  end;

end.
