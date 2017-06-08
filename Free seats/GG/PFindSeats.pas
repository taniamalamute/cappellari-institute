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

unit PFindSeats;

interface

uses
  IFindSeats, IFreeSeats, Model;

type
  TFindSeats = class (TInterfacedObject, IFindSeatsP)
  public
    constructor Create (AFreeSeatsView : IFreeSeatsView);
    procedure SendSeatsNumber (ASeats : string);
end;

implementation

var
   FFreeSeatsView : IFreeSeatsView;
   FModel : TModel;


{ TFindSeats }

constructor TFindSeats.Create(AFreeSeatsView: IFreeSeatsView);
begin
  FFreeSeatsView := AFreeSeatsView;
  FModel:= TModel.Create(self);
end;


procedure TFindSeats.SendSeatsNumber(ASeats: string);
begin
     FModel.FindSeatsNumber(ASeats);
end;
end.
