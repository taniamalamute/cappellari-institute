unit Fseats;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, freeseatspresenter, freeseatsinterface,freeseatsmodel;

type
  TForm2 = class(TForm, Iseatview)
    Label1: TLabel;
    Label2: TLabel;
    RichiestaPosti: TEdit;
    MemoDisplay: TMemo;
    CheckDispButton: TButton;
    GrigliaTeatro: TDBGrid;
    Label3: TLabel;
    procedure CheckDispButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RichiestaPostiKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
     FseatPresenter: tseatpresenter;
  public
    { Public declarations }
        function Getvalue:integer;
  //  procedure popolagriglia;
    procedure popolamemo(Avalue:string);
    procedure DisplayMessage(AValue: string);

  end;

var
  Form2: TForm2;
  const APPTITLE = 'Gestione Posti Liberi';
  const postiperfila = 40;
  implementation

{$R *.dfm}

procedure TForm2.DisplayMessage(AValue: string);
begin
  Application.MessageBox(PChar(AValue), PChar(APPTITLE), MB_OK);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
fseatpresenter:=tseatpresenter.create(self);
//resize dbgrid se possibile

end;
procedure TForm2.popolamemo(AValue: String);
begin
  memodisplay.Lines.add(AValue);
end;

procedure TForm2.RichiestaPostiKeyPress(Sender: TObject; var Key: Char);
begin
  // #8 = Backspace
  if not (Key in [#8, '0'..'9']) then begin
    DisplayMessage('Inserire valore numerico.');
    // Scarta il valore
    Key := #0;
  end;
end;

procedure TForm2.CheckDispButtonClick(Sender: TObject);
begin
MemoDisplay.Lines.Clear;
FseatPresenter.eseguicontrollo;
end;

function TForm2.Getvalue: integer;
begin
  result:=strtoint(richiestaposti.Text);
end;

end.
