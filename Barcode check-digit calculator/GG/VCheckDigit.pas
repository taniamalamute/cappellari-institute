{*****************************************************************************}
{                                                                             }
{                   Calcolo Check Digit -- Barcode EAN 13                     }
{                                                                             }
{      Gianmaria G.                                                           }
{                                                                             }
{      Corso Programmazione ERP @ Istituto Cappellari                         }
{                                                                             }
{      22/6/2017                                                              }
{                                                                             }
{*****************************************************************************}

unit VCheckDigit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IVCheckDigit, PCheckDigit, Vcl.ComCtrls,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, IPCheckDigit, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Mask;

type
  TForm1 = class(TForm, ICheckDigitView)
    GroupBox1: TGroupBox;
    BtnCalcola: TButton;
    EdtEAN13: TEdit;
    Label1: TLabel;
    lblCheckDigit: TLabel;
    ImgBarcode: TImage;
    DBEdtCheckDigit: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure BtnCalcolaClick(Sender: TObject);
    procedure DBEdtCheckDigitChange(Sender: TObject);
  private
    FDigitP: ICheckDigitPresenter;
    function GetBarcode : string;
    procedure SetResult(ADataSource: TDataSource);
    procedure SetBarcodeImg(AImage : TPngImage);
    function GetCheckDigit : string;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnCalcolaClick(Sender: TObject);
begin
  FDigitP.CalculateCheckDigit;// .SearchFreeSeats;
end;

procedure TForm1.DBEdtCheckDigitChange(Sender: TObject);
begin
  FDigitP.RequestBarcodeImg(GetCheckDigit);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDigitP := TCheckDigitP.Create(self);
end;

function TForm1.GetBarcode: string;
begin
  Result := EdtEAN13.Text;
end;

function TForm1.GetCheckDigit: string;
begin
  Result := EdtEAN13.Text + DBEdtCheckDigit.Text;
end;

procedure TForm1.SetBarcodeImg(AImage: TPngImage);
begin
  ImgBarcode.Picture.Assign(AImage);
end;

procedure TForm1.SetResult(ADataSource: TDataSource);
begin
  DBEdtCheckDigit.DataSource := ADataSource;

end;
end.
