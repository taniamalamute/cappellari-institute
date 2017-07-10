program CheckDigitProject;

uses
  Vcl.Forms,
  CheckDview in 'CheckDview.pas' {Form1},
  CheckDDataModule in 'CheckDDataModule.pas' {DataModule1: TDataModule},
  CheckDPresenter in 'CheckDPresenter.pas',
  CheckDModel in 'CheckDModel.pas',
  CheckDInterface in 'CheckDInterface.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
