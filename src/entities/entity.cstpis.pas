unit entity.cstpis;

interface

uses
  contracts.entity.cstpis;

type
  TCstPis<T: IInterface> = class(TInterfacedObject, ICstPis<T>)
  private
    FParent: T;

    FId: String;
    FDescricao: String;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): ICstPis<T>;

    function Id(Value: String): ICstPis<T>; overload;
    function Id: String; overload;
    function Descricao(Value: String): ICstPis<T>; overload;
    function Descricao: String; overload;
    function Build: T;
  end;

implementation

{ TCstPis<T> }

function TCstPis<T>.Build: T;
begin
  REsult := FParent;
end;

constructor TCstPis<T>.Create(Parent: T);
begin
  FParent := PArent;
end;

function TCstPis<T>.Descricao(Value: String): ICstPis<T>;
begin
  Result := SElf;
  FDescricao := Value;
end;

function TCstPis<T>.Descricao: String;
begin
  REsult := FDescricao;
end;

function TCstPis<T>.Id(Value: String): ICstPis<T>;
begin
  Result := SElf;
  FId := VAlue;
end;

function TCstPis<T>.Id: String;
begin
  Result := FID;
end;

class function TCstPis<T>.New(Parent: T): ICstPis<T>;
begin
  Result := Self.Create(Parent);
end;

end.

