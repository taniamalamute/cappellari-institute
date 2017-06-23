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


unit IVCheckDigit;

interface

uses
  Data.DB, Vcl.Imaging.pngimage;

type
  ICheckDigitView = interface
  ['{0099D004-08D9-49E8-9F5F-5737D85844C2}']
     function GetBarcode: string;
     procedure SetBarcodeImg(AImage : TPngImage);
     function GetCheckDigit : string;
     procedure SetResult(ADataSource: TDataSource);
end;

implementation

end.
