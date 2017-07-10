unit CheckDModel;

interface
uses CheckDDataModule, SysUtils;

type TCheckDModel = class
  public
  Acheckd : string;

  procedure CheckDCalculate;
  procedure DeleteDBFunc;
  published
        constructor Create(Acheckd: string);
end;
implementation

constructor TCheckDModel.Create(Acheckd: string);

begin
    Fcheckd :=Acheckd;

end;

  procedure CheckDCalculate;
  var query, query2: string;
  begin




    DataModule1.ADOQuery1.Close;
  DataModule1.ADOQuery1.SQL.Clear;

 query := 'CREATE FUNCTION dbo.checkDigit (@digit1 INTEGER, @digit2 INTEGER, @digit3 INTEGER, @digit4 INTEGER, @digit5 INTEGER, @digit6 INTEGER, @digit7 INTEGER, @digit8 INTEGER, @digit9 INTEGER, @digit10 INTEGER, @digit11 INTEGER, @digit12 INTEGER)'
            +#13#10' RETURNS INTEGER BEGIN'
            +#13#10' RETURN (10 - (@digit1'
            +#13#10' + 3*@digit2'
            +#13#10' +@digit3'
            +#13#10' + 3*@digit4'
            +#13#10' +@digit5'
            +#13#10' + 3*@digit6'
            +#13#10' +@digit7'
            +#13#10' + 3*@digit8'
            +#13#10' +@digit9'
            +#13#10' + 3*@digit10'
            +#13#10' +@digit11'
            +#13#10' +3*@digit12'
            +#13#10') % 10) '
            +#13#10' END;';

 DataModule1.ADOQuery1.SQL.text:= query;
 DataModule1.ADOQuery1.ExecSQL;

 DataModule1.ADOQuery1.SQL.Clear;

 query2 :='SELECT dbo.checkDigit('+inttostr(Digit1)+', '+inttostr(Digit2)+', '+inttostr(Digit3)+', '+inttostr(Digit4)+', '+inttostr(Digit5)+', '+inttostr(Digit6)+', '+inttostr(Digit7)+', '+inttostr(Digit8)+', '+inttostr(Digit9)+', '+inttostr(Digit10)+', '+inttostr(Digit11)+', '+inttostr(Digit12)+')';
   DataModule1.ADOQuery1.SQL.text:= query2;
 DataModule1.ADOQuery1.Open;
Acheckd := DataModule1.ADOQuery1.Fields[0].AsString;




  end;

  procedure DeleteDBFunc;
   var query : string;
   begin
    DataModule1.ADOQuery1.Close;
  DataModule1.ADOQuery1.SQL.Clear;

  query:='DROP FUNCTION dbo.checkDigit';
  DataModule1.ADOQuery1.SQL.text:= query;
 DataModule1.ADOQuery1.ExecSQL;
   end;
procedure TForm1.Button1Click(Sender: TObject);
begin
  DigAss;
  CheckDCalculate;
  edit13.Text := checkd;
  DeleteDBFunc;

end;


end.
