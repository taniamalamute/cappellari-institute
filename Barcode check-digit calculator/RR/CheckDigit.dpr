program CheckDigit;

uses
  Vcl.Forms,
  VCheck in 'VCheck.pas' {Form1},
  ICheck in 'ICheck.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
