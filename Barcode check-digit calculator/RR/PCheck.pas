unit PCheck;

interface

uses
  ICheck, StrUtils, SysUtils, MCheck;

type
  TCheckPresenter = class

  protected
    FCheckView: ICheckView;
    FCheckDB: TModelCheck;
  public
      constructor Create(ACheckView: ICheckView);
      destructor Destroy; override;
  		function InvertCode(const ACode: string;  ALength: Integer): Integer;
  end;

implementation

constructor TCheckPresenter.Create(ACheckView: ICheckView);
begin
  FCheckView := ACheckView;
  FCheckDB := TModelCheck.Create;
end;

function TCheckPresenter.InvertCode(const ACode : String; ALength : Integer): integer;
var
s : string;
begin
  FCheckDB.Connection;
  s := AnsiReverseString(ACode);
  Result := FCheckDB.CheckDigit(s, ALength);
end;

destructor TCheckPresenter.Destroy;
begin
  FCheckDB.Free;
  inherited;
end;

end.
