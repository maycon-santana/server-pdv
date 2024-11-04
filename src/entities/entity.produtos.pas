unit entity.produtos;

interface

uses
  contracts.entity.empresa,
  contracts.entity.unidades,
  contracts.entity.marcas,
  contracts.entity.produtos;

type
  TProdutos = class(TInterfacedObject, IProdutos)
  private
    FId: String;
    FEmpresa: IEmpresa;
    FUnidade: IUnidades;
    FMarca: IMarcas;
    FGtin: String;
    FCodigoInterno: String;
    FNCM: String;
    FNome: String;
    FDescricao: String;
    FDescricaoPDV: String;
    FValorCompra: Currency;
    FValorVenda: Currency;
    FPrecoVendaMinimo: Currency;
    FPrecoLucroZero: Currency;
    FPrecoLucroMinimo: Currency;
    FPrecoLucroMaximo: Currency;
    FQuantidadeEstoque: Currency;
    FQuantidadeEstoqueAnterior: Currency;
    FEstoqueMinimo: Currency;
    FEstoqueMaximo: Currency;
    FEstoqueIdeal: Currency;
    FExcluido: String;
    FInativo: String;
    FDataCadastro: TDate;
    FFotoProduto: String;
    FIAT: String;
    FIBPT: String;
    FTipoItemSped: String;
    FCreatedAt: TDateTime;
    FUpdatedAt: TDateTime;
  public
    class function New: IProdutos;

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

{ TProdutos }

function TProdutos.Build: IProdutos;
begin
  Result := SElf;
end;

function TProdutos.CodigoInterno: String;
begin
  REsult := FCodigoInterno;
end;

function TProdutos.CodigoInterno(Value: String): IProdutos;
begin
  REsult := SElf;
  FCodigoInterno := VAlue;
end;

function TProdutos.CreatedAt(Value: TDateTime): IProdutos;
begin
  REsult := SElf;
  FCreatedAt := VAlue;
end;

function TProdutos.CreatedAt: TDateTime;
begin
  REsult := FCreatedAt;
end;

function TProdutos.DataCadastro(Value: TDate): IProdutos;
begin
  REsult := SElf;
  FDataCadastro := VAlue;
end;

function TProdutos.DataCadastro: TDate;
begin
  REsult := FDataCadastro;
end;

function TProdutos.Descricao(Value: String): IProdutos;
begin
  REsult := SElf;
  FDescricao := VAlue;
end;

function TProdutos.Descricao: String;
begin
  REsult := FDescricao;
end;

function TProdutos.DescricaoPDV: String;
begin
  REsult := FDescricaoPDV;
end;

function TProdutos.DescricaoPDV(Value: String): IProdutos;
begin
  REsult := SElf;
  FDescricaoPDV := VAlue;
end;

function TProdutos.Empresa(Value: IEmpresa): IProdutos;
begin
  REsult := SElf;
  FEmpresa := VAlue;
end;

function TProdutos.Empresa: IEmpresa;
begin
  REsult := FEmpresa;
end;

function TProdutos.EstoqueIdeal(Value: Currency): IProdutos;
begin
  REsult := SElf;
  FEstoqueIdeal := VAlue;
end;

function TProdutos.EstoqueIdeal: Currency;
begin
  REsult := FEstoqueIdeal;
end;

function TProdutos.EstoqueMaximo: Currency;
begin
  REsult := FEstoqueMaximo;
end;

function TProdutos.EstoqueMaximo(Value: Currency): IProdutos;
begin
  REsult := SElf;
  FEstoqueMaximo := VAlue;
end;

function TProdutos.EstoqueMinimo(Value: Currency): IProdutos;
begin
  REsult := SElf;
  FEstoqueMinimo := VAlue;
end;

function TProdutos.EstoqueMinimo: Currency;
begin
  REsult := FEstoqueMinimo;
end;

function TProdutos.Excluido: String;
begin
  REsult := FExcluido;
end;

function TProdutos.Excluido(Value: String): IProdutos;
begin
  REsult := SElf;
  FExcluido := VAlue;
end;

function TProdutos.FotoProduto: String;
begin
  REsult := FFotoProduto;
end;

function TProdutos.FotoProduto(Value: String): IProdutos;
begin
  REsult := SElf;
  FFotoProduto := VAlue;
end;

function TProdutos.Gtin(Value: String): IProdutos;
begin
  REsult := SElf;
  FGtin := VAlue;
end;

function TProdutos.Gtin: String;
begin
  REsult := FGtin;
end;

function TProdutos.IAT(Value: String): IProdutos;
begin
  REsult := SElf;
  FIAT := VAlue;
end;

function TProdutos.IAT: String;
begin
  REsult := FIAT;
end;

function TProdutos.IBPT: String;
begin
  REsult := FIBPT;
end;

function TProdutos.IBPT(Value: String): IProdutos;
begin
  REsult := SElf;
  FIBPT := VAlue;
end;

function TProdutos.Id(Value: String): IProdutos;
begin
  REsult := SElf;
  FId := VAlue;
end;

function TProdutos.Id: String;
begin
  REsult := FId;
end;

function TProdutos.Inativo(Value: String): IProdutos;
begin
  REsult := SElf;
  FInativo:= VAlue;
end;

function TProdutos.Inativo: String;
begin
  REsult := FInativo;
end;

function TProdutos.Marca: IMarcas;
begin
  Result := FMarca;
end;

function TProdutos.Marca(Value: IMarcas): IProdutos;
begin
  REsult := SElf;
  FMarca := VAlue;
end;

function TProdutos.NCM: String;
begin
  REsult := FNCM;
end;

function TProdutos.NCM(Value: String): IProdutos;
begin
  REsult := SElf;
  FNCM := VAlue;
end;

class function TProdutos.New: IProdutos;
begin
  Result := SElf.Create;
end;

function TProdutos.Nome(Value: String): IProdutos;
begin
  REsult := SElf;
  FNome := VAlue;
end;

function TProdutos.Nome: String;
begin
  REsult := FNome;
end;

function TProdutos.PrecoLucroMaximo: Currency;
begin
  REsult := FPrecoLucroMaximo;
end;

function TProdutos.PrecoLucroMaximo(Value: Currency): IProdutos;
begin
  REsult := SElf;
  FPrecoLucroMaximo := VAlue;
end;

function TProdutos.PrecoLucroMinimo: Currency;
begin
  REsult := FPrecoVendaMinimo;
end;

function TProdutos.PrecoLucroMinimo(Value: Currency): IProdutos;
begin
  REsult := SElf;
  FPrecoVendaMinimo := VAlue;
end;

function TProdutos.PrecoLucroZero: Currency;
begin
  REsult := FPrecoLucroZero;
end;

function TProdutos.PrecoLucroZero(Value: Currency): IProdutos;
begin
  REsult := SElf;
  FPrecoLucroZero := VAlue;
end;

function TProdutos.PrecoVendaMinimo(Value: Currency): IProdutos;
begin
  REsult := SElf;
  FPrecoVendaMinimo := VAlue;
end;

function TProdutos.PrecoVendaMinimo: Currency;
begin
  REsult := FPrecoVendaMinimo;
end;

function TProdutos.QuantidadeEstoque(Value: Currency): IProdutos;
begin
  REsult := SElf;
  FQuantidadeEstoque := VAlue;
end;

function TProdutos.QuantidadeEstoque: Currency;
begin
  REsult := FQuantidadeEstoque;
end;

function TProdutos.QuantidadeEstoqueAnterior: Currency;
begin
  REsult := FQuantidadeEstoqueAnterior;
end;

function TProdutos.QuantidadeEstoqueAnterior(Value: Currency): IProdutos;
begin
  REsult := SElf;
  FQuantidadeEstoqueAnterior := VAlue;
end;

function TProdutos.TipoItemSped(Value: String): IProdutos;
begin
  REsult := SElf;
  FTipoItemSped := VAlue;
end;

function TProdutos.TipoItemSped: String;
begin
  REsult := FTipoItemSped;
end;

function TProdutos.Unidade(Value: IUnidades): IProdutos;
begin
  REsult := SElf;
  FUnidade := VAlue;
end;

function TProdutos.Unidade: IUnidades;
begin
  REsult := FUnidade;
end;

function TProdutos.UpdatedAt: TDateTime;
begin
  REsult := FUpdatedAt;
end;

function TProdutos.UpdatedAt(Value: TDateTime): IProdutos;
begin
  REsult := SElf;
  FUpdatedAt := VAlue;
end;

function TProdutos.ValorCompra: Currency;
begin
  REsult := FValorCompra;
end;

function TProdutos.ValorCompra(Value: Currency): IProdutos;
begin
  REsult := SElf;
  FValorCompra := VAlue;
end;

function TProdutos.ValorVenda: Currency;
begin
  REsult := FValorVenda;
end;

function TProdutos.ValorVenda(Value: Currency): IProdutos;
begin
  REsult := SElf;
  FValorVenda := VAlue;
end;

end.

