unit InterfaceWebConfigEditApplicationName;

interface

  type IWebConfigEditApplicationName = interface ['{1AA00270-12DE-4D3D-BC90-E48757AB425F}']
      function GetFilePath: string;
      function GetNewApplicationName: string;
      procedure SetApplicationName(AName: string);
      procedure DisplayMessage(AMessage: string);
  end;

implementation

end.
