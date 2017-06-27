program BarcodeCheckDigitCalculator;

uses
  Vcl.Forms,
  ViewCheckDigitCalulator in 'Views\ViewCheckDigitCalulator.pas' {Form1},
  InterfaceCheckDigitCalculator in 'Services\InterfaceCheckDigitCalculator.pas',
  PresenterCheckDigitCalculator in 'Presenters\PresenterCheckDigitCalculator.pas',
  ModelCheckDigitCalculator in 'Models\ModelCheckDigitCalculator.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
