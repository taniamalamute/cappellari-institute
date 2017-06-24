unit View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, connection, Vcl.Grids,
  viewinterf, FreePresenter, Presenterinterf;

type

  TFormview = class(TForm, IViewInterf)
    edtRequiredSeats: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FFreePresenter: IPresenterinterf;
  public
    //var testo : string;
    // Input
    function GetRequiredSeat: Integer;
    // Output
    procedure FillMemo(AValue: string);
    procedure Msg(AText: string);
  end;

var
  Formview : TFormview;

implementation

{$R *.dfm}


 procedure TFormview.Msg(AText: string);
 begin
   //Showmessage('devi inserire un numero compreso tra 1 e 40');
   Showmessage(AText);
 end;

procedure TFormview.FillMemo(AValue: string);
begin
  // SG 24/06/2017: Logica spostata nel Presenter
  //while(not DataModule2.ADOQuery1.EOF) do
  //begin
  //  TPresenter.fila := (DataModule2.ADOQuery1.FieldByName('rownumber').AsString);
  //  TPresenter.poltrona := (DataModule2.ADOQuery1.FieldByName('SeatNumber').AsString);
  //  memo1.Lines.Add(TPresenter.fila + TPresenter.poltrona);
  //  DataModule2.ADOQuery1.Next;
  //end;

  memo1.Lines.Add(AValue);
end;

procedure TFormview.Button1Click(Sender: TObject);
begin
  //memo1.Lines.Clear;
  //TPresenter.GetQuery;
  //FillMemo;
  FFreePresenter.FindSeats;
end;


 procedure TFormview.FormCreate(Sender: TObject);
begin
  FFreePresenter := TPresenter.Create(Self);
  //testo := edtRequiredSeats.text;
end;

function TFormview.GetRequiredSeat: Integer;
begin
  Result := StrToInt(edtRequiredSeats.Text);
end;

end.
