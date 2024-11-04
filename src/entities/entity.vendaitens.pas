unit entity.vendaitens;

interface

uses
  System.Generics.Collections,
  contracts.entity.produtos,
  contracts.entity.vendaitens;

type
  TVendaItens<T: IInterface> = class(TInterfacedObject, IVendaItens<T>)
  private
    FParent: T;

    FId: String;
    FProduto: IProdutos;
    FProdutos: TList<IProdutos>;
    FQuantidade: Currency;
    FValorUnitario: Currency;
    FSubTotal: Currency;
    FDesconto: Currency;
    FTotal: Currency;
    FComissao: Currency;
    FValorComissao: Currency;
    FCreatedAt: TDateTime;
    FUpdatedAt: TDateTime;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): IVendaItens<T>;

    function Id(Value: String): IVendaItens<T>; overload;
    function Id: String; overload;
    function Produto(Value: IProdutos): IVendaItens<T>; overload;
    function Produtos: TList<IProdutos>;
    function Quantidade(Value: Currency): IVendaItens<T>; overload;
    function Quantidade: Currency; overload;
    function ValorUnitario(Value: Currency): IVendaItens<T>; overload;
    function ValorUnitario: Currency; overload;
    function SubTotal(Value: Currency): IVendaItens<T>; overload;
    function SubTotal: Currency; overload;
    function Desconto(Value: Currency): IVendaItens<T>; overload;
    function Desconto: Currency; overload;
    function Total(Value: Currency): IVendaItens<T>; overload;
    function Total: Currency; overload;
    function Comissao(Value: Currency): IVendaItens<T>; overload;
    function Comissao: Currency; overload;
    function ValorComissao(Value: Currency): IVendaItens<T>; overload;
    function ValorComissao: Currency; overload;
    function CreatedAt(Value: TDateTime): IVendaItens<T>; overload;
    function CreatedAt: TDateTime; overload;
    function UpdatedAt(Value: TDateTime): IVendaItens<T>; overload;
    function UpdatedAt: TDateTime; overload;
    function Build: T;
  end;

implementation

{ TVendaItens<T> }

function TVendaItens<T>.Build: T;
begin
  Result := FParent;
end;

function TVendaItens<T>.Comissao(Value: Currency): IVendaItens<T>;
begin
  Result := SElf;
  FComissao := Value;
end;

function TVendaItens<T>.Comissao: Currency;
begin
  Result := FComissao;
end;

constructor TVendaItens<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

function TVendaItens<T>.CreatedAt: TDateTime;
begin
  Result := FCreatedAt;
end;

function TVendaItens<T>.CreatedAt(Value: TDateTime): IVendaItens<T>;
begin
  Result := SElf;
  FCreatedAt := Value;
end;

function TVendaItens<T>.Desconto: Currency;
begin
  Result := FDesconto;
end;

function TVendaItens<T>.Desconto(Value: Currency): IVendaItens<T>;
begin
  Result := SElf;
  FDesconto := Value;
end;

function TVendaItens<T>.Id: String;
begin
  Result := Fid;
end;

function TVendaItens<T>.Id(Value: String): IVendaItens<T>;
begin
  Result := SElf;
  FId := Value;
end;

class function TVendaItens<T>.New(Parent: T): IVendaItens<T>;
begin
  Result := SElf.Create(Parent);
end;

function TVendaItens<T>.Produto(Value: IProdutos): IVendaItens<T>;
begin
  Result := SElf;
  FProduto := Value;
end;

function TVendaItens<T>.Produtos: TList<IProdutos>;
begin
  REsult := FProdutos;
end;

function TVendaItens<T>.Quantidade: Currency;
begin
  Result := FQuantidade;
end;

function TVendaItens<T>.Quantidade(Value: Currency): IVendaItens<T>;
begin
  Result := SElf;
  FQuantidade := Value;
end;

function TVendaItens<T>.SubTotal(Value: Currency): IVendaItens<T>;
begin
  Result := SElf;
  FSubTotal := Value;
end;

function TVendaItens<T>.SubTotal: Currency;
begin
  Result := FSubTotal;
end;

function TVendaItens<T>.Total: Currency;
begin
  Result := FTotal;
end;

function TVendaItens<T>.Total(Value: Currency): IVendaItens<T>;
begin
  Result := SElf;
  FTotal := Value;
end;

function TVendaItens<T>.UpdatedAt(Value: TDateTime): IVendaItens<T>;
begin
  Result := SElf;
  FUpdatedAt := Value;
end;

function TVendaItens<T>.UpdatedAt: TDateTime;
begin
  Result := FUpdatedAt;
end;

function TVendaItens<T>.ValorComissao(Value: Currency): IVendaItens<T>;
begin
  Result := SElf;
  FValorComissao := Value;
end;

function TVendaItens<T>.ValorComissao: Currency;
begin
  Result := FValorComissao;
end;

function TVendaItens<T>.ValorUnitario: Currency;
begin
  Result := FValorComissao;
end;

function TVendaItens<T>.ValorUnitario(Value: Currency): IVendaItens<T>;
begin
  Result := SElf;
  FValorUnitario := Value;
end;

end.

