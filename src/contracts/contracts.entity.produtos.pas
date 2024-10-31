unit contracts.entity.produtos;

interface

uses
  contracts.entity.empresa,
  contracts.entity.unidades,
  contracts.entity.marcas;

type
  IProdutos = interface
    ['{3165A025-23BF-4B6D-989A-F3DDC67B867F}']
    function Id(Value: String): IProdutos; overload;
    function Id: String; overload;
    function Empresa(Value: IEmpresa): IProdutos; overload;
    function Empresa: IEmpresa; overload;
    function Unidade(Value: IUnidades): IProdutos; overload;
    function Unidade: IUnidades; overload;
    function Marca(Value: IMarcas): IProdutos; overload;
    function Marca: IMarcas; overload;
    function Gtin(Value: String): IProdutos; overload;
    function Gtin: String; overload;
    function CodigoInterno(Value: String): IProdutos; overload;
    function CodigoInterno: String; overload;
    function NCM(Value: String): IProdutos; overload;
    function NCM: String; overload;
    function Nome(Value: String): IProdutos; overload;
    function Nome: String; overload;
    function Descricao(Value: String): IProdutos; overload;
    function Descricao: String; overload;
    function DescricaoPDV(Value: String): IProdutos; overload;
    function DescricaoPDV: String; overload;
    function ValorCompra(Value: Currency): IProdutos; overload;
    function ValorCompra: Currency; overload;
    function ValorVenda(Value: Currency): IProdutos; overload;
    function ValorVenda: Currency; overload;
    function PrecoVendaMinimo(Value: Currency): IProdutos; overload;
    function PrecoVendaMinimo: Currency; overload;
    function PrecoLucroZero(Value: Currency): IProdutos; overload;
    function PrecoLucroZero: Currency; overload;
    function PrecoLucroMinimo(Value: Currency): IProdutos; overload;
    function PrecoLucroMinimo: Currency; overload;
    function PrecoLucroMaximo(Value: Currency): IProdutos; overload;
    function PrecoLucroMaximo: Currency; overload;
    function QuantidadeEstoque(Value: Currency): IProdutos; overload;
    function QuantidadeEstoque: Currency; overload;
    function QuantidadeEstoqueAnterior(Value: Currency): IProdutos; overload;
    function QuantidadeEstoqueAnterior: Currency; overload;
    function EstoqueMinimo(Value: Currency): IProdutos; overload;
    function EstoqueMinimo: Currency; overload;
    function EstoqueMaximo(Value: Currency): IProdutos; overload;
    function EstoqueMaximo: Currency; overload;
    function EstoqueIdeal(Value: Currency): IProdutos; overload;
    function EstoqueIdeal: Currency; overload;
    function Excluido(Value: String): IProdutos; overload;
    function Excluido: String; overload;
    function Inativo(Value: String): IProdutos; overload;
    function Inativo: String; overload;
    function DataCadastro(Value: TDate): IProdutos; overload;
    function DataCadastro: TDate; overload;
    function FotoProduto(Value: String): IProdutos; overload;
    function FotoProduto: String; overload;
    function IAT(Value: String): IProdutos; overload;
    function IAT: String; overload;
    function IBPT(Value: String): IProdutos; overload;
    function IBPT: String; overload;
    function TipoItemSped(Value: String): IProdutos; overload;
    function TipoItemSped: String; overload;
    function CreatedAt(Value: TDateTime): IProdutos; overload;
    function CreatedAt: TDateTime; overload;
    function UpdatedAt(Value: TDateTime): IProdutos; overload;
    function UpdatedAt: TDateTime; overload;
    function Build: IProdutos;
  end;

implementation

end.
