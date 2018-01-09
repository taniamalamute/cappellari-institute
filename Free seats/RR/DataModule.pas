unit DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataSeats = class(TDataModule)
  protected
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
  public
    function GetFreeSeats(): string;
  end;

// SG 07/08/2017
//var
//  DataSeats: TDataSeats;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TDataSeats.GetFreeSeats(): string;
begin
  {DataModule.FDataSeats.}ADOQuery1.Close;
  {DataModule.FDataSeats.}ADOQuery1.ClearFields;
  {DataModule.FDataSeats.}ADOQuery1.SQL.Text := 'WITH C1 as ( ' +
    'SELECT ROW_NUMBER() OVER(ORDER BY RowNumber) AS Row#, RowNumber, Taken FROM dbo.RoomsAndSeats ), '
    + 'C2 AS( ' +
    'SELECT ROW_NUMBER() OVER(ORDER BY RowNumber) AS Taken#, * FROM C1	WHERE Taken = 1), '
    + 'C3 AS( ' + 'SELECT Row# - Taken# AS ''Islands'', * FROM C2 ) ' +
    'SELECT RowNumber, MIN(Row#) AS ''First'', MAX(Row#) AS ''Last'', COUNT(Islands) AS ''N° FreeSeats'' FROM C3 GROUP BY RowNumber, Islands';
  {DataModule.FDataSeats.}ADOQuery1.Open;
  Result := {DataModule.FDataSeats.}DataSource1.Name;
end;


end.
