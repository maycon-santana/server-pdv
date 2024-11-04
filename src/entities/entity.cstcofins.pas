unit entity.cstcofins;

interface

uses
  contracts.entity.cstcofins;

type
  TCstCofins<T: IInterface> = class(TInterfacedObject, ICstCofins<T>)
  private
    FParent: T;

    FId: String;
    FDescricao: String;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): ICstCofins<T>;

    function Id(Value: String): ICstCofins<T>; overload;
    function Id: String; overload;
    function Descricao(Value: String): ICstCofins<T>; overload;
    function Descricao: String; overload;
    function Build: T;
  end;

implementation

{ TCstCofins<T> }

function TCstCofins<T>.Build: T;
begin
  Result := FParent;
end;

constructor TCstCofins<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

function TCstCofins<T>.Descricao(Value: String): ICstCofins<T>;
begin
  Result := Self;
  FDescricao := Value;
end;

function TCstCofins<T>.Descricao: String;
begin
  Result := FDescricao;
end;

function TCstCofins<T>.Id(Value: String): ICstCofins<T>;
begin
  REsult := Self;
  FId := Value;
end;

function TCstCofins<T>.Id: String;
begin
  REsult := FId;
end;

class function TCstCofins<T>.New(Parent: T): ICstCofins<T>;
begin
  REsult := SElf.Create(Parent);
end;

end.

