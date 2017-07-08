program WebConfigEditor;

uses
  Vcl.Forms,
  MainFormWebConfigEditor in 'Views\MainFormWebConfigEditor.pas' {FormWebConfigEditor},
  ViewEditConnectionStrings in 'Views\ViewEditConnectionStrings.pas' {FormEditConnectionStrings},
  ViewEditOptions in 'Views\ViewEditOptions.pas' {FormEditOptions},
  ViewEditApplicationName in 'Views\ViewEditApplicationName.pas' {FormEditApplicationName},
  InterfaceWebConfigEditApplicationName in 'Services\InterfaceWebConfigEditApplicationName.pas',
  InterfaceWebConfigEditConnectionStrings in 'Services\InterfaceWebConfigEditConnectionStrings.pas',
  InterfaceWebConfigEditOptions in 'Services\InterfaceWebConfigEditOptions.pas',
  PresenterWebConfigEditApplicationName in 'Presenters\PresenterWebConfigEditApplicationName.pas',
  PresenterWebConfigEditConnectionStrings in 'Presenters\PresenterWebConfigEditConnectionStrings.pas',
  TypesArrays in 'Services\TypesArrays.pas',
  ModelWebConfig in 'Models\ModelWebConfig.pas',
  PresenterWebConfigEditOptions in 'Presenters\PresenterWebConfigEditOptions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormWebConfigEditor, FormWebConfigEditor);
  Application.Run;
end.
