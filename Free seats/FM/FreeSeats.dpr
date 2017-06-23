program FreeSeats;

uses
  Vcl.Forms,
  ViewFreeSeats in 'Views\ViewFreeSeats.pas' {FormFreeSeats},
  DataModuleFreeSeats in 'Services\DataModuleFreeSeats.pas' {DataModFreeSeats: TDataModule},
  InterfaceFreeSeats in 'Services\InterfaceFreeSeats.pas',
  PresenterFreeSeats in 'Presenters\PresenterFreeSeats.pas',
  ModelFreeSeats in 'Models\ModelFreeSeats.pas',
  TypeArrayOfArrayOfString in 'Services\TypeArrayOfArrayOfString.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormFreeSeats, FormFreeSeats);
  Application.CreateForm(TDataModFreeSeats, DataModFreeSeats);
  Application.Run;
end.
