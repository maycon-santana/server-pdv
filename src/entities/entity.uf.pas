unit entity.uf;

interface

uses
  contracts.entity.uf;

type
  TUf<T: IInterface> = class(TInterfacedObject, IUf<T>)
  private
    FParent: T;

    FId: String;
    FDescricao: String;
    FCodIbge: String;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): IUf<T>;

    function Id(Value: String): IUf<T>; overload;
    function Id: String; overload;
    function Descricao(Value: String): IUf<T>; overload;
    function Descricao: String; overload;
    function CodIbge(Value: String): IUf<T>; overload;
    function CodIbge: String; overload;
    function Build: T;
  end;

implementation

{ TUf<T> }

function TUf<T>.Build: T;
begin
  REsult := FParent;
end;

function TUf<T>.CodIbge(Value: String): IUf<T>;
begin
  REsult := SElf;
  FCodIbge := Value;
end;

function TUf<T>.CodIbge: String;
begin
  Result := FCodIbge;
end;

constructor TUf<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

function TUf<T>.Descricao(Value: String): IUf<T>;
begin
  Result := SElf;
  FDescricao := Value;
end;

function TUf<T>.Descricao: String;
begin
  REsult := FDescricao;
end;

function TUf<T>.Id: String;
begin
  REsult := FId;
end;

function TUf<T>.Id(Value: String): IUf<T>;
begin
  Result := SElf;
  FId := VAlue;
end;

class function TUf<T>.New(Parent: T): IUf<T>;
begin
  REsult := SElf.Create(Parent);
end;

end.

