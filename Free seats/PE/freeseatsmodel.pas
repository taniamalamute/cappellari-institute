unit freeseatsmodel;

interface

uses
  System.SysUtils, System.Classes, Data.Win.ADODB, Data.DB;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery1rownumber: TStringField;
    ADOQuery1attr1: TIntegerField;
    ADOQuery1attr2: TIntegerField;
    ADOQuery1attr3: TIntegerField;
    ADOQuery1attr4: TIntegerField;
    ADOQuery1attr5: TIntegerField;
    ADOQuery1attr6: TIntegerField;
    ADOQuery1attr7: TIntegerField;
    ADOQuery1attr8: TIntegerField;
    ADOQuery1attr9: TIntegerField;
    ADOQuery1attr10: TIntegerField;
    ADOQuery1attr11: TIntegerField;
    ADOQuery1attr12: TIntegerField;
    ADOQuery1attr13: TIntegerField;
    ADOQuery1attr14: TIntegerField;
    ADOQuery1attr15: TIntegerField;
    ADOQuery1attr16: TIntegerField;
    ADOQuery1attr17: TIntegerField;
    ADOQuery1attr18: TIntegerField;
    ADOQuery1attr19: TIntegerField;
    ADOQuery1attr20: TIntegerField;
    ADOQuery1attr21: TIntegerField;
    ADOQuery1attr22: TIntegerField;
    ADOQuery1attr23: TIntegerField;
    ADOQuery1attr24: TIntegerField;
    ADOQuery1attr25: TIntegerField;
    ADOQuery1attr26: TIntegerField;
    ADOQuery1attr27: TIntegerField;
    ADOQuery1attr28: TIntegerField;
    ADOQuery1attr29: TIntegerField;
    ADOQuery1attr30: TIntegerField;
    ADOQuery1attr31: TIntegerField;
    ADOQuery1attr32: TIntegerField;
    ADOQuery1attr33: TIntegerField;
    ADOQuery1attr34: TIntegerField;
    ADOQuery1attr35: TIntegerField;
    ADOQuery1attr36: TIntegerField;
    ADOQuery1attr37: TIntegerField;
    ADOQuery1attr38: TIntegerField;
    ADOQuery1attr39: TIntegerField;
    ADOQuery1attr40: TIntegerField;
    procedure ADOQuery1attr1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr3GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr4GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr5GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr6GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr7GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr8GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr9GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr10GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr11GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr12GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr13GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr14GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr15GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr16GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr17GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr18GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr19GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr20GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr21GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr22GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr23GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr24GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr25GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr26GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr27GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr28GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr29GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr30GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr31GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr32GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr33GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr34GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr35GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr36GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr37GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr38GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr39GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQuery1attr40GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.ADOQuery1attr10GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr11GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr12GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr13GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
 if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr14GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr15GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr16GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr17GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr18GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr19GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr1GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr20GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr21GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr22GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr23GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr24GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr25GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr26GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr27GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr28GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr29GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr2GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr30GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr31GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr32GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr33GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr34GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr35GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr36GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr37GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr38GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr39GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr3GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr40GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr4GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr5GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr6GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr7GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr8GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

procedure TDataModule1.ADOQuery1attr9GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if sender.Value = 0 then text:='X'
end;

end.
