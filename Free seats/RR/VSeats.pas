unit VSeats;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ISeats, Vcl.StdCtrls, PSeats,
  Vcl.DBCtrls, DataModule, Vcl.Grids, Vcl.DBGrids;

type
  TFreeSeats = class(TForm, IFreeSeats)
    Label1: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FSeatsPresenter : TSeatsPresenter;
  public

  end;

var
  FFreeSeats: TFreeSeats;

implementation

{$R *.dfm}

procedure TFreeSeats.Button1Click(Sender: TObject);
var
res : TStringList;
begin
  res := FSeatsPresenter.SetResult();
  Memo1.Text := res.Text;
end;

procedure TFreeSeats.FormCreate(Sender: TObject);
begin
  FSeatsPresenter := TSeatsPresenter.Create(Self);
end;

procedure TFreeSeats.FormDestroy(Sender: TObject);
begin
  FSeatsPresenter.Free;
end;

end.
