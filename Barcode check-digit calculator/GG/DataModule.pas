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

unit DataModule;

interface

uses
  System.SysUtils, System.Classes, IDataModule, Data.DB, Data.Win.ADODB,
  IModel;

type
  TDataModule5 = class(TDataModule, IDataModuleDB)
    ADOConnectionAdventureWork: TADOConnection;
    ADOQryCheckDigit: TADOQuery;
    DataSource1: TDataSource;

  protected

  private

  public
    procedure ActDisactConnection;
    procedure ActDisactQry;
    procedure OpenQry;
    procedure CloseQry;
    procedure SetQry(AQry : string);
    procedure AddQry(AQry : string);
    procedure ClearQry;
  end;

var
  DataModule5: TDataModule5;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


{ TDataModule5 }

procedure TDataModule5.ActDisactConnection;
begin
   ADOConnectionAdventureWork.Connected := not ADOConnectionAdventureWork.Connected;
end;

procedure TDataModule5.ActDisactQry;
begin
   ADOQryCheckDigit.Active := not ADOQryCheckDigit.Active;
end;

procedure TDataModule5.AddQry(AQry: string);
begin
  ADOQryCheckDigit.SQL.Add(AQry);
end;

procedure TDataModule5.ClearQry;
begin
  ADOQryCheckDigit.SQL.Clear;
end;

procedure TDataModule5.CloseQry;
begin
   ADOQryCheckDigit.Close;
end;

procedure TDataModule5.OpenQry;
begin
   ADOQryCheckDigit.Open;
end;

procedure TDataModule5.SetQry (AQry : string);
begin
  ADOQryCheckDigit.SQL.Text :=  AQry;
end;
end.
