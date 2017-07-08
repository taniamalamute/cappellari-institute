unit InterfaceWebConfigEditOptions;

interface

uses TypesArrays;

  type IWebConfigEditOptions = interface ['{0A856C29-1A82-496F-BADF-49D29A774AA8}']
      function GetFilePath: string;
      function GetOptionName: string;
      function GetNewOptionValue: string;
      procedure SetOptions(AOptions: TArrayOfString);
      procedure SetValue(AValue: string);
      procedure DisplayMessage(AMessage: string);
  end;

implementation

end.
