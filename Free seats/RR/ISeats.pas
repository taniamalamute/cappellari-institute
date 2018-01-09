unit ISeats;

interface

type
  IFreeSeats = interface
    ['{B8961B5C-E8E3-4166-980E-72B829C5AE33}']
    // SG 07/08/2017
    // Input
    function GetRequiredSeats: Integer;
    // Output
    procedure FillMemo(AValue: string);
  end;

implementation

end.
