unit ViewEditConnectionStrings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, InterfaceWebConfigEditConnectionStrings,
  TypesArrays, PresenterWebConfigEditConnectionStrings;

type
  TFormEditConnectionStrings = class(TForm, IWebConfigEditConnectionStrings)
    cbxConnections: TComboBox;
    lblChooseConnection: TLabel;
    lblDataSource: TLabel;
    lblDatabase: TLabel;
    lblPassword: TLabel;
    edtDataSource: TEdit;
    edtDatabase: TEdit;
    edtUserID: TEdit;
    edtPassword: TEdit;
    lblUserID: TLabel;
    btnSave: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbxConnectionsChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    FPresenter: TPresenterWebConfigEditConnectionStrings;
  public
    function GetFilePath: string;
    function GetConnection: string;
    function GetNewDataSource: string;
    function GetNewDatabase: string;
    function GetNewUserID: string;
    function GetNewPassword: string;
    procedure SetConnections(AConnections: TArrayOfString);
    procedure SetDataSource(ADataSource: string);
    procedure SetDatabase(ADatabase: string);
    procedure SetUserID(AUserID: string);
    procedure SetPassword(APassword: string);
    procedure DisplayMessage(AMessage: string);
  end;

var
  FormEditConnectionStrings: TFormEditConnectionStrings;
const
  AppName: string = 'Web.config editor - Modifica le stringhe di connessione';

implementation

{$R *.dfm}

uses MainFormWebConfigEditor;



procedure TFormEditConnectionStrings.btnSaveClick(Sender: TObject);
begin
    FPresenter.EditConnectionStrings;
end;



procedure TFormEditConnectionStrings.cbxConnectionsChange(Sender: TObject);
begin
    FPresenter.SetFields;
end;




procedure TFormEditConnectionStrings.DisplayMessage(AMessage: string);
begin
    Application.MessageBox(PChar(AMessage), PChar(AppName), MB_OK);
end;



procedure TFormEditConnectionStrings.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    FormWebConfigEditor.Visible:=true;
    FormWebConfigEditor.Enabled:=true;
    self.Enabled:=false;
end;



procedure TFormEditConnectionStrings.FormCreate(Sender: TObject);
begin
    FPresenter:=TPresenterWebConfigEditConnectionStrings.Create(self);
end;




function TFormEditConnectionStrings.GetConnection: string;
begin
    Result:=cbxConnections.Items[cbxConnections.ItemIndex];
end;




function TFormEditConnectionStrings.GetFilePath: string;
begin
    Result:=FormWebConfigEditor.FileName;
end;






function TFormEditConnectionStrings.GetNewDatabase: string;
begin
    Result:=edtDatabase.Text;
end;




function TFormEditConnectionStrings.GetNewDataSource: string;
begin
    Result:=edtDataSource.Text;
end;




function TFormEditConnectionStrings.GetNewPassword: string;
begin
    Result:=edtPassword.Text;
end;




function TFormEditConnectionStrings.GetNewUserID: string;
begin
    Result:=edtUserID.Text;
end;




procedure TFormEditConnectionStrings.SetConnections(
  AConnections: TArrayOfString);
var Li: integer;
begin
    cbxConnections.Clear;
    for Li := Low(AConnections) to High(Aconnections) do begin
        cbxConnections.Items.Add(AConnections[Li]);
    end;
end;




procedure TFormEditConnectionStrings.SetDatabase(ADatabase: string);
begin
    edtDatabase.Text:=ADatabase;
end;



procedure TFormEditConnectionStrings.SetDataSource(ADataSource: string);
begin
    edtDataSource.Text:=ADataSource;
end;



procedure TFormEditConnectionStrings.SetPassword(APassword: string);
begin
    edtPassword.Text:=APassword;
end;




procedure TFormEditConnectionStrings.SetUserID(AUserID: string);
begin
    edtUserID.Text:=AUserID;
end;

end.
