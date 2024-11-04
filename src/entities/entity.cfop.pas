unit entity.cfop;

interface

uses
  contracts.entity.cfop;

type
  TCfop<T: IInterface> = class(TInterfacedObject, ICfop<T>)
  private
    FParent: T;

    FId: string;
    FDescricao: string;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): ICfop<T>;

    function Id(Value: string): ICfop<T>; overload;
    function Id: string; overload;
    function Descricao(Value: string): ICfop<T>; overload;
    function Descricao: string; overload;
    function Build: T;
  end;

implementation

{ TCfop<T> }

function TCfop<T>.Build: T;
begin
  Result := FParent;
end;

constructor TCfop<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

function TCfop<T>.Descricao(Value: string): ICfop<T>;
begin
  Result := SElf;
  FDescricao := VAlue;
end;

function TCfop<T>.Descricao: string;
begin
  Result := FDescricao;
end;

function TCfop<T>.Id(Value: string): ICfop<T>;
begin
  Result := Self;
  FId := VAlue;
end;

function TCfop<T>.Id: string;
begin
  REsult := FId;
end;

class function TCfop<T>.New(Parent: T): ICfop<T>;
begin
  Result := SElf.Create(Parent);
end;

end.

