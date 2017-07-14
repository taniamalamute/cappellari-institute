unit CheckDModel;

interface

uses CheckDDataModule, SysUtils;

type
  TCheckDModel = class
  protected
    FDataModule: TDataModule1;
    procedure DeleteDBFunc;
  public
    FCheckD: string;
    function CheckDCalculate(ADigit1, ADigit2, ADigit3, ADigit4, ADigit5,
      ADigit6, ADigit7, ADigit8, ADigit9, ADigit10, ADigit11, ADigit12: Integer): Integer;
    //procedure DeleteDBFunc;
  published
    constructor Create;
  end;

implementation

// SG 14/07/2017: Non era specificato il tipo della classe, che è necessario
// per "riferire" un metodo o una funzione ad una classe specifica
//constructor Create(const ACheckd: string);
constructor TCheckDModel.Create;
begin
  //FCheckd := ACheckd; ??

  FDataModule := TDataModule1.Create(nil);

  inherited;
end;

function TCheckDModel.CheckDCalculate(ADigit1, ADigit2, ADigit3, ADigit4, ADigit5,
      ADigit6, ADigit7, ADigit8, ADigit9, ADigit10, ADigit11, ADigit12: Integer): Integer;
var
  query, query2: string;
begin

  FDataModule.ADOQuery1.Close;
  FDataModule.ADOQuery1.SQL.Clear;

  query := 'CREATE FUNCTION dbo.checkDigit (@digit1 INTEGER, @digit2 INTEGER, @digit3 INTEGER, @digit4 INTEGER, @digit5 INTEGER, @digit6 INTEGER, @digit7 INTEGER, @digit8 INTEGER, @digit9 INTEGER, @digit10 INTEGER, @digit11 INTEGER, @digit12 INTEGER)'
    + #13#10' RETURNS INTEGER BEGIN' + #13#10' RETURN (10 - (@digit1' +
    #13#10' + 3*@digit2' + #13#10' +@digit3' + #13#10' + 3*@digit4' +
    #13#10' +@digit5' + #13#10' + 3*@digit6' + #13#10' +@digit7' +
    #13#10' + 3*@digit8' + #13#10' +@digit9' + #13#10' + 3*@digit10' +
    #13#10' +@digit11' + #13#10' +3*@digit12' + #13#10') % 10) ' +
    #13#10' END;';

  FDataModule.ADOQuery1.SQL.text := query;
  FDataModule.ADOQuery1.ExecSQL;
  FDataModule.ADOQuery1.SQL.Clear;

  query2 := 'SELECT dbo.checkDigit(' + inttostr(ADigit1) + ', ' +
    inttostr(ADigit2) + ', ' + inttostr(ADigit3) + ', ' + inttostr(ADigit4) + ', '
    + inttostr(ADigit5) + ', ' + inttostr(ADigit6) + ', ' + inttostr(ADigit7) +
    ', ' + inttostr(ADigit8) + ', ' + inttostr(ADigit9) + ', ' + inttostr(ADigit10)
    + ', ' + inttostr(ADigit11) + ', ' + inttostr(ADigit12) + ')';
  FDataModule.ADOQuery1.SQL.text := query2;
  FDataModule.ADOQuery1.Open;

  {FCheckd} Result := FDataModule.ADOQuery1.Fields[0].AsInteger;
  DeleteDBFunc;
end;

procedure TCheckDModel.DeleteDBFunc;
var
  query: string;
begin
  FDataModule.ADOQuery1.Close;
  FDataModule.ADOQuery1.SQL.Clear;

  query := 'DROP FUNCTION dbo.checkDigit';
  FDataModule.ADOQuery1.SQL.text := query;
  FDataModule.ADOQuery1.ExecSQL;
end;

//procedure TForm1.Button1Click(Sender: TObject);
//begin
//  DigAss;
//  CheckDCalculate;
//  edit13.text := checkd;
//  DeleteDBFunc;
//
//end;

end.
