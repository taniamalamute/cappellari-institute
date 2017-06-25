unit InterfaceCheckDigitCalculator;

interface

type ICheckDigitCalculator = interface ['{244B1880-99B7-40F7-BB22-784FD4237370}']
    function GetIncompleteBarcode: string;
    procedure SetCheckDigit(ACheckDigit: integer);
    procedure SetCompleteBarcode(ABarcode: int64);
end;

implementation

end.
