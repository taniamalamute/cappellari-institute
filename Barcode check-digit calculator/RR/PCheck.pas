unit PCheck;

interface

uses
  ICheck, StrUtils, SysUtils, MCheck;

type
  TCheckPresenter = class
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  protected
    VCheckView: ICheckView;
    VCheckDB: TModelCheck;
  public
    constructor Create(ACheckView: ICheckView);
    function InvertCode(ACode : String;  ALength : Integer): integer;

  end;

implementation

constructor TCheckPresenter.Create(ACheckView: ICheckView);
begin
  VCheckView := ACheckView;
  VCheckDB := TModelCheck.Create;
end;

function TCheckPresenter.InvertCode(ACode : String; ALength : Integer): integer;
var
s : string;
begin
  s := AnsiReverseString(ACode);
  Result := VCheckDB.CheckDigit(s,ALength);
end;

procedure TCheckPresenter.FormCreate(Sender: TObject);
begin
  VCheckDB := TModelCheck(Self);
end;

procedure TCheckPresenter.FormDestroy(Sender: TObject);
begin
  VCheckDB.Free;
end;

end.
