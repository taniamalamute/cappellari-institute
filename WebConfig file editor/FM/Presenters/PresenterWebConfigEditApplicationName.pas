unit PresenterWebConfigEditApplicationName;

interface

uses InterfaceWebConfigEditApplicationName, ModelWebConfig;

type TPresenterWebConfigEditApplicationName = class
  private
    FViewWebConfigEditApplicationName: IWebConfigEditApplicationName;
    FModelWebConfig: TModelWebConfig;
  public
    procedure EditApplicationName;
  published
    constructor Create(AViewWebConfigEditApplicationName: IWebConfigEditApplicationName);
end;

implementation

{ TPresenterWebConfigEditApplicationName }

constructor TPresenterWebConfigEditApplicationName.Create(
  AViewWebConfigEditApplicationName: IWebConfigEditApplicationName);
begin
    inherited Create;
    FViewWebConfigEditApplicationName:=AViewWebConfigEditApplicationName;
    FModelWebConfig:=TModelWebConfig.Create(FViewWebConfigEditApplicationName.GetFilePath);
    FViewWebConfigEditApplicationName.SetApplicationName(FModelWebConfig.GetValueFromXML('profile', '', 'applicationName'));
end;




procedure TPresenterWebConfigEditApplicationName.EditApplicationName;
var LFilePath, LNewName: string;
begin
    LNewName:=FViewWebConfigEditApplicationName.GetNewApplicationName;
    if LNewName = '' then
        FViewWebConfigEditApplicationName.DisplayMessage('Il nome dell'+#39+'applicazione non può restare vuoto')
    else begin
        FModelWebConfig.SetValueInXML('membership','', 'applicationName', LNewName);
        FModelWebConfig.SetValueInXML('profile','', 'applicationName', LNewName);
        FModelWebConfig.SetValueInXML('roleManager','', 'applicationName', LNewName);
        FViewWebConfigEditApplicationName.DisplayMessage('Il nome dell'+#39+'applicazione è stato aggiornato');
    end;
end;

end.
