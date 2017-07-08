unit ViewEditOptions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, InterfaceWebConfigEditOptions,
  TypesArrays, PresenterWebConfigEditOptions;

type
  TFormEditOptions = class(TForm, IWebConfigEditOptions)
    cbxOptions: TComboBox;
    lblChooseOption: TLabel;
    lblValue: TLabel;
    edtOptionValue: TEdit;
    btnSave: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbxOptionsChange(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    FPresenter: TPresenterWebConfigEditOptions;
  public
    function GetFilePath: string;
    function GetOptionName: string;
    function GetNewOptionValue: string;
    procedure SetOptions(AOptions: TArrayOfString);
    procedure SetValue(AValue: string);
    procedure DisplayMessage(AMessage: string);
  end;

var
  FormEditOptions: TFormEditOptions;
const
  AppName: string = 'Web.config editor - Modifica le opzioni';

implementation

{$R *.dfm}

uses MainFormWebConfigEditor;


procedure TFormEditOptions.btnSaveClick(Sender: TObject);
begin
    FPresenter.EditOption;
end;




procedure TFormEditOptions.cbxOptionsChange(Sender: TObject);
begin
    FPresenter.SetFields;
end;

procedure TFormEditOptions.DisplayMessage(AMessage: string);
begin
    Application.MessageBox(PChar(AMessage), PChar(AppName), MB_OK);
end;




procedure TFormEditOptions.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    FormWebConfigEditor.Visible:=true;
    FormWebConfigEditor.Enabled:=true;
    self.Enabled:=false;
end;




procedure TFormEditOptions.FormCreate(Sender: TObject);
begin
    self.Enabled:=true;
    FPresenter:=TPresenterWebConfigEditOptions.Create(self);
end;




function TFormEditOptions.GetFilePath: string;
begin
    Result:=FormWebConfigEditor.FileName;
end;




function TFormEditOptions.GetNewOptionValue: string;
begin
    Result:=edtOptionValue.Text;
end;




function TFormEditOptions.GetOptionName: string;
begin
    Result:=cbxOptions.items[cbxOptions.ItemIndex];
end;



procedure TFormEditOptions.SetOptions(AOptions: TArrayOfString);
var Li: integer;
begin
    cbxOptions.Clear;
    for Li := Low(AOptions) to High(AOptions) do begin
        cbxOptions.items.Add(AOptions[Li]);
    end;

end;



procedure TFormEditOptions.SetValue(AValue: string);
begin
    edtOptionValue.Text:=AValue;
end;

end.
