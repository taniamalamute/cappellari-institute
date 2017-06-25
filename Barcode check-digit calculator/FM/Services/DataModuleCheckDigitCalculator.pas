unit DataModuleCheckDigitCalculator;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModuleCheckDigit = class(TDataModule)
    ConnectionCD: TADOConnection;
    QueryFunctionCheckDigit: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleCheckDigit: TDataModuleCheckDigit;
const
  QueryFunctionCheckDigitEnd: string = ');';

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
