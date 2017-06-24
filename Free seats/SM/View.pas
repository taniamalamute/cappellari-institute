unit View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, connection, Vcl.Grids, viewinterf, FreePresenter,Presenterinterf;

type
  TFormview = class(TForm,IviewInterf )

    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FillMemo;
    procedure Msg;


  private
    { Private declarations }

    FFreePresenter: IPresenterinterf;
  public
     var testo : string;
    { Public declarations }
  end;

var
  Formview : TFormview ;

implementation

{$R *.dfm}


 procedure Msg;
 begin
   Showmessage('devi inserire un numero compreso tra 1 e 40');
 end;




 procedure   TFormview.FillMemo;
 begin
    while(not DataModule2.ADOQuery1.EOF)do begin
  TPresenter.fila:=(DataModule2.ADOQuery1.FieldByName('rownumber').AsString);
  TPresenter.poltrona := (DataModule2.ADOQuery1.FieldByName('SeatNumber').AsString);

  memo1.Lines.Add(TPresenter.fila + TPresenter.poltrona);
  DataModule2.ADOQuery1.Next;

 end;

 end;


procedure TFormview.Button1Click(Sender: TObject);

begin
   memo1.Lines.Clear;
  TPresenter.GetQuery;

  FillMemo;

end;


 procedure TFormview.FormCreate(Sender: TObject);
begin
  FFreePresenter:=  TPresenter.Create(Self);
  testo := Edit1.text;
end;







end.
