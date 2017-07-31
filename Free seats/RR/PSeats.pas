unit PSeats;

interface

uses
System.SysUtils, ISeats, MSeats, IDataSeats;

type

TSeatsPresenter = class

protected
  FFreeSeats : IFreeSeats;
  FData : IData;
public
  constructor Create(AFreeSeats: IFreeSeats);
  function SetResult():String;

end;

implementation

constructor TSeatsPresenter.Create(AFreeSeats: IFreeSeats);
begin
  FFreeSeats := AFreeSeats;
end;

function TSeatsPresenter.SetResult():String;
begin
  Result := FData.GetFreeSeats();
end;

end.
