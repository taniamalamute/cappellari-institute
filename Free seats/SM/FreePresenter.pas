unit FreePresenter;

interface

uses viewinterf, Presenterinterf;

type

  TPresenter = class abstract(TInterfacedObject, IPresenterinterf)
  protected
    FView: IViewInterf;
  public
    constructor Create(AView: IViewInterf); overload;
    var
      posti, numfila: integer;
    var
      query, fila, poltrona: string;
    procedure FindSeats;
  end;

implementation

uses
  System.Classes, System.SysUtils, Data.Win.ADODB, connection;

{ TPresenterWordCalculator }

constructor TPresenter.Create(AView: IViewInterf);
begin
  FView := AView;
end;

procedure TPresenter.FindSeats;
begin

  {TPresenter.} posti := FView.GetRequiredSeat;

  if ({TPresenter.} posti <= 0) or ({ TPresenter. } posti >= 41) then
  begin
    FView.Msg('Devi inserire un numero compreso tra 1 e 40');
    {TPresenter.} posti := 0;
  end
  else
  begin
    Datamodule2.ADOQuery1.close;
    Datamodule2.ADOQuery1.SQL.Clear;

    {TPresenter.}query := 'WITH postiliberi AS (SELECT *, ROW_NUMBER() OVER (PARTITION BY RowNumber ORDER BY SeatNumber ) AS grp FROM [dbo].[RoomsAndSeats] WHERE taken = 0),counted AS';
    {TPresenter.}query := {TPresenter.} query +
      ' (SELECT *,COUNT(*) OVER ( PARTITION BY Rownumber, SeatNumber - grp ) AS cnt FROM postiliberi) SELECT RowNumber, SeatNumber FROM counted WHERE cnt >='
      + intToStr({TPresenter.} posti) + ' ORDER BY Rownumber, SeatNumber;';

    Datamodule2.ADOQuery1.SQL.Add({TPresenter.} query);
    Datamodule2.ADOQuery1.Open;
    Datamodule2.ADOQuery1.First;

    while(not DataModule2.ADOQuery1.EOF) do
    begin
      {TPresenter.}fila := (DataModule2.ADOQuery1.FieldByName('rownumber').AsString);
      {TPresenter.}poltrona := (DataModule2.ADOQuery1.FieldByName('SeatNumber').AsString);
      //memo1.Lines.Add(TPresenter.fila + TPresenter.poltrona);
      FView.FillMemo({TPresenter.}fila + {TPresenter.}poltrona);
      DataModule2.ADOQuery1.Next;
    end;
  end;

end;

end.
