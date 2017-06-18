unit freeseatsinterface;

interface
//uses vcl.controls;
uses system.classes;
type
  Iseatview= interface
   ['{7613F889-6681-4459-BA28-A8D51A8C60FF}']
  function Getvalue:integer;
  procedure popolamemo(Avalue: String);
  procedure DisplayMessage(AValue: string);
  end;

implementation

end.
