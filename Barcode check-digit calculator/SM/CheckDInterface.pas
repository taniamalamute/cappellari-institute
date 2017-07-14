unit CheckDInterface;

interface

type

  ICheckD = interface
    ['{310234A8-B3D2-481F-A8E0-1F3DE65D5DC0}']
    // SG 14/07/2017
    // Identifica sempre input e output

    // Input
    function GetDigit1: Integer;
    function GetDigit2: Integer;
    function GetDigit3: Integer;
    function GetDigit4: Integer;
    function GetDigit5: Integer;
    function GetDigit6: Integer;
    function GetDigit7: Integer;
    function GetDigit8: Integer;
    function GetDigit9: Integer;
    function GetDigit10: Integer;
    function GetDigit11: Integer;
    function GetDigit12: Integer;

    // Output
    procedure SetCheckDigit(const ACheckDigit: Integer);

    //procedure DigAss;

    // SG 14/07/2017: Spostata nel model
    //procedure CheckDCalculate;
    //procedure DeleteDBFunc;
  end;

implementation

end.
