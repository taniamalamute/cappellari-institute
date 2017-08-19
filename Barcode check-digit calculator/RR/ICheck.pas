unit ICheck;

interface

type
ICheckView = interface
  ['{DD4052A3-720B-41B3-9866-45FCDCD79FBE}']

//input
function GetLength: Integer;
function GetCode: String;

//output
procedure SetLength(AValue : Integer);
procedure SetResult(ACode, ADigit : String);

end;

implementation

end.
