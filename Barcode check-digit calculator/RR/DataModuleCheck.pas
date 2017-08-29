unit DataModuleCheck;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, ICheck;

type

  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
  protected
    VDataMod: ICheckView;
  public
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


end.
