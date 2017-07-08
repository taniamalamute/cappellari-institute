unit InterfaceWebConfigEditConnectionStrings;

interface

uses TypesArrays;

  type IWebConfigEditConnectionStrings = interface ['{7545E53D-EBF2-4287-8000-E679FF2BD215}']
      function GetFilePath: string;
      function GetConnection: string;
      function GetNewDataSource: string;
      function GetNewDatabase: string;
      function GetNewUserID: string;
      function GetNewPassword: string;
      procedure SetConnections(AConnections: TArrayOfString);
      procedure SetDataSource(ADataSource: string);
      procedure SetDatabase(ADatabase: string);
      procedure SetUserID(AUserID: string);
      procedure SetPassword(APassword: string);
      procedure DisplayMessage(AMessage: string);
  end;
implementation

end.
