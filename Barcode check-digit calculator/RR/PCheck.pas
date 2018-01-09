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
  		function InvertCode(const ACode: string;  ALength: Integer): String;
      function GetCountChar(AText : String;ALength: Integer):boolean;
  end;

implementation

constructor TCheckPresenter.Create(ACheckView: ICheckView);
begin
  FCheckView := ACheckView;
  FCheckDB := TModelCheck.Create;
end;

function TCheckPresenter.GetCountChar(AText : String;ALength: Integer):boolean;
begin
  if Length(AText) < ALength then
  begin
    Result := false;
  end
  else
  begin
    Result := true;
  end;
end;

function TCheckPresenter.InvertCode(const ACode : String; ALength : Integer): String;
var
LCode : string;
begin
  FCheckDB.Connection;
  LCode := AnsiReverseString(ACode);
  Result := FCheckDB.CheckDigit(LCode, ALength);
end;

destructor TCheckPresenter.Destroy;
begin
  FCheckDB.Free;
  inherited;
end;

end.
