unit PresenterWebConfigEditConnectionStrings;

interface

uses InterfaceWebConfigEditConnectionStrings, ModelWebConfig, TypesArrays;

type TPresenterWebConfigEditConnectionStrings = class
  private
    FViewWebConfigEditConnectionStrings: IWebConfigEditConnectionStrings;
    FModelWebConfig: TModelWebConfig;
  public
    procedure SetFields;
    procedure EditConnectionStrings;
  published
    constructor Create(AViewWebConfigEditConnectionStrings: IWebConfigEditConnectionStrings);
end;

implementation

{ TPresenterWebConfigEditConnectionStrings }

constructor TPresenterWebConfigEditConnectionStrings.Create(
  AViewWebConfigEditConnectionStrings: IWebConfigEditConnectionStrings);
begin
    inherited Create;
    FViewWebConfigEditConnectionStrings:=AViewWebConfigEditConnectionStrings;
    FModelWebConfig:=TModelWebConfig.Create(FViewWebConfigEditConnectionStrings.GetFilePath);
    FViewWebConfigEditConnectionStrings.SetConnections(FModelWebConfig.GetSetOfAttributes('connectionStrings', 'name'));
end;




procedure TPresenterWebConfigEditConnectionStrings.EditConnectionStrings;
var LFilePath, LDataSource, LDatabase, LUserID, LPassword: string;
begin
    LDataSource:=FViewWebConfigEditConnectionStrings.GetNewDataSource;
    LDatabase:=FViewWebConfigEditConnectionStrings.GetNewDatabase;
    LUserID:=FViewWebConfigEditConnectionStrings.GetNewUserID;
    LPassword:=FViewWebConfigEditConnectionStrings.GetNewPassword;

    if (LDataSource = '') or (LDatabase = '') or (LUserID = '') or (LPassword = '') then
        FViewWebConfigEditConnectionStrings.DisplayMessage('Tutti i campi devono essere compilati')
    else begin
        FModelWebConfig.SetValueFromAttributeValue('connectionStrings', FViewWebConfigEditConnectionStrings.GetConnection, 'connectionString', 'data source', LDataSource);
        FModelWebConfig.SetValueFromAttributeValue('connectionStrings', FViewWebConfigEditConnectionStrings.GetConnection, 'connectionString', 'initial catalog', LDatabase);
        FModelWebConfig.SetValueFromAttributeValue('connectionStrings', FViewWebConfigEditConnectionStrings.GetConnection, 'connectionString', 'user id', LUserID);
        FModelWebConfig.SetValueFromAttributeValue('connectionStrings', FViewWebConfigEditConnectionStrings.GetConnection, 'connectionString', 'password', LPassword);
        FModelWebConfig.AddComment('connectionStrings', FViewWebConfigEditConnectionStrings.GetConnection, 'Stringa di connessione al database "'+FViewWebConfigEditConnectionStrings.GetConnection+'"');
        FViewWebConfigEditConnectionStrings.DisplayMessage('La stringa di connessione è stata aggiornata');
    end;
end;



procedure TPresenterWebConfigEditConnectionStrings.SetFields;
var LConnections: TArrayOfString;
begin
    FViewWebConfigEditConnectionStrings.SetDataSource
      (FModelWebConfig.GetValueFromAttributeValue
        ('connectionStrings', FViewWebConfigEditConnectionStrings.GetConnection, 'connectionString', 'data source'));

    FViewWebConfigEditConnectionStrings.SetDatabase
      (FModelWebConfig.GetValueFromAttributeValue
        ('connectionStrings', FViewWebConfigEditConnectionStrings.GetConnection, 'connectionString', 'initial catalog'));

    FViewWebConfigEditConnectionStrings.SetUserID
      (FModelWebConfig.GetValueFromAttributeValue
        ('connectionStrings', FViewWebConfigEditConnectionStrings.GetConnection, 'connectionString', 'user id'));

    FViewWebConfigEditConnectionStrings.SetPassword
      (FModelWebConfig.GetValueFromAttributeValue
        ('connectionStrings', FViewWebConfigEditConnectionStrings.GetConnection, 'connectionString', 'password'));
end;

end.
