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
  Data.db;

type
  IFreeSeatsView = interface
  ['{8FF79055-CD75-4B2B-9B12-4F8CF9B3514D}']
  //output
  function GetSeatsNumber : string;
  procedure ReciveDBGridDataModule(ADataSource : TDataSource);
  procedure SetDBGridDataModule(ADataSource : TDataSource);

end;

implementation

end.
