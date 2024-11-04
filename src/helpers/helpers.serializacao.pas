unit helpers.serializacao;

interface

uses
  System.JSON,
  System.Generics.Collections,
  entity.empresa,
  GBJSON.Interfaces;

type
  ISerializacao<T: Class> = interface
    function ToJSON: TJSONObject;
    function ToArray(Value: TObjectList<T>): TJSONArray;
    function ToList(Value: TJSONArray): TObjectList<T>;
    function ToObject(Value: String): T;
  end;

  TSerializacao<T: Class, constructor> = class(TInterfacedObject, ISerializacao<T>)
  private
    FParent: T;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): ISerializacao<T>;

    function ToJSON: TJSONObject;
    function ToArray(Value: TObjectList<T>): TJSONArray;
    function ToList(Value: TJSONArray): TObjectList<T>;
    function ToObject(Value: String): T;
  end;

implementation

{ TSerializacao<T> }

constructor TSerializacao<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

class function TSerializacao<T>.New(Parent: T): ISerializacao<T>;
begin
  REsult := Self.Create(Parent);
end;

function TSerializacao<T>.ToArray(Value: TObjectList<T>): TJSONArray;
begin
  Result := TGBJSONDefault.Deserializer<T>.ListToJSONArray(Value);
end;

function TSerializacao<T>.ToJSON: TJSONObject;
begin
  Result := TGBJSONDefault.Deserializer<T>.ObjectToJsonObject(FParent);
end;

function TSerializacao<T>.ToList(Value: TJSONArray): TObjectList<T>;
begin
  Result := TGBJSONDefault.Serializer<T>.JsonArrayToList(Value);
end;

function TSerializacao<T>.ToObject(Value: String): T;
begin
  Result := TGBJSONDefault.Serializer<T>.JsonStringToObject(Value);
end;

end.

