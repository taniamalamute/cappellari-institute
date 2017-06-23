program CheckDigitCalculator;

uses
  Vcl.Forms,
  VCheckDigit in 'VCheckDigit.pas' {Form1},
  IVCheckDigit in 'IVCheckDigit.pas',
  PCheckDigit in 'PCheckDigit.pas',
  IPCheckDigit in 'IPCheckDigit.pas',
  IDataModule in 'IDataModule.pas',
  DataModule in 'DataModule.pas' {DataModule5: TDataModule},
  Model in 'Model.pas',
  IModel in 'IModel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule5, DataModule5);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
