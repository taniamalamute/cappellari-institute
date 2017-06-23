program BarcodesCheck;

uses
  Vcl.Forms,
  Fbars in 'Fbars.pas' {Formbarcodes},
  Ibars in 'Ibars.pas',
  Pbars in 'Pbars.pas',
  Mbars in 'Mbars.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormbarcodes, Formbarcodes);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
