unit ICheck;

interface

type
ICheckView = interface
  ['{DD4052A3-720B-41B3-9866-45FCDCD79FBE}']

//input
function GetLength: Integer;
function GetCode: String;
function GetCountChar(AText : String; ALength: Integer): Boolean;

//output
procedure SetLength(AValue : Integer);
procedure SetResult(const ACode, ADigit : String);

end;

implementation

end.
