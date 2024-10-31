unit contracts.entity.notasfiscaisitens;

interface

uses
  contracts.entity.cest,
  contracts.entity.cst,
  contracts.entity.origem,
  contracts.entity.unidades,
  contracts.entity.cfop,
  contracts.entity.produtos,
  contracts.entity.cstpis,
  contracts.entity.cstcofins;

type
  INotasFiscaisItens<T: IInterface> = interface
    ['{3780A1B5-C8E6-4291-A2CE-A52F35121B6B}']
    function Serie(Value: Integer): INotasFiscaisItens<T>; overload;
    function Serie: Integer; overload;
    function Numero(Value: Integer): INotasFiscaisItens<T>; overload;
    function Numero: Integer; overload;
    function Item(Value: Integer): INotasFiscaisItens<T>; overload;
    function Item: Integer; overload;
    function Produto(Value: IProdutos): INotasFiscaisItens<T>; overload;
    function Produto: IProdutos; overload;
    function Gtin(Value: string): INotasFiscaisItens<T>; overload;
    function Gtin: string; overload;
    function Descricao(Value: string): INotasFiscaisItens<T>; overload;
    function Descrica: string; overload;
    function CFOP: ICfop<INotasFiscaisItens<T>>;
    function Unidade(Value: IUnidades): INotasFiscaisItens<T>; overload;
    function Unidade: IUnidades; overload;
    function Quantidade(Value: Double): INotasFiscaisItens<T>; overload;
    function Quantidade: Double; overload;
    function ValorUnitario(Value: Currency): INotasFiscaisItens<T>; overload;
    function ValorUnitario: Currency; overload;
    function ValorDesconto(Value: Currency): INotasFiscaisItens<T>; overload;
    function ValorDesconto: Currency; overload;
    function ValorDescontoRateio(Value: Currency): INotasFiscaisItens<T>; overload;
    function ValorDescontoRateio: Currency; overload;
    function ValorOutros(Value: Currency): INotasFiscaisItens<T>; overload;
    function ValorOutros: Currency; overload;
    function ValorOutrosRateio(Value: Currency): INotasFiscaisItens<T>; overload;
    function ValorOutrosRateio: Currency; overload;
    function ValorProduto(Value: Currency): INotasFiscaisItens<T>; overload;
    function ValorProduto: Currency; overload;
    function ValorTotal(Value: Currency): INotasFiscaisItens<T>; overload;
    function ValorTotal: Currency; overload;
    function Origem: IOrigem<INotasFiscaisItens<T>>;
    function CST: ICST<INotasFiscaisItens<T>>;
    function NCM(Value: String): INotasFiscaisItens<T>; overload;
    function NCM: String; overload;
    function ExtiIpi(Value: String): INotasFiscaisItens<T>; overload;
    function ExtiIpi: String; overload;
    function SnBase(Value: Currency): INotasFiscaisItens<T>; overload;
    function SnBase: Currency; overload;
    function SnAliquotaCredito(Value: Currency): INotasFiscaisItens<T>; overload;
    function SnAliquotaCredito: Currency; overload;
    function SnValorCredito(Value: Currency): INotasFiscaisItens<T>; overload;
    function SnValorCredito: Currency; overload;
    function IcmsVAlorBase(Value: Currency): INotasFiscaisItens<T>; overload;
    function IcmsVAlorBase: Currency; overload;
    function IcmsAliquota(Value: Currency): INotasFiscaisItens<T>; overload;
    function IcmsAliquota: Currency; overload;
    function IcmsValorImposto(Value: Currency): INotasFiscaisItens<T>; overload;
    function IcmsValorImposto: Currency; overload;
    function PisCST: ICSTPis<INotasFiscaisItens<T>>;
    function PisValorBase(Value: Currency): INotasFiscaisItens<T>; overload;
    function PisValorBase: Currency; overload;
    function PisAliquota(Value: Currency): INotasFiscaisItens<T>; overload;
    function PisAliquota: Currency; overload;
    function PisValorImposto(Value: Currency): INotasFiscaisItens<T>; overload;
    function PisValorImposto: Currency; overload;
    function CofinsCST: ICstCofins<INotasFiscaisItens<T>>;
    function CofinsValorBase(Value: Currency): INotasFiscaisItens<T>; overload;
    function CofinsValorBase: Currency; overload;
    function CofinsAliquota(Value: Currency): INotasFiscaisItens<T>; overload;
    function CofinsAliquota: Currency; overload;
    function CofinsValorImposto(Value: Currency): INotasFiscaisItens<T>; overload;
    function CofinsValorImposto: Currency; overload;
    function InAliquotaFederal(Value: Currency): INotasFiscaisItens<T>; overload;
    function InAliquotaFederal: Currency; overload;
    function InVAlorFederal(Value: Currency): INotasFiscaisItens<T>; overload;
    function InVAlorFederal: Currency; overload;
    function InAliquotaEstadual(Value: Currency): INotasFiscaisItens<T>; overload;
    function InAliquotaEstadual: Currency; overload;
    function InValorEstadual(Value: Currency): INotasFiscaisItens<T>; overload;
    function InValorEstadual: Currency; overload;
    function InAliquotaMunicipal(Value: Currency): INotasFiscaisItens<T>; overload;
    function InAliquotaMunicipal: Currency; overload;
    function InValorMunicipal(Value: Currency): INotasFiscaisItens<T>; overload;
    function InValorMunicipal: Currency; overload;
    function InformacaoAdicional(Value: String): INotasFiscaisItens<T>; overload;
    function InformacaoAdicional: String; overload;
    function Cest: ICest<INotasFiscaisItens<T>>;
    function Build: T;
  end;

implementation

end.
