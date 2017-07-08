unit PresenterWebConfigEditOptions;

interface

uses ModelWebConfig, InterfaceWebConfigEditOptions;

type TPresenterWebConfigEditOptions = class
  private
    FViewWebConfigEditOptions: IWebConfigEditOptions;
    FModelWebConfig: TModelWebConfig;
  public
    procedure SetFields;
    procedure EditOption;
  published
    constructor Create(AViewWebConfigEditOptions: IWebConfigEditOptions);
end;

implementation

{ TPresenterWebConfigEditOptions }

constructor TPresenterWebConfigEditOptions.Create(
  AViewWebConfigEditOptions: IWebConfigEditOptions);
begin
    inherited Create;
    FViewWebConfigEditOptions:=AViewWebConfigEditOptions;
    FModelWebConfig:=TModelWebConfig.Create(FViewWebConfigEditOptions.GetFilePath);
    FViewWebConfigEditOptions.SetOptions(FModelWebConfig.GetSetOfAttributes('appSettings', 'key'));
end;



procedure TPresenterWebConfigEditOptions.EditOption;
var LNewOption: string;
begin
    LNewOption:=FViewWebConfigEditOptions.GetNewOptionValue;
    if LNewOption = '' then
        FViewWebConfigEditOptions.DisplayMessage('Il valore dell'+#39+'opzione non può restare vuoto')
    else begin
        FModelWebConfig.SetValueInXML('appSettings', FViewWebConfigEditOptions.GetOptionName, 'value', LNewOption);
        FViewWebConfigEditOptions.DisplayMessage('L'+#39+'opzione selezionata è stata aggiornata');
    end;

end;



procedure TPresenterWebConfigEditOptions.SetFields;
begin
    FViewWebConfigEditOptions.SetValue(
      FModelWebConfig.GetValueFromXML('appSettings', FViewWebConfigEditOptions.GetOptionName, 'value'));
end;

end.
