unit DataModuleFreeSeats;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModFreeSeats = class(TDataModule)
    Connection: TADOConnection;
    QueryFreeSeats: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const QueryFreeSeatsEnd: string = ' CLOSE @cursorePosti DEALLOCATE @cursorePosti DROP TABLE #PostiLiberi';
var
  DataModFreeSeats: TDataModFreeSeats;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
