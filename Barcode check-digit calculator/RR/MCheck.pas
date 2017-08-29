unit MCheck;

interface

uses DataModuleCheck, ICheck, SysUtils;

type
  TModelCheck = class
  protected
    FDataModule: TDataModule1;
  public
    constructor Create;
    procedure Connection;
    function CheckDigit(ACode : string; ALength : integer): Integer;
    destructor Destroy; override;
  end;

implementation

procedure TModelCheck.Connection;
begin
  DataModule1.ADOConnection1.LoginPrompt := false;
  DataModule1.ADOConnection1.ConnectionString := 'Provider=****;Password=******;Persist Security Info=True;User ID=*****;Initial Catalog=*******;Data Source=********;';
  DataModule1.ADOConnection1.Connected := true;
end;

constructor TModelCheck.Create;
begin
  inherited;
  FDataModule := TDataModule1(nil);
end;

destructor TModelCheck.Destroy;
begin
  FDataModule.Free;
  inherited;
end;

function TModelCheck.CheckDigit(ACode: string; ALength : integer): Integer;
begin
  DataModule1.ADOQuery1.Close;
  DataModule1.ADOQuery1.SQL.Text := ' declare @length int = '+ IntToStr(ALength) +' ;'+#13#10+
  'declare @code varchar(20);' +#13#10+
  'Set @code = '+ ACode+ ' ;' +#13#10+
  'declare @int int = 0; declare @total int = 0; declare @char int = 0; ' +#13#10+
  'while @int <= @length '+#13#10+
  'begin'+#13#10+
  'set @char = ( SELECT CAST(SUBSTRING(@code,@int,1)as int) )'+#13#10+
	'if @int%2<>0'+#13#10+
  'begin'+#13#10+
  '	Set @total = @total + ( @char * 3 );'+#13#10+
  'end'+#13#10+
	'else'+#13#10+
	'begin'+#13#10+
	'	Set @total = @total + @char;'+#13#10+
	'end;'+#13#10+
	'Set @int = @int + 1;'+#13#10+
  'end; '+#13#10+
  'if ( SELECT CAST( SUBSTRING( CAST( @total as varchar ),len( @total ),1 ) as int ) ) <> 0 '+#13#10+
  'begin'+#13#10+
  '	set @total = ( @total - ( SELECT CAST( SUBSTRING( CAST( @total as varchar ),len( @total ),1 ) as int ) ) + 10) - @total;'+#13#10+
  'end'+#13#10+
  'else'+#13#10+
  'begin'+#13#10+
  '	set @total = 0;'+#13#10+
  'end;'+#13#10+
  'SELECT @total AS CheckDigit;';
  DataModule1.ADOQuery1.Open;
  Result := DataModule1.ADOQuery1.FieldByName('CheckDigit').AsInteger;
end;

end.
