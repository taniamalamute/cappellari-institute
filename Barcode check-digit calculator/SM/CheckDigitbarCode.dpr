program CheckDigitbarCode;

uses
  Vcl.Forms,
  CheckDView in 'CheckDView.pas' {Form1},
  checkdata in 'checkdata.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);

  Application.Run;
end.
