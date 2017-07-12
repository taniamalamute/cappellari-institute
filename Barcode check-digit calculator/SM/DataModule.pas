
unit DataModule;

interface

uses
  System.SysUtils, System.Classes, IDataModule, Data.DB, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule, IDataModuleDB)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    
  protected

  private

  public
    procedure SetGenericQuery(SqlQuery : string);
    procedure AddGenericQuery(SqlQuery : string);
  end;

var
  DataModule1: TDataModule1;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


{ TDataModule5 }

procedure TDataModule1.AddGenericQuery(SqlQuery: string);
  begin
    ADOQuery1.SQL.Add(SqlQuery);
  end;

procedure TDataModule1.SetGenericQuery(SqlQuery : string);
  begin
    ADOQuery1.SQL.Text :=  SqlQuery;
  end;
end.
