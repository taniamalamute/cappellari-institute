unit freeseatspresenter;

interface

uses freeseatsinterface,freeseatsmodel;
const postiperfila =40;
type
tseatpresenter =class
  protected
  Fseatview:Iseatview;
  public
  Constructor create(Aseatview: Iseatview);
  procedure eseguicontrollo;
end;

implementation

uses system.sysutils,system.classes;

Constructor tseatpresenter.create(Aseatview: Iseatview);
begin
  Fseatview:=Aseatview;
end;

procedure tseatpresenter.eseguicontrollo;
var Lgetval:integer;
Lindice,lconta:integer;
Lstringapp,Lcamponome,Lcondizione1:string;
begin
lgetval:=Fseatview.Getvalue;
Lcondizione1:='with free as (select rownumber, seatnumber, taken, row_number() over (partition by rownumber order by seatnumber) as numeraliberi from RoomsAndSeats ';
Lcondizione1:=Lcondizione1+ 'where taken = 0),';
Lcondizione1:=Lcondizione1+ 'adiacenti as (select rownumber, seatnumber, taken, count(*) over (partition by rownumber, seatnumber-numeraliberi) as consecutivi ';
Lcondizione1:=Lcondizione1+ 'from free), estratti as (select * from adiacenti where ';
Lcondizione1:=Lcondizione1+ 'consecutivi>='+ inttostr(lgetval) +') ';

Lcondizione1:=Lcondizione1+ 'SELECT rownumber, ';
for Lconta:=1 to postiperfila-1 do
begin
Lcondizione1:=Lcondizione1+ 'count(CASE WHEN seatnumber = '+ inttostr(Lconta)+ ' THEN taken END) AS attr'+ inttostr(Lconta);
lcondizione1:=Lcondizione1+',';
end;
Lcondizione1:=Lcondizione1+ 'count(CASE WHEN seatnumber = '+ inttostr(postiperfila)+ ' THEN taken END) AS attr'+ inttostr(postiperfila);
Lcondizione1:=Lcondizione1+ ' FROM estratti GROUP BY rownumber';
//showmessage(condizione1);

//DataModule1.DataSource1.DataSet.Open;
DataModule1.DataSource2.DataSet.Open;
DataModule1.ADOQuery1.sql.Clear;
DataModule1.ADOQuery1.SQL.Add(Lcondizione1);
DataModule1.ADOQuery1.Open;
DataModule1.ADOQuery1.first;

while(not DataModule1.ADOQuery1.EOF)do begin
  Lstringapp:=(DataModule1.ADOQuery1.FieldByName('rownumber').AsString);
  for Lindice := 1 to postiperfila do
  begin
     Lcamponome:='attr'+inttostr(lindice);
      if DataModule1.ADOQuery1.FieldByName(Lcamponome).Asinteger =1 then
      begin
        Lstringapp:=Lstringapp+'-'+inttostr(Lindice);
      end;
  end;
   Fseatview.popolamemo(Lstringapp);
   Lstringapp:='';
   DataModule1.ADOQuery1.Next;
end;

 // Fseatview.DisplayMessage('eseguo controllo');

end;

end.
