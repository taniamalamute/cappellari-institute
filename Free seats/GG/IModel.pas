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

unit IModel;

interface

uses
  System.Classes, Data.DB;

type
  IModelDB = interface
  ['{A00317B9-6708-4434-BB08-A42A22490FA2}']
    //procedure FindSeatsNumber (ASeats : string);
    function FindSeatsNumber(ASeats: string): TDataSource;
    //function QueryFindSeats(ARoom, ASeatsNumber: string): string;
  end;

implementation

end.
