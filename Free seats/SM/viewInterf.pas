unit viewInterf;

interface

uses system.classes, Vcl.Controls;

type
  IViewInterf= interface ['{7BC9189C-6D89-4F58-B893-1A56BB1C7856}']
    // Input
    function GetRequiredSeat: Integer;
    // Output
    procedure FillMemo(AValue: string);
    procedure Msg(AText: string);
  end;

implementation

end.
