unit entity.origem;

interface

uses
  contracts.entity.origem;

type
  TOrigem<T: IInterface> = class(TInterfacedObject, IOrigem<T>)
  private
    FParent: T;

    FId: String;
    FDescricao: String;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): IOrigem<T>;

    function Id(Value: String): IOrigem<T>; overload;
    function Id: String; overload;
    function Descricao(Value: String): IOrigem<T>; overload;
    function Descricao: String; overload;
    function Build: T;
  end;

implementation

{ TOrigem<T> }

function TOrigem<T>.Build: T;
begin
  Result := FParent;
end;

constructor TOrigem<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

function TOrigem<T>.Descricao(Value: String): IOrigem<T>;
begin
  Result := SElf;
  FDescricao := Value;
end;

function TOrigem<T>.Descricao: String;
begin
  Result := FDescricao;
end;

function TOrigem<T>.Id(Value: String): IOrigem<T>;
begin
  Result := SElf;
  FId := Value;
end;

function TOrigem<T>.Id: String;
begin
  REsult := FId;
end;

class function TOrigem<T>.New(Parent: T): IOrigem<T>;
begin
  Result := SElf.Create(Parent);
end;

end.

