unit ModelCheckDigitCalculator;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
    TModelCheckDigitCalculator = class
      private
          ConnectionCD: TADOConnection;
          QueryFunctionCheckDigit: TADOQuery;
          procedure ConnectToAdventureWorks();
          procedure SetSQL(AIncompleteBarcode: string);
      public
          function GetCheckDigit(AIncompleteBarcode: string): integer;
      published
          constructor Create;
end;

implementation

{ TModelCheckDigitCalculator }

procedure TModelCheckDigitCalculator.ConnectToAdventureWorks;
begin
    ConnectionCD.ConnectionString:=
      'Provider=SQLOLEDB.1;Password=94483ycWSmrC22893etWS995!5k88X;Pers' +
      'ist Security Info=True;User ID=CorsoDelphiSQL;Initial Catalog=Ad' +
      'ventureWorks;Data Source=corso-cappellari.database.windows.net';
    ConnectionCD.Connected:=True;
    ConnectionCD.LoginPrompt:=False;
    ConnectionCD.Provider:='SQLOLEDB.1';
    QueryFunctionCheckDigit.Connection:=ConnectionCD;
end;





procedure TModelCheckDigitCalculator.SetSQL(AIncompleteBarcode: string);
begin
    QueryFunctionCheckDigit.SQL.Clear;
    QueryFunctionCheckDigit.SQL.Add('SELECT dbo.FM_CalculateCheckDigit('+AIncompleteBarcode+');');
    QueryFunctionCheckDigit.Open;
end;





constructor TModelCheckDigitCalculator.Create;
begin
    inherited Create;
    ConnectionCD:=TADOConnection.Create(nil);
    QueryFunctionCheckDigit:=TADOQuery.Create(nil);
    ConnectToAdventureWorks;
end;





function TModelCheckDigitCalculator.GetCheckDigit(AIncompleteBarcode: string): integer;
begin
    SetSQL(AIncompleteBarcode);
    QueryFunctionCheckDigit.First;
    Result:=QueryFunctionCheckDigit.Fields[0].AsInteger;
end;

end.
