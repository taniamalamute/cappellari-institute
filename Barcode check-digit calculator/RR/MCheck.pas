unit MCheck;

interface

uses DataModuleCheck, ICheck, SysUtils;

type
  TModelCheck = class
  protected
    FDataModule : TDataModule1;
  public
    constructor Create;
    function CheckDigit(ACode : string; ALength : integer): Integer;
  end;

implementation



constructor TModelCheck.Create;
begin
  FDataModule := TDataModule1.Create(nil);
  inherited;
end;

function TModelCheck.CheckDigit(ACode: string; ALength : integer): Integer;
var digit : String;
begin
  DataModuleCheck.DataModule1.ADOQuery1.Close;
  DataModuleCheck.DataModule1.ADOQuery1.ClearFields;
  DataModuleCheck.DataModule1.ADOQuery1.SQL.Text := ' declare @length int = '+ IntToStr(ALength) +' ;'+#13#10+
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
  'end;';
  DataModuleCheck.DataModule1.ADOQuery1.Open;
  digit := DataModuleCheck.DataModule1.ADOQuery1.Parameters.ToString;
  Result := StrToInt(digit);
end;

end.
