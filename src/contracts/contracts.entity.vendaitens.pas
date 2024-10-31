unit contracts.entity.vendaitens;

interface

uses
  System.Generics.Collections,
  contracts.entity.produtos;

type
  IVendaItens<T: IInterface> = interface
    ['{6F3427EB-B4E6-4DDA-AB46-4AFF65D5833E}']
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

end.
