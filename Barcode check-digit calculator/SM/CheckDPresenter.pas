unit CheckDPresenter;

interface

uses CheckDInterface, CheckdModel, SysUtils;

type

  TCheckDpresenter = class
  private
    FCheckDView: ICheckD;
    FCheckDModel: TCheckDModel;
  public
    constructor Create(ACheckDView: ICheckD);
    procedure SetDigits;
    procedure CalculateCheckDigit;
  end;

implementation

procedure TCheckDpresenter.CalculateCheckDigit;
var
  LCheckDigit: Integer;
begin
  LCheckDigit := FCheckDModel.CheckDCalculate(FCheckDView.GetDigit1,
                                              FCheckDView.GetDigit2,
                                              FCheckDView.GetDigit3,
                                              FCheckDView.GetDigit4,
                                              FCheckDView.GetDigit5,
                                              FCheckDView.GetDigit6,
                                              FCheckDView.GetDigit7,
                                              FCheckDView.GetDigit8,
                                              FCheckDView.GetDigit9,
                                              FCheckDView.GetDigit10,
                                              FCheckDView.GetDigit11,
                                              FCheckDView.GetDigit12);

  FCheckDView.SetCheckDigit(LCheckDigit);
end;

constructor TCheckDpresenter.Create(ACheckDView: ICheckD);
begin
  FCheckDView := ACheckDView;
  FCheckDModel := TCheckDModel.Create;
end;

//procedure SetDigits;
//var
//  Digit1, Digit2, Digit3, Digit4, Digit5, Digit6, Digit7, Digit8, Digit9,
//  Digit10, Digit11, Digit12: Integer;
//  LCheckD: string;
//begin
//  FCheckDModel := TCheckDModel.Create(Digit1, Digit2, Digit3, Digit4, Digit5,
//    Digit6, Digit7, Digit8, Digit9, Digit10, Digit11);
//  Digit1 := FCheckDView.DigAss(Digit1);
//  Digit2 := FCheckDView.DigAss(Digit2);
//  Digit3 := FCheckDView.DigAss(Digit3);
//  Digit4 := FCheckDView.DigAss(Digit4);
//  Digit5 := FCheckDView.DigAss(Digit5);
//  Digit6 := FCheckDView.DigAss(Digit6);
//  Digit7 := FCheckDView.DigAss(Digit7);
//  Digit8 := FCheckDView.DigAss(Digit8);
//  Digit9 := FCheckDView.DigAss(Digit9);
//  Digit10 := FCheckDView.DigAss(Digit10);
//  Digit11 := FCheckDView.DigAss(Digit11);
//  Digit12 := FCheckDView.DigAss(Digit12);
//  LCheckD := TCheckDModel.CheckDCalculate;
//end;

procedure TCheckDpresenter.SetDigits;
begin

end;

end.
