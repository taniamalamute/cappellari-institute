unit Fbars;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ibars, Vcl.StdCtrls, Pbars;

type
  TFormbarcodes = class(TForm,Ibarcode)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  Fviewpresenter:Tbarpresenter;

  public
    { Public declarations }
  function Getbarcode:string;
  procedure Setcheckdigit(Avalue: integer);
  procedure DisplayMessage(AValue: string);
  end;

var
  Formbarcodes: TFormbarcodes;
 const APPTITLE ='Calcolo check digit barcode13';
implementation

{$R *.dfm}

{ TFormbarcodes }


procedure TFormbarcodes.Button1Click(Sender: TObject);
begin
Fviewpresenter.Performoperation;
end;

procedure TFormbarcodes.DisplayMessage(AValue: string);
begin
  Application.MessageBox(PChar(AValue), PChar(APPTITLE), MB_OK);
end;

procedure TFormbarcodes.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   // #8 = Backspace
  if not (Key in [#8, '0'..'9']) then begin
    DisplayMessage('Inserire valore numerico.');
    // Scarta il valore
    Key := #0;
  end;
end;

procedure TFormbarcodes.FormCreate(Sender: TObject);
begin
Fviewpresenter:=Tbarpresenter.create(self);
end;

function TFormbarcodes.Getbarcode: string;
begin
   result:=Edit1.text;
end;

procedure TFormbarcodes.Setcheckdigit(Avalue: integer);
begin
  edit2.Text:=inttostr(Avalue);
end;

end.
