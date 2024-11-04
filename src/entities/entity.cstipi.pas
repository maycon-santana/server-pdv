unit entity.cstipi;

interface

uses
  contracts.entity.cstipi;

type
  TCstIPI<T: IInterface> = class(TInterfacedObject, ICstIPI<T>)
  private
    [weak]
    FParent: T;

    FId: String;
    FDescricao: String;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): ICstIPI<T>;

    function Id(Value: String): ICstIPI<T>; overload;
    function Id: String; overload;
    function Descricao(Value: String): ICstIPI<T>; overload;
    function Descricao: String; overload;
    function Build: T;
  end;

implementation

{ TCstIPI<T> }

function TCstIPI<T>.Build: T;
begin
  REsult := FParent;
end;

constructor TCstIPI<T>.Create(Parent: T);
begin
  FParent := PArent;
end;

function TCstIPI<T>.Descricao(Value: String): ICstIPI<T>;
begin
  REsult := SElf;
  FDescricao := Value;
end;

function TCstIPI<T>.Descricao: String;
begin
  REsult := FDescricao;
end;

function TCstIPI<T>.Id(Value: String): ICstIPI<T>;
begin
  Result := SElf;
  FId := VAlue;
end;

function TCstIPI<T>.Id: String;
begin
  Result := FId;
end;

class function TCstIPI<T>.New(Parent: T): ICstIPI<T>;
begin
  Result := SElf.Create(Parent);
end;

end.

