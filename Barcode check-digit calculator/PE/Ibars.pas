unit Ibars;

interface
//uses vcl.controls;
uses system.classes;
type
  Ibarcode= interface
   ['{5E081BF2-1E2B-4F65-953F-BCE48C05EC3C}']
  function Getbarcode:string;
  procedure Setcheckdigit(Avalue: integer);
  procedure DisplayMessage(AValue: string);
  end;

implementation

end.
