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

unit IDataModule;

interface

type
IDataModuleDB = interface
['{A9CFF857-2D1E-4AB2-BE43-4868AF647C7E}']
  procedure ActDisactConnection;
  procedure ActDisactQry;
  procedure OpenQry;
  procedure CloseQry;
  procedure SetQry(AQry : string);
  procedure AddQry(AQry : string);
  procedure ClearQry;

end;

implementation

end.
