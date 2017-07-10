unit CheckDPresenter;

interface
uses CheckDInterface, CheckdModel,  SysUtils;

type TCheckDpresenter = class
    private
        FCheckDView: ICheckD;
        FCheckDModel: TCheckDModel;
    public
    procedure setDigits;
    published
        constructor Create(ACheckDView: ICheckD);
end;

implementation

constructor TCheckDpresenter.Create(ACheckDView: ICheckD);
begin
    FCheckDView:= ACheckDView;
end;
procedure setDigits;
var Digit1, Digit2, Digit3, Digit4, Digit5, Digit6, Digit7, Digit8, Digit9, Digit10, Digit11, Digit12 : integer;
LCheckD: string;
begin
FCheckDModel:= TCheckDModel.Create(Digit1, Digit2, Digit3, Digit4, Digit5, Digit6, Digit7, Digit8, Digit9, Digit10, Digit11);
digit1 := FCheckDView.DigAss(Digit1);
digit2 := FCheckDView.DigAss(Digit2);
digit3 := FCheckDView.DigAss(Digit3);
digit4 := FCheckDView.DigAss(Digit4);
digit5 := FCheckDView.DigAss(Digit5);
digit6 := FCheckDView.DigAss(Digit6);
digit7 := FCheckDView.DigAss(Digit7);
digit8 := FCheckDView.DigAss(Digit8);
digit9 := FCheckDView.DigAss(Digit9);
digit10 := FCheckDView.DigAss(Digit10);
digit11 := FCheckDView.DigAss(Digit11);
digit12 := FCheckDView.DigAss(Digit12);
LCheckD := TcheckdModel.CheckDCalculate;
end;
end.
