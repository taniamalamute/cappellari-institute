unit PSeats;

interface

uses
  System.SysUtils, ISeats, MSeats, IDataSeats, DataModule;

type

  TSeatsPresenter = class

  protected
    FFreeSeats: IFreeSeats;
    // SG 07/08/2017
    //FData: IData;
    FDataSeats: TDataSeats;
  public
    constructor Create(AFreeSeats: IFreeSeats);
    destructor Destroy; override;
    //function SetResult(): String;
    // SG 07/08/2017
    procedure FindSeats;
  end;

implementation

constructor TSeatsPresenter.Create(AFreeSeats: IFreeSeats);
begin
  FFreeSeats := AFreeSeats;
  FDataSeats := TDataSeats.Create(nil);
end;

destructor TSeatsPresenter.Destroy;
begin
  FDataSeats.Free;
  inherited;
end;

procedure TSeatsPresenter.FindSeats;
begin
  FFreeSeats.FillMemo(FDataSeats.GetFreeSeats());
end;

//function TSeatsPresenter.SetResult(): String;
//begin
//  Result := FData.GetFreeSeats();
//end;

end.
