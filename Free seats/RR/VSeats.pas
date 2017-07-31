unit VSeats;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ISeats, Vcl.StdCtrls, PSeats,
  Vcl.DBCtrls, IDataSeats;

type
  TFreeSeats = class(TForm, IFreeSeats)
    Label1: TLabel;
    Button1: TButton;
    DBMemo1: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FSeatsPresenter : TSeatsPresenter;
  public

  end;

var
  FFreeSeats: TFreeSeats;

implementation

{$R *.dfm}

procedure TFreeSeats.Button1Click(Sender: TObject);
begin
  DBMemo1.DataSource.Name :=  FSeatsPresenter.SetResult();
end;

procedure TFreeSeats.FormCreate(Sender: TObject);
begin
  FSeatsPresenter := TSeatsPresenter.Create(Self);
end;

end.
