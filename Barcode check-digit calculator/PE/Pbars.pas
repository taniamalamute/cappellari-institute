unit Pbars;

interface

uses Ibars, system.SysUtils, System.RegularExpressions,mbars;

type
Tbarpresenter = Class
protected
  Fbarview:Ibarcode;
public
  constructor create(Abarview: Ibarcode);
  procedure Performoperation();
end;

procedure Impostaquery(Avalue:string);

implementation

{ Tbarpresenter }

constructor Tbarpresenter.create(Abarview: Ibarcode);
begin
 Fbarview:=Abarview;
end;

procedure Tbarpresenter.Performoperation;
var Lbarcodeinput:string;
Lcalculateddigit:integer;
begin
  //Fbarview.DisplayMessage('In esecuzione');
  Lbarcodeinput:=Fbarview.Getbarcode();
  // controllo input accettando solo 12 cifre numeriche
  if TRegEx.IsMatch(Lbarcodeinput,'^[0-9]{12}$') then
  begin
  //  Fbarview.DisplayMessage(Lbarcodeinput);
    DataModule1.ADOQuery1.Open;
    DataModule1.ADOQuery1.SQL.Clear;
  //passo alla creazione query il barcode letto
    Impostaquery(Lbarcodeinput);
    DataModule1.ADOQuery1.Open;
    Lcalculateddigit:=DataModule1.ADOQuery1.FieldByName('result').AsInteger;
  //  Fbarview.DisplayMessage(inttostr(Lcalculateddigit));
    Fbarview.Setcheckdigit(Lcalculateddigit);
  end
  else
  begin
    Fbarview.DisplayMessage('Inserire codice abarre di 12 cifre!');
  end;
end;
//
 procedure Impostaquery(Avalue:string);
 var Lcondizione:string;
 begin
   // setta valore Avalue nella query da eseguire ritornando campo result
    // tally table con 80 righe
  Lcondizione:='DECLARE @CheckString VARCHAR(80) = ';
  Lcondizione:=Lcondizione+ quotedstr(Avalue);
  Lcondizione:=Lcondizione+' DECLARE @chk_digit int;';
  Lcondizione:=Lcondizione+'WITH Tally (n) AS (SELECT TOP (LEN(@CheckString)) ROW_NUMBER() OVER (ORDER BY (SELECT NULL))';
  Lcondizione:=Lcondizione+' FROM (VALUES (0),(0),(0),(0),(0),(0),(0),(0)) a(n)';
  Lcondizione:=Lcondizione+' CROSS JOIN (VALUES (0),(0),(0),(0),(0),(0),(0),(0),(0),(0)) b(n))';
  Lcondizione:=Lcondizione+' SELECT @chk_digit = SUM(CONVERT(int, SUBSTRING(@CheckString, LEN(@CheckString) - n + 1, 1)) * CASE WHEN n % 2 = 1 THEN 3 ELSE 1 END)';
  Lcondizione:=Lcondizione+' FROM Tally WHERE n <= LEN(@CheckString)';
  Lcondizione:=Lcondizione+' SELECT @chk_digit = (10 - (@chk_digit % 10)) % 10';
  Lcondizione:=Lcondizione+' SELECT @chk_digit as result';
  DataModule1.ADOQuery1.SQL.Add(Lcondizione);
 end;
end.
