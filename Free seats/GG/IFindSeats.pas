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

unit IFindSeats;

interface

uses
  Data.DB;

type
  IFindSeatsP = interface
  ['{670404BF-30EB-4EE9-9747-0607D990A7C0}']

   //procedure SendSeatsNumberToModel (ASeats : string);
   //procedure SendQueryToView (ADataSource : TDataSource);
   procedure SearchFreeSeats;
  end;

implementation

end.
