unit MSeats;

interface
uses
DataModule, Classes;

type
TData = class
protected
  FData : TDataSeats;
public
  function GetFreeSeats():TStringList;
  procedure Connection;
  constructor Create;
  destructor Destroy; override;
end;

implementation

procedure TData.Connection;
begin
  DataSeats.ADOConnection1.LoginPrompt := false;
  DataSeats.ADOConnection1.ConnectionString := 'Provider=*****;Password=**********;Persist Security Info=True;User ID=*****;Initial Catalog=******;Data Source=******';
  DataSeats.ADOConnection1.Connected := true;
end;

constructor TData.Create;
begin
  inherited;
  FData := TDataSeats(nil);
end;

destructor TData.Destroy;
begin
  FData.Free;
  inherited;
end;

function TData.GetFreeSeats(): TStringList;
var
  i,a : Integer;
  list : TStringList;
  rec : String;
begin

  list := TStringList.Create;
  list.Insert(0,'Row - First - Last - FreeSeats');
  DataSeats.ADOQuery1.Close;
  DataSeats.ADOQuery1.SQL.Text := 'WITH C1 as ( ' +#13#10+
	'SELECT ROW_NUMBER() OVER(ORDER BY RowNumber) AS Row#, RowNumber, Taken FROM dbo.RoomsAndSeats ), '+#13#10+
  'C2 AS( ' +#13#10+
  'SELECT ROW_NUMBER() OVER(ORDER BY RowNumber) AS Taken#, * FROM C1	WHERE Taken = 1), '+#13#10+
  'C3 AS( ' +#13#10+
  'SELECT Row# - Taken# AS ''Islands'', * FROM C2 ) '+#13#10+
  'SELECT RowNumber AS ''Letter'', MIN(Row#) AS ''First'', MAX(Row#) AS ''Last'', COUNT(Islands) AS ''FreeSeats'' FROM C3 GROUP BY RowNumber, Islands';
  DataSeats.ADOQuery1.Open;
  i := DataSeats.ADOQuery1.RecordCount;
  DataSeats.ADOQuery1.First;
  for a := 0 to i-1 do
  begin
    rec := DataSeats.ADOQuery1.FieldByName('Letter').AsString+'  -  '+DataSeats.ADOQuery1.FieldByName('First').AsString+'  -  '+DataSeats.ADOQuery1.FieldByName('Last').AsString+'  -  '+DataSeats.ADOQuery1.FieldByName('FreeSeats').AsString;
    DataSeats.ADOQuery1.Next;
    list.Insert(a+1,rec);
  end;
  Result:= list;

end;


end.
