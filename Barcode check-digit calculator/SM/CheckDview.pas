unit CheckDview;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, CheckDinterface, CheckDPresenter;

type
  TForm1 = class(TForm)
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
    Label1: TLabel;
    Button1: TButton;
    Edit13: TEdit;
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
    procedure FormDestroy(Sender: TObject);

  private
  FCheckDpresenter: TCheckDPresenter;
    { Private declarations }
  public
    procedure DigAss(Digit1, Digit2, Digit3, Digit4, Digit5, Digit6, Digit7, Digit8, Digit9, Digit10, Digit11 : Integer);

    { Public declarations }
  end;

  procedure ErrorMsg;

  procedure Clear;
var
  Form1: TForm1;
  Digit1, Digit2, Digit3, Digit4, Digit5, Digit6, Digit7, Digit8, Digit9, Digit10, Digit11, Digit12 : integer;


implementation

procedure DigAss(Digit1, Digit2, Digit3, Digit4, Digit5, Digit6, Digit7, Digit8, Digit9, Digit10, Digit11 : Integer);
begin
 Digit1 := strtoint(form1.Edit1.Text);
 Digit2 := strtoint(form1.Edit2.Text);
 Digit3 := strtoint(form1.Edit3.Text);
 Digit4 := strtoint(form1.Edit4.Text);
 Digit5 := strtoint(form1.Edit5.Text);
 Digit6 := strtoint(form1.Edit6.Text);
 Digit7 := strtoint(form1.Edit7.Text);
 Digit8 := strtoint(form1.Edit8.Text);
 Digit9 := strtoint(form1.Edit9.Text);
 Digit10 := strtoint(form1.Edit10.Text);
 Digit11 := strtoint(form1.Edit11.Text);
 Digit12 := strtoint(form1.Edit12.Text);

end;
procedure ErrorMsg;
  begin
   showmessage('Inserire un numero da 0 a 9');
end;
//CONTROLLO CHE VENGANO INSERITE NELLE EDIT NUMERI DA 0 A 9


procedure TForm1.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9'])then

     begin
       ErrorMsg;
     end;
end;

procedure TForm1.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9']) then

     begin
       ErrorMsg;
     end;
end;

procedure TForm1.Edit12KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9']) then

     begin
       ErrorMsg;
     end;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
 begin
   if not (Key in ['0'..'9'])then

     begin
       ErrorMsg;
     end;
 end;

  procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['0'..'9'])then

     begin
       ErrorMsg;
     end;
 end;

  procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in ['0'..'9']) then

     begin
       ErrorMsg;
     end;
end;





procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9'])then

     begin
       ErrorMsg;
     end;
end;

procedure TForm1.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9'])then

     begin
       ErrorMsg;
     end;
end;

procedure TForm1.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9'])then

     begin
       ErrorMsg;
     end;
end;

procedure TForm1.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9']) then

     begin
       ErrorMsg;
     end;
end;

procedure TForm1.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9']) then

     begin
       ErrorMsg;
     end;
end;

procedure TForm1.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in ['0'..'9']) then
     begin
       ErrorMsg;
     end;
end;
procedure TForm1.FormCreate(Sender: TObject);
begin
FCheckDpresenter:= TCheckDPresenter.Create(self);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
FCheckDpresenter.Free;
end;

// FINE CONTROLLO CHE VENGANO INSERITE NELLE EDIT NUMERI DA 0 A 9


procedure TForm1.Button1Click(Sender: TObject);
begin
  //DigAss;
  //CheckDCalculate;
  edit13.Text := FCheckDmodel.Acheckd;
  //DeleteDBFunc;

end;





procedure Clear;
begin
form1.Edit1.Text := '';
form1.Edit2.Text := '';
form1.Edit3.Text := '';
form1.Edit4.Text := '';
form1.Edit5.Text := '';
form1.Edit6.Text := '';
form1.Edit7.Text := '';
form1.Edit8.Text := '';
form1.Edit9.Text := '';
form1.Edit10.Text := '';
form1.Edit11.Text := '';
form1.Edit12.Text := '';
form1.Edit13.Text := '';
end;

procedure TForm1.Button2Click(Sender: TObject); //BOTTONE PER AZZERRARE I CAMPI PER NUOVO INSERIMENTO
begin
Clear;
end;
end.
