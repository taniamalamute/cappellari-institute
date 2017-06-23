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

unit PCheckDigit;

interface

uses
  IPCheckDigit, IVCheckDigit, IModel, Model, Data.DB;

type
  TCheckDigitP = class (TInterfacedObject, ICheckDigitPresenter)
  private
    FDigitView: ICheckDigitView;
    FModel: IModelDB;
  public
    constructor Create (ACheckDigitView: ICheckDigitView);
    destructor Destroy; override;
    procedure CalculateCheckDigit;
    procedure RequestBarcodeImg(ABarcode : string);
  end;

implementation

{ TCheckDigitP }

constructor TCheckDigitP.Create(ACheckDigitView: ICheckDigitView);
begin
  FDigitView := ACheckDigitView;
  FModel:= TModel.Create(self);
end;

destructor TCheckDigitP.Destroy;
begin
  inherited;
end;

procedure TCheckDigitP.RequestBarcodeImg(ABarcode : string);
begin
  FDigitView.SetBarcodeImg(FModel.GetBarcodeImg(ABarcode));
end;

procedure TCheckDigitP.CalculateCheckDigit;
begin
  FDigitView.SetResult(FModel.QueryingCheckDigit(FDigitView.GetBarcode));
end;
end.
