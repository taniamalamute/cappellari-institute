program RoomSeatsProject;

uses
  Vcl.Forms,
  View in 'View.pas' {Form1},
  connection in 'connection.pas' {DataModule2: TDataModule},
  viewInterf in 'viewInterf.pas',
  FreePresenter in 'FreePresenter.pas',
  Presenterinterf in 'Presenterinterf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
