unit entity.cst;

interface

uses
  contracts.entity.cst;

type
  TCST<T: IInterface> = class(TInterfacedObject, ICST<T>)
  private
    FParent: T;

    FId: String;
    FDescricao: String;
    FSimplesNacional: String;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): ICST<T>;

    function Id(Value: String): ICST<T>; overload;
    function Id: String; overload;
    function Descricao(Value: String): ICST<T>; overload;
    function Descricao: String; overload;
    function SimplesNacional(Value: String): ICST<T>; overload;
    function SimplesNacional: String; overload;
    function Build: T;
  end;

implementation

{ TCST<T> }

function TCST<T>.Build: T;
begin
  Result := FParent;
end;

constructor TCST<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

function TCST<T>.Descricao(Value: String): ICST<T>;
begin
  Result := SElf;
  FDescricao := Value;
end;

function TCST<T>.Descricao: String;
begin
  Result := FDescricao;
end;

function TCST<T>.Id(Value: String): ICST<T>;
begin
  REsult := SElf;
  FId := VAlue;
end;

function TCST<T>.Id: String;
begin
  Result := FId;
end;

class function TCST<T>.New(Parent: T): ICST<T>;
begin
  REsult := SElf.Create(Parent);
end;

function TCST<T>.SimplesNacional(Value: String): ICST<T>;
begin
  Result := Self;
  FSimplesNacional := VAlue;
end;

function TCST<T>.SimplesNacional: String;
begin
  Result := FSimplesNacional;
end;

end.

