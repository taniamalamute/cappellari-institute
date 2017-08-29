unit PSeats;

interface

uses
System.SysUtils, ISeats, MSeats, Classes;

type

TSeatsPresenter = class

protected
  FFreeSeats : IFreeSeats;
  FFData : TData;
public
  constructor Create(AFreeSeats: IFreeSeats);
  function SetResult():TStringList;
  destructor Destroy; override;

end;

implementation

constructor TSeatsPresenter.Create(AFreeSeats: IFreeSeats);
begin
  FFreeSeats := AFreeSeats;
  FFData := TData.Create;
end;

function TSeatsPresenter.SetResult():TStringList;
begin
  FFData.Connection;
  Result := FFData.GetFreeSeats();
end;

destructor TSeatsPresenter.Destroy;
begin
  FFData.Free;
  inherited;
end;

end.
