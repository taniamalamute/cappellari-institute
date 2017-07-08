unit MainFormWebConfigEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ViewEditApplicationName,
  ViewEditConnectionStrings, ViewEditOptions;

type
  TFormWebConfigEditor = class(TForm)
    gbxOperations: TGroupBox;
    btnEditConnectionStrings: TButton;
    btnEditOptions: TButton;
    btnEditApplicationName: TButton;
    btnChooseFile: TButton;
    lblFileName: TLabel;
    procedure btnEditConnectionStringsClick(Sender: TObject);
    procedure btnEditOptionsClick(Sender: TObject);
    procedure btnEditApplicationNameClick(Sender: TObject);
    procedure btnChooseFileClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FDlgSelectFile: TOpenDialog;
    FFileName: string;
  public
    property FileName: string read FFileName;
  end;

var
  FormWebConfigEditor: TFormWebConfigEditor;

implementation

{$R *.dfm}

procedure TFormWebConfigEditor.btnChooseFileClick(Sender: TObject);
begin
    FdlgSelectFile.InitialDir := 'C:\';
    FdlgSelectFile.Execute();
    lblFileName.Caption := FdlgSelectFile.FileName;

    if (FdlgSelectFile.FileName <> '') then begin
        gbxOperations.Enabled:=true;
        FFileName:=FdlgSelectFile.FileName;
    end;
end;




procedure TFormWebConfigEditor.btnEditApplicationNameClick(Sender: TObject);
begin
    Application.CreateForm(TFormEditApplicationName, FormEditApplicationName);
    FormEditApplicationName.Visible:=true;
    self.Visible:=false;
    self.Enabled:=false;
end;



procedure TFormWebConfigEditor.btnEditConnectionStringsClick(Sender: TObject);
begin
    Application.CreateForm(TFormEditConnectionStrings, FormEditConnectionStrings);
    FormEditConnectionStrings.Visible:=true;
    self.Visible:=false;
    self.Enabled:=false;
end;



procedure TFormWebConfigEditor.btnEditOptionsClick(Sender: TObject);
begin
    Application.CreateForm(TFormEditOptions, FormEditOptions);
    FormEditOptions.Visible:=true;
    self.Visible:=false;
    self.Enabled:=false;
end;




procedure TFormWebConfigEditor.FormCreate(Sender: TObject);
begin
    FDlgSelectFile:=TOpenDialog.Create(self);
    FDlgSelectFile.Filter:='Web.config files (Web.config)|Web.config';
end;

end.
