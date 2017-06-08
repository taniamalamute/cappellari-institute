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

unit DataModule;

interface

uses
  System.SysUtils, System.Classes, IDataModule, Data.DB, Data.Win.ADODB;

type
  TDataModule5 = class(TDataModule, IDataModuleDB)
    ADOConnectionFreeSeats: TADOConnection;
    ADOQryFreeSeats: TADOQuery;
    DataSource1: TDataSource;
    ADOQrySeats: TADOQuery;
    DataSource2: TDataSource;
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
   ADOConnectionFreeSeats.Connected := not ADOConnectionFreeSeats.Connected;
end;

procedure TDataModule5.ActDisactQry;
begin
   ADOQryFreeSeats.Active := not ADOQryFreeSeats.Active;
end;

procedure TDataModule5.AddQry(AQry: string);
begin
  ADOQryFreeSeats.SQL.Add(AQry);
end;

procedure TDataModule5.ClearQry;
begin
  ADOQryFreeSeats.SQL.Clear;
end;

procedure TDataModule5.CloseQry;
begin
   ADOQryFreeSeats.Close;
end;

procedure TDataModule5.OpenQry;
begin
   ADOQryFreeSeats.Open;
end;

procedure TDataModule5.SetQry (AQry : string);
begin
  ADOQryFreeSeats.SQL.Text :=  AQry;
end;
end.
