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


unit Model;

interface

uses
  System.Classes, IModel, IPCheckDigit, DataModule, Data.DB, Vcl.Imaging.pngimage,
  IdHTTP;

type
  TModel = class (TInterfacedObject, IModelDB)
  private
    function SQLCalcCheckDigit(ABarcode: string) : string;
    function GetBarcodeImg (ABarcode : string): TPngImage;
    function QueryingCheckDigit(ABarcode: string): TDataSource;
  public
    constructor create (ACheckDigitP : ICheckDigitPresenter);
  end;

implementation

var
   FCheckDigitP : ICheckDigitPresenter;

{ TModel }

constructor TModel.create(ACheckDigitP: ICheckDigitPresenter);
begin
   FCheckDigitP := ACheckDigitP;
end;


function TModel.GetBarcodeImg(ABarcode: string): TPngImage;
// BARCODE API - bwip-js
// https://github.com/metafloor/bwip-js/wiki/Online-Barcode-API
//
//      Risponde alla chiamata GET con un file PNG
//
// Parametri ::
// scaleX : The x-axis scaling factor. Must be an integer > 0. Default is 2.
// scaleY : The y-axis scaling factor. Must be an integer > 0. Default is scaleX.
// scale : Sets both the x-axis and y-axis scaling factors. Must be an integer > 0.
// rotate : Allows rotating the image to one of the four orthogonal orientations:
//    N : Normal (not rotated). This is the default.
//    R : Clockwise 90 degree rotation.
//    L : Counter-clockwise 90 degree rotation.
//    I : Inverted 180 degree rotation.
// monochrome : Sets the image text to render in monochrome. The default is 256-level gray-scale anti-aliased.
var
  LStream: TMemoryStream;
  LHttp: TIdHTTP;
  LPng : TPngImage;
begin
  LStream := TMemoryStream.Create;
  LPng := TPngImage.Create;
  LHttp := TIdHTTP.Create;
  Result := nil;
  try
    LHttp.Get('http://api-bwipjs.rhcloud.com/?bcid=ean13&text=' +
              ABarcode +'&scale=1&rotate=N&includetext', LStream);
    LStream.Position := 0;
    LPng.LoadFromStream(LStream);
    Result := LPng;
  finally
    LStream.Free;
    //LPng.Free;
    LHttp.Free;
  end;
end;


function TModel.QueryingCheckDigit(ABarcode: string): TDataSource;
begin
  DataModule5.CloseQry;
  DataModule5.ClearQry;
  DataModule5.SetQry(SQLCalcCheckDigit(ABarcode));
  DataModule5.OpenQry;
  Result := DataModule5.DataSource1;
end;


function TModel.SQLCalcCheckDigit(ABarcode: string) : string;
begin
  result := ' DECLARE @string  varchar(12) = ''' + ABarcode + ''';'
          + ' DECLARE @lenghtString  integer = LEN(@String);'

          + ' WITH SplittedString AS'
          + ' ('
          + ' 	SELECT SUBSTRING(@string, @lenghtString, 1) AS [SplittedNumber],'
          + '          @lenghtString AS [PosString],'
          + ' 		     1 AS [PosIndex]'
          + '   UNION ALL'
          + '   SELECT SUBSTRING(@string, [PosString] - 1, 1),'
          + ' 	       [PosString] - 1,'
          + ' 	   	   [PosIndex] + 1'
          + '   FROM SplittedString'
          + '   WHERE PosString != 1'
          + ' )'

          + ' SELECT'
          + ' 	    (10 - SUM( CASE [PosIndex] % 2 WHEN 1 THEN 3 ELSE 1 END * [SplittedNumber]) % 10) % 10   AS [Check Digit]'
          + ' FROM SplittedString';
end;
end.
