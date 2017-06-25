unit ModelCheckDigitCalculator;

interface

uses DataModuleCheckDigitCalculator, SysUtils;

type TModelCheckDigitCalculator = class
        FIncompleteBarcode: int64;
    public
        function GetCheckDigit(): integer;
        procedure SetSQL;
    published
        constructor Create(AIncompleteBarcode: int64);
end;

implementation

{ TModelCheckDigitCalculator }

constructor TModelCheckDigitCalculator.Create(AIncompleteBarcode: int64);
begin
    FIncompleteBarcode:=AIncompleteBarcode;
end;

function TModelCheckDigitCalculator.GetCheckDigit: integer;
begin
    SetSQL;
    DataModuleCheckDigitCalculator.DataModuleCheckDigit.QueryFunctionCheckDigit.First;
    Result:=DataModuleCheckDigitCalculator.DataModuleCheckDigit.QueryFunctionCheckDigit.Fields[0].AsInteger;
end;




procedure TModelCheckDigitCalculator.SetSQL;
var Li, LCount: integer;
begin
    LCount:=DataModuleCheckDigitCalculator.DataModuleCheckDigit.QueryFunctionCheckDigit.SQL.Count;
    if (LCount > 1) then begin
        while not (DataModuleCheckDigitCalculator.DataModuleCheckDigit.QueryFunctionCheckDigit.SQL.Count = 1) do begin
            DataModuleCheckDigitCalculator.DataModuleCheckDigit.QueryFunctionCheckDigit.SQL.Delete(1);
        end;
    end;

    DataModuleCheckDigitCalculator.DataModuleCheckDigit.QueryFunctionCheckDigit.SQL.Add(intToStr(FIncompleteBarcode));
    DataModuleCheckDigitCalculator.DataModuleCheckDigit.QueryFunctionCheckDigit.SQL.Add(DataModuleCheckDigitCalculator.QueryFunctionCheckDigitEnd);

    DataModuleCheckDigitCalculator.DataModuleCheckDigit.QueryFunctionCheckDigit.Open;
end;

end.
