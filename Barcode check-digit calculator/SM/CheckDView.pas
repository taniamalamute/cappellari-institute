unit CheckDView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, {checkdata, SG 14/07/2017: Unit duplicata}  CheckDInterface, CheckDPresenter;

type
  TForm1 = class(TForm, ICheckD)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure Edit12KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  protected
    FCheckDPresenter: TCheckDPresenter;
  public
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

    procedure DigAss;
    // procedure digitControl;

    // SG 14/07/2017: Spostata nel model
    //procedure CheckDCalculate;
    //procedure DeleteDBFunc;

    procedure ErrorMsg;
    procedure Clear;
  end;

{
procedure DigAss;
procedure digitControl;
procedure CheckDCalculate;
procedure DeleteDBFunc;
procedure ErrorMsg;
procedure Clear;
}

var
  Form1: TForm1;

  // SG 14/07/2017: No variabili globali
  //Digit1, Digit2, Digit3, Digit4, Digit5, Digit6, Digit7, Digit8, Digit9,
  //Digit10, Digit11, Digit12: integer;

  // barcodeElements : array [0..11] of Integer;
  checkd: string;

implementation

{$R *.dfm}

{
procedure TForm1.DigAss;
begin
  Digit1 := strtoint(Form1.Edit1.Text);
  Digit2 := strtoint(Form1.Edit2.Text);
  Digit3 := strtoint(Form1.Edit3.Text);
  Digit4 := strtoint(Form1.Edit4.Text);
  Digit5 := strtoint(Form1.Edit5.Text);
  Digit6 := strtoint(Form1.Edit6.Text);
  Digit7 := strtoint(Form1.Edit7.Text);
  Digit8 := strtoint(Form1.Edit8.Text);
  Digit9 := strtoint(Form1.Edit9.Text);
  Digit10 := strtoint(Form1.Edit10.Text);
  Digit11 := strtoint(Form1.Edit11.Text);
  Digit12 := strtoint(Form1.Edit12.Text);
end;
}

(* procedure digitControl;

  begin
  barcodeElements[0] := Digit1;
  barcodeElements[1] := Digit2;
  barcodeElements[2] := Digit3;
  barcodeElements[3] := Digit4;
  barcodeElements[4] := Digit5;
  barcodeElements[5] := Digit6;
  barcodeElements[6] := Digit7;
  barcodeElements[7] := Digit8;
  barcodeElements[8] := Digit9;
  barcodeElements[9] := Digit10;
  barcodeElements[10] := Digit11;
  barcodeElements[11] := Digit12;

  end; *)

procedure TForm1.ErrorMsg;
begin
  ShowMessage('Inserire un numero da 0 a 9');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FCheckDPresenter := TCheckDpresenter.Create(Self);
end;

// SG 14/07/2017: Spostata nel Model
//procedure TForm1.CheckDCalculate;
//var
//  query, query2: string;
//begin
//
//  DataModule1.ADOQuery1.Close;
//  DataModule1.ADOQuery1.SQL.Clear;
//
//  query := 'CREATE FUNCTION dbo.checkDigit (@digit1 INTEGER, @digit2 INTEGER, @digit3 INTEGER, @digit4 INTEGER, @digit5 INTEGER, @digit6 INTEGER, @digit7 INTEGER, @digit8 INTEGER, @digit9 INTEGER, @digit10 INTEGER, @digit11 INTEGER, @digit12 INTEGER)'
//    + #13#10' RETURNS INTEGER BEGIN' + #13#10' RETURN (10 - (@digit1' +
//    #13#10' + 3*@digit2' + #13#10' +@digit3' + #13#10' + 3*@digit4' +
//    #13#10' +@digit5' + #13#10' + 3*@digit6' + #13#10' +@digit7' +
//    #13#10' + 3*@digit8' + #13#10' +@digit9' + #13#10' + 3*@digit10' +
//    #13#10' +@digit11' + #13#10' +3*@digit12' + #13#10') % 10) ' +
//    #13#10' END;';
//
//  DataModule1.ADOQuery1.SQL.Text := query;
//  DataModule1.ADOQuery1.ExecSQL;
//
//  DataModule1.ADOQuery1.SQL.Clear;
//
//  query2 := 'SELECT dbo.checkDigit(' + inttostr(Digit1) + ', ' +
//    inttostr(Digit2) + ', ' + inttostr(Digit3) + ', ' + inttostr(Digit4) + ', '
//    + inttostr(Digit5) + ', ' + inttostr(Digit6) + ', ' + inttostr(Digit7) +
//    ', ' + inttostr(Digit8) + ', ' + inttostr(Digit9) + ', ' + inttostr(Digit10)
//    + ', ' + inttostr(Digit11) + ', ' + inttostr(Digit12) + ')';
//  DataModule1.ADOQuery1.SQL.Text := query2;
//  DataModule1.ADOQuery1.Open;
//  checkd := DataModule1.ADOQuery1.Fields[0].AsString;
//end;

//procedure TForm1.DeleteDBFunc;
//var
//  query: string;
//begin
//  DataModule1.ADOQuery1.Close;
//  DataModule1.ADOQuery1.SQL.Clear;
//
//  query := 'DROP FUNCTION dbo.checkDigit';
//  DataModule1.ADOQuery1.SQL.Text := query;
//  DataModule1.ADOQuery1.ExecSQL;
//end;

procedure TForm1.DigAss;
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  //DigAss;
  FCheckDPresenter.CalculateCheckDigit
  //CheckDCalculate;
  //Edit13.Text := checkd;
  //DeleteDBFunc;
end;

procedure TForm1.Clear;
begin
  Form1.Edit1.Text := '';
  Form1.Edit2.Text := '';
  Form1.Edit3.Text := '';
  Form1.Edit4.Text := '';
  Form1.Edit5.Text := '';
  Form1.Edit6.Text := '';
  Form1.Edit7.Text := '';
  Form1.Edit8.Text := '';
  Form1.Edit9.Text := '';
  Form1.Edit10.Text := '';
  Form1.Edit11.Text := '';
  Form1.Edit12.Text := '';
  Form1.Edit13.Text := '';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Clear;
end;

// CONTROLLO CHE VENGANO INSERITE NELLE EDIT NUMERI DA 0 A 9
procedure TForm1.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9']) then
  (* begin
    digitControl;
    end
    else *)
  begin
    ErrorMsg;
  end;
end;

procedure TForm1.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9']) then
  (* begin
    digitControl;
    end
    else *)
  begin
    ErrorMsg;
  end;
end;

procedure TForm1.Edit12KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9']) then
  (* begin
    digitControl;
    end
    else *)
  begin
    ErrorMsg;
  end;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9']) then
  (* begin
    digitControl;
    end
    else *)
  begin
    ErrorMsg;
  end;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9']) then
  (* begin
    digitControl;
    end
    else *)
  begin
    ErrorMsg;
  end;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9']) then
  (* begin
    digitControl;
    end
    else *)
  begin
    ErrorMsg;
  end;
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9']) then
  (* begin
    digitControl;
    end
    else *)
  begin
    ErrorMsg;
  end;
end;

procedure TForm1.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9']) then
  (* begin
    digitControl;
    end
    else *)
  begin
    ErrorMsg;
  end;
end;

procedure TForm1.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9']) then
  (* begin
    digitControl;
    end
    else *)
  begin
    ErrorMsg;
  end;
end;

procedure TForm1.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9']) then
  (* begin
    digitControl;
    end
    else *)
  begin
    ErrorMsg;
  end;
end;

procedure TForm1.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9']) then
  (* begin
    digitControl;
    end
    else *)
  begin
    ErrorMsg;
  end;
end;

procedure TForm1.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9']) then
  (* begin
    digitControl;
    end
    else *)
  begin
    ErrorMsg;
  end;
end;

function TForm1.GetDigit1: Integer;
begin
  Result := StrToInt(Edit1.Text);
end;

function TForm1.GetDigit10: Integer;
begin
  Result := StrToInt(Edit10.Text);
end;

function TForm1.GetDigit11: Integer;
begin
  Result := StrToInt(Edit11.Text);
end;

function TForm1.GetDigit12: Integer;
begin
  Result := StrToInt(Edit12.Text);
end;

function TForm1.GetDigit2: Integer;
begin
  Result := StrToInt(Edit2.Text);
end;

function TForm1.GetDigit3: Integer;
begin
  Result := StrToInt(Edit3.Text);
end;

function TForm1.GetDigit4: Integer;
begin
  Result := StrToInt(Edit4.Text);
end;

function TForm1.GetDigit5: Integer;
begin
  Result := StrToInt(Edit5.Text);
end;

function TForm1.GetDigit6: Integer;
begin
  Result := StrToInt(Edit6.Text);
end;

function TForm1.GetDigit7: Integer;
begin
  Result := StrToInt(Edit7.Text);
end;

function TForm1.GetDigit8: Integer;
begin
  Result := StrToInt(Edit8.Text);
end;

function TForm1.GetDigit9: Integer;
begin
  Result := StrToInt(Edit9.Text);
end;

procedure TForm1.SetCheckDigit(const ACheckDigit: Integer);
begin
  Edit13.Text := ACheckDigit.ToString;
end;

end.
