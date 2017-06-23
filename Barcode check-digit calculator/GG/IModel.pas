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


unit IModel;

interface

uses
  System.Classes, Data.DB, Vcl.Imaging.pngimage;

type
  IModelDB = interface
  ['{E689B3AE-BC2E-47C0-915D-5C1FFACFCD66}']
    function QueryingCheckDigit(ABarcode: string): TDataSource;
    function SQLCalcCheckDigit(ABarcode: string) : string;
    function GetBarcodeImg (ABarcode : string): TPngImage;
  end;

implementation

end.
