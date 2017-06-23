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


unit IPCheckDigit;

interface

uses
  Data.DB;

type
  ICheckDigitPresenter = interface
  ['{670404BF-30EB-4EE9-9747-0607D990A7C0}']
     procedure CalculateCheckDigit;
     procedure RequestBarcodeImg(ABarcode : string);
  end;

implementation

end.
