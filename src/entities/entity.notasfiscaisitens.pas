unit entity.notasfiscaisitens;

interface

uses
  contracts.entity.notasfiscaisitens,
  contracts.entity.cest,
  contracts.entity.cst,
  contracts.entity.origem,
  contracts.entity.unidades,
  contracts.entity.cfop,
  contracts.entity.produtos,
  contracts.entity.cstpis,
  contracts.entity.cstcofins;

type
  TNotasFiscaisItens<T: IInterface> = class(TInterfacedObject, INotasFiscaisItens<T>)
  private
    FParent: T;

    FSerie: Integer;
    FNumero: Integer;
    FItem: Integer;
    FProduto: IProdutos;
    FGtin: string;
    FDescrica: string;
    FCFOP: ICfop<INotasFiscaisItens<T>>;
    FUnidade: IUnidades;
    FQuantidade: Double;
    FValorUnitario: Currency;
    FValorDesconto: Currency;
    FValorDescontoRateio: Currency;
    FValorOutros: Currency;
    FValorOutrosRateio: Currency;
    FValorProduto: Currency;
    FValorTotal: Currency;
    FOrigem: IOrigem<INotasFiscaisItens<T>>;
    FCST: ICST<INotasFiscaisItens<T>>;
    FNCM: String;
    FExtiIpi: String;
    FSnBase: Currency;
    FSnAliquotaCredito: Currency;
    FSnValorCredito: Currency;
    FIcmsVAlorBase: Currency;
    FIcmsAliquota: Currency;
    FIcmsValorImposto: Currency;
    FPisCST: ICSTPis<INotasFiscaisItens<T>>;
    FPisValorBase: Currency;
    FPisAliquota: Currency;
    FPisValorImposto: Currency;
    FCofinsCST: ICstCofins<INotasFiscaisItens<T>>;
    FCofinsValorBase: Currency;
    FCofinsAliquota: Currency;
    FCofinsValorImposto: Currency;
    FInAliquotaFederal: Currency;
    FInVAlorFederal: Currency;
    FInAliquotaEstadual: Currency;
    FInValorEstadual: Currency;
    FInAliquotaMunicipal: Currency;
    FInValorMunicipal: Currency;
    FInformacaoAdicional: String;
    FCest: ICest<INotasFiscaisItens<T>>;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): INotasFiscaisItens<T>;

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

uses
  entity.cest,
  entity.cfop,
  entity.cst,
  entity.origem;

function TNotasFiscaisItens<T>.Build: T;
begin
  Result := FPArent;
end;

function TNotasFiscaisItens<T>.Cest: ICest<INotasFiscaisItens<T>>;
begin
  if not Assigned(FCest) then
    FCest := TCest<INotasFiscaisItens<T>>.NEw(Self);
end;

function TNotasFiscaisItens<T>.CFOP: ICfop<INotasFiscaisItens<T>>;
begin
  if not Assigned(FCFOP) then
    FCFOP := TCfop<INotasFiscaisItens<T>>.New(Self);
  REsult := FCFOP;
end;

function TNotasFiscaisItens<T>.CofinsAliquota(
  Value: Currency): INotasFiscaisItens<T>;
begin
  Result := SElf;
  FCofinsAliquota := VAlue;
end;

function TNotasFiscaisItens<T>.CofinsAliquota: Currency;
begin
  Result := FCofinsAliquota;
end;

function TNotasFiscaisItens<T>.CofinsCST: ICstCofins<INotasFiscaisItens<T>>;
begin
  Result := FCofinsCST;
end;

function TNotasFiscaisItens<T>.CofinsValorBase: Currency;
begin
  Result := FCofinsValorBase;
end;

function TNotasFiscaisItens<T>.CofinsValorBase(
  Value: Currency): INotasFiscaisItens<T>;
begin
  Result := SElf;
  FCofinsValorBase := VAlue;
end;

function TNotasFiscaisItens<T>.CofinsValorImposto: Currency;
begin
  Result := FCofinsValorImposto;
end;

function TNotasFiscaisItens<T>.CofinsValorImposto(
  Value: Currency): INotasFiscaisItens<T>;
begin
  Result := SElf;
  FCofinsValorImposto := VAlue;
end;

constructor TNotasFiscaisItens<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

function TNotasFiscaisItens<T>.CST: ICST<INotasFiscaisItens<T>>;
begin
  if not Assigned(FCST) then
    FCST := TCst<INotasFiscaisItens<T>>.New(Self);
  REsult := FCST;
end;

function TNotasFiscaisItens<T>.Descrica: string;
begin
  Result := FDescrica;
end;

function TNotasFiscaisItens<T>.Descricao(Value: string): INotasFiscaisItens<T>;
begin
  Result := Self;
  FDescrica := VAlue;
end;

function TNotasFiscaisItens<T>.ExtiIpi: String;
begin
  Result := FExtiIpi;
end;

function TNotasFiscaisItens<T>.ExtiIpi(Value: String): INotasFiscaisItens<T>;
begin
  Result := Self;
  FExtiIpi := VAlue;
end;

function TNotasFiscaisItens<T>.Gtin(Value: string): INotasFiscaisItens<T>;
begin
  Result := Self;
  FGtin := VAlue;
end;

function TNotasFiscaisItens<T>.Gtin: string;
begin
  Result := FGtin;
end;

function TNotasFiscaisItens<T>.IcmsAliquota(
  Value: Currency): INotasFiscaisItens<T>;
begin
  Result := Self;
  FIcmsAliquota := VAlue;
end;

function TNotasFiscaisItens<T>.IcmsAliquota: Currency;
begin
  Result := FIcmsAliquota;
end;

function TNotasFiscaisItens<T>.IcmsVAlorBase(
  Value: Currency): INotasFiscaisItens<T>;
begin
  Result := Self;
  FIcmsVAlorBase := VAlue;
end;

function TNotasFiscaisItens<T>.IcmsVAlorBase: Currency;
begin
  Result := FIcmsVAlorBase;
end;

function TNotasFiscaisItens<T>.IcmsValorImposto: Currency;
begin
  Result := FIcmsValorImposto;
end;

function TNotasFiscaisItens<T>.IcmsValorImposto(
  Value: Currency): INotasFiscaisItens<T>;
begin
  Result := Self;
  FIcmsValorImposto := VAlue;
end;

function TNotasFiscaisItens<T>.InAliquotaEstadual(
  Value: Currency): INotasFiscaisItens<T>;
begin
  Result := Self;
  FInAliquotaEstadual := VAlue;
end;

function TNotasFiscaisItens<T>.InAliquotaEstadual: Currency;
begin
  Result := FInAliquotaEstadual;
end;

function TNotasFiscaisItens<T>.InAliquotaFederal(
  Value: Currency): INotasFiscaisItens<T>;
begin
  Result := Self;
  FInAliquotaFederal := VAlue;
end;

function TNotasFiscaisItens<T>.InAliquotaFederal: Currency;
begin
  Result := FInAliquotaFederal;
end;

function TNotasFiscaisItens<T>.InAliquotaMunicipal: Currency;
begin
  Result := FInAliquotaMunicipal;
end;

function TNotasFiscaisItens<T>.InAliquotaMunicipal(
  Value: Currency): INotasFiscaisItens<T>;
begin
  Result := Self;
  FInAliquotaMunicipal := VAlue;
end;

function TNotasFiscaisItens<T>.InformacaoAdicional: String;
begin
  Result := FInformacaoAdicional;
end;

function TNotasFiscaisItens<T>.InformacaoAdicional(
  Value: String): INotasFiscaisItens<T>;
begin
  Result := Self;
  FInformacaoAdicional := VAlue;
end;

function TNotasFiscaisItens<T>.InValorEstadual(
  Value: Currency): INotasFiscaisItens<T>;
begin
  Result := Self;
  FInValorEstadual := VAlue;
end;

function TNotasFiscaisItens<T>.InValorEstadual: Currency;
begin
  Result := FInValorEstadual;
end;

function TNotasFiscaisItens<T>.InVAlorFederal(
  Value: Currency): INotasFiscaisItens<T>;
begin
  Result := Self;
  FInVAlorFederal := VAlue;
end;

function TNotasFiscaisItens<T>.InVAlorFederal: Currency;
begin
  Result := FInVAlorFederal;
end;

function TNotasFiscaisItens<T>.InValorMunicipal: Currency;
begin
  Result := FInValorMunicipal;
end;

function TNotasFiscaisItens<T>.InValorMunicipal(
  Value: Currency): INotasFiscaisItens<T>;
begin
  Result := Self;
  FInValorMunicipal := VAlue;
end;

function TNotasFiscaisItens<T>.Item(Value: Integer): INotasFiscaisItens<T>;
begin
  Result := Self;
  FItem := VAlue;
end;

function TNotasFiscaisItens<T>.Item: Integer;
begin
  Result := FItem;
end;

function TNotasFiscaisItens<T>.NCM(Value: String): INotasFiscaisItens<T>;
begin
  Result := Self;
  FNCM := VAlue;
end;

function TNotasFiscaisItens<T>.NCM: String;
begin
  Result := FNCM;
end;

class function TNotasFiscaisItens<T>.New(Parent: T): INotasFiscaisItens<T>;
begin
  Result := SElf.Create(Parent);
end;

function TNotasFiscaisItens<T>.Numero(Value: Integer): INotasFiscaisItens<T>;
begin
  Result := Self;
  FNumero := VAlue;
end;

function TNotasFiscaisItens<T>.Numero: Integer;
begin
  Result := FNumero;
end;

function TNotasFiscaisItens<T>.Origem: IOrigem<INotasFiscaisItens<T>>;
begin
  if not Assigned(FOrigem) then
    FOrigem := TOrigem<INotasFiscaisItens<T>>.New(Self);
  REsult := FOrigem;
end;

function TNotasFiscaisItens<T>.PisAliquota(
  Value: Currency): INotasFiscaisItens<T>;
begin
  REsult := Self;
  FPisAliquota := Value;
end;

function TNotasFiscaisItens<T>.PisAliquota: Currency;
begin
  REsult := FPisAliquota;
end;

function TNotasFiscaisItens<T>.PisCST: ICSTPis<INotasFiscaisItens<T>>;
begin
  REsult := FPisCST;
end;

function TNotasFiscaisItens<T>.PisValorBase: Currency;
begin
  REsult := FPisValorBase;
end;

function TNotasFiscaisItens<T>.PisValorBase(
  Value: Currency): INotasFiscaisItens<T>;
begin
  REsult := Self;
  FPisValorBase := Value;
end;

function TNotasFiscaisItens<T>.PisValorImposto: Currency;
begin
  REsult := FPisValorImposto;
end;

function TNotasFiscaisItens<T>.PisValorImposto(
  Value: Currency): INotasFiscaisItens<T>;
begin
  REsult := Self;
  FPisValorImposto := Value;
end;

function TNotasFiscaisItens<T>.Produto(Value: IProdutos): INotasFiscaisItens<T>;
begin
  REsult := Self;
  FProduto := Value;
end;

function TNotasFiscaisItens<T>.Produto: IProdutos;
begin
  REsult := FProduto;
end;

function TNotasFiscaisItens<T>.Quantidade: Double;
begin
  REsult := FQuantidade;
end;

function TNotasFiscaisItens<T>.Quantidade(Value: Double): INotasFiscaisItens<T>;
begin
  REsult := Self;
  FQuantidade := Value;
end;

function TNotasFiscaisItens<T>.Serie(Value: Integer): INotasFiscaisItens<T>;
begin
  REsult := Self;
  FSerie := Value;
end;

function TNotasFiscaisItens<T>.Serie: Integer;
begin
  REsult := FSerie;
end;

function TNotasFiscaisItens<T>.SnAliquotaCredito: Currency;
begin
  REsult := FSnAliquotaCredito;
end;

function TNotasFiscaisItens<T>.SnAliquotaCredito(
  Value: Currency): INotasFiscaisItens<T>;
begin
  REsult := Self;
  FPisAliquota := Value;
end;

function TNotasFiscaisItens<T>.SnBase: Currency;
begin
  REsult := FSnBase;
end;

function TNotasFiscaisItens<T>.SnBase(Value: Currency): INotasFiscaisItens<T>;
begin
  REsult := Self;
  FSnBase := Value;
end;

function TNotasFiscaisItens<T>.SnValorCredito(
  Value: Currency): INotasFiscaisItens<T>;
begin
  REsult := Self;
  FSnValorCredito := Value;
end;

function TNotasFiscaisItens<T>.SnValorCredito: Currency;
begin
  REsult := FSnValorCredito;
end;

function TNotasFiscaisItens<T>.Unidade(Value: IUnidades): INotasFiscaisItens<T>;
begin
  REsult := Self;
  FUnidade := Value;
end;

function TNotasFiscaisItens<T>.Unidade: IUnidades;
begin
  REsult := FUnidade;
end;

function TNotasFiscaisItens<T>.ValorDesconto(
  Value: Currency): INotasFiscaisItens<T>;
begin
  REsult := Self;
  FValorDesconto := Value;
end;

function TNotasFiscaisItens<T>.ValorDesconto: Currency;
begin
  REsult := FValorDesconto;
end;

function TNotasFiscaisItens<T>.ValorDescontoRateio(
  Value: Currency): INotasFiscaisItens<T>;
begin
  REsult := Self;
  FValorDescontoRateio := Value;
end;

function TNotasFiscaisItens<T>.ValorDescontoRateio: Currency;
begin
  REsult := FValorDescontoRateio;
end;

function TNotasFiscaisItens<T>.ValorOutros: Currency;
begin
  REsult := FValorOutros;
end;

function TNotasFiscaisItens<T>.ValorOutros(
  Value: Currency): INotasFiscaisItens<T>;
begin
  REsult := Self;
  FValorOutros := Value;
end;

function TNotasFiscaisItens<T>.ValorOutrosRateio(
  Value: Currency): INotasFiscaisItens<T>;
begin
  REsult := Self;
  FValorOutrosRateio := Value;
end;

function TNotasFiscaisItens<T>.ValorOutrosRateio: Currency;
begin
  REsult := FValorOutrosRateio;
end;

function TNotasFiscaisItens<T>.ValorProduto: Currency;
begin
  REsult := FValorProduto;
end;

function TNotasFiscaisItens<T>.ValorProduto(
  Value: Currency): INotasFiscaisItens<T>;
begin
  REsult := Self;
  FValorProduto := Value;
end;

function TNotasFiscaisItens<T>.ValorTotal(
  Value: Currency): INotasFiscaisItens<T>;
begin
  REsult := Self;
  FValorTotal := Value;
end;

function TNotasFiscaisItens<T>.ValorTotal: Currency;
begin
  REsult := FValorTotal;
end;

function TNotasFiscaisItens<T>.ValorUnitario(
  Value: Currency): INotasFiscaisItens<T>;
begin
  REsult := Self;
  FValorUnitario := Value;
end;

function TNotasFiscaisItens<T>.ValorUnitario: Currency;
begin
  REsult := FValorUnitario;
end;

end.

