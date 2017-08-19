unit PCheck;

interface

uses
  ICheck, StrUtils, SysUtils, MCheck;

type
  TCheckPresenter = class(TObject)
    // SG 20/08/2017: Essendo una classe e non una form, meglio utilizzare
    // il costruttore Create ed il distruttore Destroy
    //procedure FormCreate(Sender: TObject);
    //procedure FormDestroy(Sender: TObject);
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

function TCheckPresenter.InvertCode(const ACode: string; ALength: Integer): integer;
var
s : string;
begin
  s := AnsiReverseString(ACode);
  Result := FCheckDB.CheckDigit(s, ALength);
end;

destructor TCheckPresenter.Destroy;
begin
  FCheckDB.Free;
  inherited;
end;

//procedure TCheckPresenter.FormCreate(Sender: TObject);
//begin
//  FCheckDB := TModelCheck(Self);
//end;

//procedure TCheckPresenter.FormDestroy(Sender: TObject);
//begin
//  FCheckDB.Free;
//end;

end.
