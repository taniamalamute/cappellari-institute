unit VSeats;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ISeats, Vcl.StdCtrls, PSeats,
  Vcl.DBCtrls, IDataSeats, Vcl.ExtCtrls;

type
  TViewFreeSeats = class(TForm, IFreeSeats)
    Label1: TLabel;
    Button1: TButton;
    DBMemo1: TDBMemo;
    memFreeSeats: TMemo;
    ledtRequiredSeats: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FSeatsPresenter: TSeatsPresenter;
  public
    // SG 07/08/2017
    // Input
    function GetRequiredSeats: Integer;
    // Output
    procedure FillMemo(AValue: string);
  end;

var
  ViewFreeSeats: TViewFreeSeats;

implementation

{$R *.dfm}

procedure TViewFreeSeats.Button1Click(Sender: TObject);
begin
  // SG 07/08/2017
  //DBMemo1.DataSource.Name := FSeatsPresenter.SetResult();
  FSeatsPresenter.FindSeats;
end;

procedure TViewFreeSeats.FillMemo(AValue: string);
begin
  memFreeSeats.Lines.Add(AValue);
end;

procedure TViewFreeSeats.FormCreate(Sender: TObject);
begin
  FSeatsPresenter := TSeatsPresenter.Create(Self);
end;

function TViewFreeSeats.GetRequiredSeats: Integer;
begin
  Result := StrToInt(ledtRequiredSeats.Text);
end;

end.
