unit ViewEditApplicationName;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, InterfaceWebConfigEditApplicationName,
  PresenterWebConfigEditApplicationName;

type
  TFormEditApplicationName = class(TForm, IWebConfigEditApplicationName)
    lblApplicationName: TLabel;
    edtApplicationName: TEdit;
    btnSave: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    FPresenter: TPresenterWebConfigEditApplicationName;
  public
    function GetFilePath: string;
    function GetNewApplicationName: string;
    procedure SetApplicationName(AName: string);
    procedure DisplayMessage(AMessage: string);
  end;

var
  FormEditApplicationName: TFormEditApplicationName;
const
  AppName: string = 'Web.config editor - Modifica il nome dell'+#39+'applicazione';

implementation

{$R *.dfm}

uses MainFormWebConfigEditor;


procedure TFormEditApplicationName.btnSaveClick(Sender: TObject);
begin
    FPresenter.EditApplicationName;
end;





procedure TFormEditApplicationName.DisplayMessage(AMessage: string);
begin
    Application.MessageBox(PChar(AMessage), PChar(AppName), MB_OK);
end;



procedure TFormEditApplicationName.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    FormWebConfigEditor.Visible:=true;
    FormWebConfigEditor.Enabled:=true;
    self.Enabled:=false;
end;



procedure TFormEditApplicationName.FormCreate(Sender: TObject);
begin
    FPresenter:=TPresenterWebConfigEditApplicationName.Create(self);
end;




function TFormEditApplicationName.GetFilePath: string;
begin
    Result:=FormWebConfigEditor.FileName;
end;




function TFormEditApplicationName.GetNewApplicationName: string;
begin
    Result:=edtApplicationName.Text;
end;




procedure TFormEditApplicationName.SetApplicationName(AName: string);
begin
    edtApplicationName.Text:=AName;
end;

end.
