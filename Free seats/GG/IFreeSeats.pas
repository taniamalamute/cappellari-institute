{*****************************************************************************}
{                                                                             }
{                         Ricerca Posti Adiacenti                             }
{                                                                             }
{      Gianmaria G.                                                           }
{                                                                             }
{      Corso Programmazione ERP @ Istituto Cappellari                         }
{                                                                             }
{      8/6/2017                                                               }
{                                                                             }
{*****************************************************************************}

unit IFreeSeats;

interface

uses
  Data.DB;

type
  IFreeSeatsView = interface
  ['{8FF79055-CD75-4B2B-9B12-4F8CF9B3514D}']
  // input
  function GetSeatsNumber: string;

  // output
  //procedure ReciveDBGridDataModule(ADataSource : TDataSource);
  //procedure SetDBGridDataModule(ADataSource: TDataSource);
  procedure SetResult(ADataSource: TDataSource);

end;

implementation

end.
