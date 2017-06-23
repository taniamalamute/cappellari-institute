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

unit IDataModule;

interface

type
IDataModuleDB = interface
['{B6412246-E11E-4206-94B0-70DA1571A5CF}']
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
