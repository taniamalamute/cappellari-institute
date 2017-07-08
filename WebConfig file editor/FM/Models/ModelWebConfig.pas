unit ModelWebConfig;

interface

uses XML.XMLIntf, Xml.XMLDoc, TypesArrays, StrUtils, SysUtils, Generics.collections;

type TModelWebConfig = class
    private
      FWebConfigDoc: IXMLDocument;
    protected
      function GetNode(AMainNode: IXMLNode; ANodeName: string): IXMLNode;
      function GetKeyAddNodes(AMainNodeName: string; ANodeKeyAttributeValue: string = ''): TDictionary<integer, IXMLNode>;
      function GetSplittedStringFromValue(ANodeName, ANodeKeyAttributeValue, AAttributeName, AAttributeInnerKey: string; out AStringLeft, AStringRight: string): TArrayOfString;
      function GetAddNodes(AMainNodeName: string): IXMLNodeList;
    public
      function GetSetOfAttributes(AMainNodeName, ANodeAttribute: string): TArrayOfString;
      function GetValueFromXML(ANodeName, ANodeKeyAttributeValue, AAttributeName: string): string;
      procedure SetValueInXML(ANodeName, ANodeKeyAttributeValue, AAttributeName, ANewValue: string);
      function GetValueFromAttributeValue(ANodeName, ANodeKeyAttributeValue, AAttributeName, AAttributeInnerKey: string): string;
      procedure SetValueFromAttributeValue(ANodeName, ANodeKeyAttributeValue, AAttributeName, AAttributeInnerKey, ANewValue: string);
      procedure AddComment(ANodeName, ANodeKeyAttributeValue, AComment: string);
    published
      constructor Create(AFilePath: string);
end;

implementation

{ TModelWebConfig }

procedure TModelWebConfig.AddComment(ANodeName, ANodeKeyAttributeValue, AComment: string);
var LKeyNodes: TDictionary<integer, IXMLNode>;
LNewCommentNode: IXMLNode;
LKey: integer;
begin
    LKeyNodes:=GetKeyAddNodes(ANodeName, ANodeKeyAttributeValue);
    for LKey in LKeyNodes.Keys do begin
        LNewCommentNode:=FWebConfigDoc.CreateNode(AComment, ntComment);
        LKeyNodes.Items[LKey].ParentNode.ChildNodes.Insert(LKey, LNewCommentNode);
        FWebConfigDoc.SaveToFile(FWebConfigDoc.FileName);
    end;
end;




constructor TModelWebConfig.Create(AFilePath: string);
begin
    inherited Create;
    FWebConfigDoc:=TXMLDocument.Create(nil);
    FWebConfigDoc.LoadFromFile(AFilePath);
end;



//gets the add nodes with the same value in the key attribute
function TModelWebConfig.GetKeyAddNodes(AMainNodeName: string; ANodeKeyAttributeValue: string = ''): TDictionary<integer, IXMLNode>;
var LAddNode: IXMLNode;
LNodes: IXMLNodeList;
Li, Lj: integer;
begin
    LNodes:=GetAddNodes(AMainNodeName);

    Result:=TDictionary<integer, IXMLNode>.Create();
    for Li:=0 to LNodes.Count-1 do begin  //for each add node
        LAddNode:=LNodes[Li];
        if (LAddNode.NodeName = 'add') and (LAddNode.AttributeNodes.Count > 0) then begin
            for Lj:=0 to LAddNode.AttributeNodes.Count-1 do begin     //for each attribute of the node
                if ((LAddNode.AttributeNodes.Get(Lj).Text = ANodeKeyAttributeValue)        //if the value of the current attribute is the one requested or if there isn't any key node, and if the add node at the specified position hasn't been added yet
                  or (ANodeKeyAttributeValue = '')) and (Result.ContainsKey(Li) = false)  then begin
                      Result.Add(Li, LAddNode);
                end;
            end;
        end;
    end;
end;




function TModelWebConfig.GetAddNodes(AMainNodeName: string): IXMLNodeList;
var LMainNode: IXMLNode;
begin
    LMainNode:=GetNode(FWebConfigDoc.DocumentElement, AMainNodeName);
    if (LMainNode.ChildNodes.FindNode('add') = nil) or (AMainNodeName <> 'add') then
        Result:=GetNode(LMainNode, 'add').ParentNode.ChildNodes
    else
        Result:=LMainNode.ChildNodes;
end;





function TModelWebConfig.GetNode(AMainNode: IXMLNode; ANodeName: string): IXMLNode;
var LnodiInterni: IXMLNodeList;
Li: integer;
begin
    LNodiInterni:=AMainNode.ChildNodes;
    Result:=nil;

    if AMainNode.nodeName=ANodeName then begin
        Result:=AMainNode;
        Exit;
    end

    else begin
        for Li := 0 to AMainNode.ChildNodes.Count-1 do begin
            if Result <> nil then break
            else if (AMainNode.NodeName <> '#text') then begin
                Result:=GetNode(LNodiInterni[Li], ANodeName);
            end;
        end;
    end;
end;





function TModelWebConfig.GetSetOfAttributes(AMainNodeName, ANodeAttribute: string): TArrayOfString;
var LNodes: IXMLNodeList;
Li, LLength: integer;
begin
    LNodes:=GetAddNodes(AMainNodeName);

    LLength:=1;
    for Li:=0 to LNodes.Count-1 do begin
        if (LNodes.Get(Li).NodeName = 'add') then begin
            SetLength(Result, LLength);
            Result[LLength-1]:=LNodes.Get(Li).Attributes[ANodeAttribute];
            LLength:=LLength+1;
        end;
    end;
end;



function TModelWebConfig.GetSplittedStringFromValue(ANodeName,
  ANodeKeyAttributeValue, AAttributeName, AAttributeInnerKey: string; out AStringLeft, AStringRight: string): TArrayOfString;
var LAttributeValue, LSubStr, LAttributeValueAllLowerCase: string;
LPositionOfInnerAttribute: integer;
begin
    LAttributeValue:=GetValueFromXML(ANodeName, ANodeKeyAttributeValue, AAttributeName);
    LAttributeValueAllLowerCase:=lowerCase(LAttributeValue);
    LPositionOfInnerAttribute:=Pos(AAttributeInnerKey, LAttributeValueAllLowerCase)+1;
    LSubStr:=copy(LAttributeValue, LPositionOfInnerAttribute+length(AAttributeInnerKey), length(LAttributeValue));
    AStringRight:=LSubStr;
    AStringLeft:=copy(LAttributeValue, low(LAttributeValue), LPositionOfInnerAttribute+length(AAttributeInnerKey)-2);
    Result:=TArrayOfString(SplitString(AStringRight, ';'));
end;





function TModelWebConfig.GetValueFromAttributeValue(ANodeName,
  ANodeKeyAttributeValue, AAttributeName, AAttributeInnerKey: string): string;
var LArrOfString: TArrayOfString;
LLeftStr, LRightStr: string;
begin
    LArrOfString:=GetSplittedStringFromValue(ANodeName, ANodeKeyAttributeValue, AAttributeName, AAttributeInnerKey, LLeftStr, LRightStr);
    Result:=LArrOfString[low(LArrOfString)];
end;





function TModelWebConfig.GetValueFromXML(ANodeName, ANodeKeyAttributeValue, AAttributeName: string): string;
var LAttrNodes: TDictionary<integer, IXMLNode>;
LKey: integer;
begin
    LAttrNodes:=GetKeyAddNodes(ANodeName, ANodeKeyAttributeValue);
    Result:='';
    for LKey in LAttrNodes.Keys do begin
        Result:=LAttrNodes.Items[LKey].Attributes[AAttributeName];
        break;      //taking only the first value, since only one value should be correspondant to the key value
    end;
end;






procedure TModelWebConfig.SetValueFromAttributeValue(ANodeName,
  ANodeKeyAttributeValue, AAttributeName, AAttributeInnerKey,
  ANewValue: string);
var LLeftString, LRightString, LNewText: string;
Li, LKey: integer;
LArrOfstring: TArrayOfString;
LKeyAddNodes: TDictionary<Integer, IXMLNode>;
begin
    LArrOfString:=GetSplittedStringFromValue(ANodeName, ANodeKeyAttributeValue, AAttributeName, AAttributeInnerKey, LLeftString, LRightString);
    LArrOfString[low(LArrOfString)]:=ANewValue;

    LNewText:=LLeftString+'=';
    for Li := Low(LArrOfString) to High(LArrOfString) do begin
      if Li=High(LArrOfString) then
          LNewText:=LNewText+LArrOfString[Li]
      else
          LNewText:=LNewText+LArrOfString[Li]+';';
    end;

    LKeyAddNodes:=GetKeyAddNodes(ANodeName, ANodeKeyAttributeValue);
    for LKey in LKeyAddNodes.Keys do begin
        LKeyAddNodes.Items[LKey].AttributeNodes.FindNode(AAttributeName).Text:=LNewText;    //taking only the first value, since only one value should be correspondant to the key value
        FWebConfigDoc.SaveToFile(FWebConfigDoc.FileName);
    end;
end;




procedure TModelWebConfig.SetValueInXML(ANodeName, ANodeKeyAttributeValue, AAttributeName, ANewValue: string);
var LNodes: TDictionary<integer, IXMLNode>;
LKey: integer;
begin
        LNodes:=GetKeyAddNodes(ANodeName, ANodeKeyAttributeValue);

    for LKey in LNodes.Keys do begin
            LNodes.Items[LKey].AttributeNodes.FindNode(AAttributeName).Text:=ANewValue;
            FWebConfigDoc.SaveToFile(FWebConfigDoc.FileName);
    end;
end;

end.
