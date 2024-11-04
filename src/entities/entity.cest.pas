unit entity.cest;

interface

uses
  contracts.entity.cest;

type
  TCest<T: IInterface> = class(TInterfacedObject, ICest<T>)
  private
    FParent: T;

    FId: string;
    FNCM: string;
    FDescricao: string;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): ICest<T>;

    function Id(Value: string): ICest<T>; overload;
    function Id: string; overload;
    function NCM(Value: string): ICest<T>; overload;
    function NCM: string; overload;
    function Descricao(Value: string): ICest<T>; overload;
    function Descricao: string; overload;
    function Build: T;
  end;

implementation

{ TCest<T> }

function TCest<T>.Build: T;
begin
  Result := FParent;
end;

constructor TCest<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

function TCest<T>.Descricao(Value: string): ICest<T>;
begin
  REsult := SElf;
  FDescricao := Value;
end;

function TCest<T>.Descricao: string;
begin
  Result := FDescricao;
end;

function TCest<T>.Id(Value: string): ICest<T>;
begin
  Result := SElf;
  FId := Value;
end;

function TCest<T>.Id: string;
begin
  Result := FId;
end;

function TCest<T>.NCM(Value: string): ICest<T>;
begin
  Result := SElf;
  FNCM := Value;
end;

function TCest<T>.NCM: string;
begin
  REsult := FNCM;
end;

class function TCest<T>.New(Parent: T): ICest<T>;
begin
  Result := SElf.Create(Parent);
end;

end.

