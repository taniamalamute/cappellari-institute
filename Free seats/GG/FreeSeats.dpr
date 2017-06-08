program FreeSeats;

uses
  Vcl.Forms,
  VFreeSeats in 'VFreeSeats.pas' {Form1},
  IFreeSeats in 'IFreeSeats.pas',
  PFindSeats in 'PFindSeats.pas',
  IFindSeats in 'IFindSeats.pas',
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
