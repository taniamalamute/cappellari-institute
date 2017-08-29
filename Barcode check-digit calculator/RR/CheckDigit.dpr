program CheckDigit;

uses
  Vcl.Forms,
  VCheck in 'VCheck.pas' {Form1},
  ICheck in 'ICheck.pas',
  DataModuleCheck in 'DataModuleCheck.pas' {DataModule1: TDataModule},
  MCheck in 'MCheck.pas',
  PCheck in 'PCheck.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
