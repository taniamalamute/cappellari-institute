unit ViewCheckDigitCalulator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, InterfaceCheckDigitCalculator,
  PresenterCheckDigitCalculator;

type
  TForm1 = class(TForm, ICheckDigitCalculator)
    edtBarcode: TEdit;
    lblInsertBarcode: TLabel;
    lblForCheckDigit: TLabel;
    btnCalulate: TButton;
    lblForCompleteBarcode: TLabel;
    lblCheckDigit: TLabel;
    lblCompleteBarcode: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnCalulateClick(Sender: TObject);
  private
    FPresenter: TPresenterCheckDigitCalculator;
  public
    function GetIncompleteBarcode: string;
    procedure SetCheckDigit(ACheckDigit: integer);
    procedure SetCompleteBarcode(ABarcode: int64);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnCalulateClick(Sender: TObject);
begin
    FPresenter.ShowCheckDigit;
end;




procedure TForm1.FormCreate(Sender: TObject);
begin
    FPresenter:=TPresenterCheckDigitCalculator.Create(self);
end;




procedure TForm1.FormDestroy(Sender: TObject);
begin
    FPresenter.Free;
end;




function TForm1.GetIncompleteBarcode: string;
begin
    Result:=edtBarcode.Text;
end;




procedure TForm1.SetCheckDigit(ACheckDigit: integer);
begin
    lblCheckDigit.Caption:=intToStr(ACheckDigit);
end;




procedure TForm1.SetCompleteBarcode(ABarcode: int64);
begin
    lblCompleteBarcode.Caption:=intToStr(ABarcode);
end;

end.
