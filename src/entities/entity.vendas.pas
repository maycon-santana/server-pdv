unit entity.vendas;

interface

uses
  contracts.entity.vendas,
  contracts.entity.clientes,
  contracts.entity.usuarios,
  contracts.entity.empresa,
  contracts.entity.vendaitens;

type
  TVendas = class(TInterfacedObject, IVendas)
  private
    FId: String;
    FCliente: IClientes;
    FUsuario: IUsuarios;
    FEmpresa: IEmpresa;
    FTotal: Currency;
    FDataVenda: TDateTime;
    FDataHoraSaida: TDateTime;
    FNumeroFatura: Integer;
    FSubTotal: Currency;
    FTaxaComissao: Currency;
    FValorComissao: Currency;
    FTaxaDesconto: Currency;
    FVendaItens: IVendaItens<IVendas>;
    FCreatedAt: TDateTime;
    FUpdatedAt: TDateTime;
  public
    class function New: IVendas;

    function Id(Value: String): IVendas; overload;
    function Id: String; overload;
    function Cliente(Value: IClientes): IVendas; overload;
    function Cliente: IClientes; overload;
    function Usuario(Value: IUsuarios): IVendas; overload;
    function Usuario: IUsuarios; overload;
    function Empresa(Value: IEmpresa): IVendas; overload;
    function Empresa: IEmpresa; overload;
    function Total(Value: Currency): IVendas; overload;
    function Total: Currency; overload;
    function DataVenda(Value: TDateTime): IVendas; overload;
    function DataVenda: TDateTime; overload;
    function DatHoraSaida(Value: TDateTime): IVendas; overload;
    function DataHoraSaida: TDateTime; overload;
    function NumeroFatura(Value: Integer): IVendas; overload;
    function NumeroFatura: Integer; overload;
    function SubTotal(Value: Currency): IVendas; overload;
    function SubTotal: Currency; overload;
    function TaxaComissao(Value: Currency): IVendas; overload;
    function TaxaComissao: Currency; overload;
    function ValorComissao(Value: Currency): IVendas; overload;
    function ValorComissao: Currency; overload;
    function TaxaDesconto(Value: Currency): IVendas; overload;
    function TaxaDesconto: Currency; overload;
    function VendaItens: IVendaItens<IVendas>;
    function CreatedAt(Value: TDateTime): IVendas; overload;
    function CreatedAt: TDateTime; overload;
    function UpdatedAt(Value: TDateTime): IVendas; overload;
    function UpdatedAt: TDateTime; overload;
    function Build: IVendas;
  end;

implementation

uses
  entity.vendaitens;

function TVendas.Build: IVendas;
begin
  REsult := Self;
end;

function TVendas.Cliente: IClientes;
begin
  REsult := FCliente;
end;

function TVendas.Cliente(Value: IClientes): IVendas;
begin
  Result := SElf;
  FCliente := Value;
end;

function TVendas.CreatedAt: TDateTime;
begin
  Result := FCreatedAt;
end;

function TVendas.CreatedAt(Value: TDateTime): IVendas;
begin
  Result := SElf;
  FCreatedAt := Value;
end;

function TVendas.DataHoraSaida: TDateTime;
begin
  Result := FDataHoraSaida;
end;

function TVendas.DataVenda: TDateTime;
begin
  Result := FDataVenda;
end;

function TVendas.DataVenda(Value: TDateTime): IVendas;
begin
  Result := SElf;
  FDataVenda := Value;
end;

function TVendas.DatHoraSaida(Value: TDateTime): IVendas;
begin
  Result := SElf;
  FDataHoraSaida := Value;
end;

function TVendas.Empresa: IEmpresa;
begin
  Result := FEmpresa;
end;

function TVendas.Empresa(Value: IEmpresa): IVendas;
begin
  Result := SElf;
  FEmpresa := Value;
end;

function TVendas.Id: String;
begin
  Result := FId;
end;

function TVendas.Id(Value: String): IVendas;
begin
  Result := SElf;
  FId := Value;
end;

function TVendas.NumeroFatura(Value: Integer): IVendas;
begin
  Result := SElf;
  FNumeroFatura := Value;
end;

class function TVendas.New: IVendas;
begin
  REsult := SElf.Create;
end;

function TVendas.NumeroFatura: Integer;
begin
  Result := FNumeroFatura;
end;

function TVendas.SubTotal: Currency;
begin
  Result := FSubTotal;
end;

function TVendas.SubTotal(Value: Currency): IVendas;
begin
  Result := SElf;
  FSubTotal := Value;
end;

function TVendas.TaxaComissao(Value: Currency): IVendas;
begin
  Result := SElf;
  FTaxaComissao := Value;
end;

function TVendas.TaxaComissao: Currency;
begin
  Result := FTaxaComissao;
end;

function TVendas.TaxaDesconto: Currency;
begin
  Result := FTaxaDesconto;
end;

function TVendas.TaxaDesconto(Value: Currency): IVendas;
begin
  Result := SElf;
  FTaxaDesconto := Value;
end;

function TVendas.Total: Currency;
begin
  Result := FTotal;
end;

function TVendas.Total(Value: Currency): IVendas;
begin
  Result := SElf;
  FTotal := Value;
end;

function TVendas.UpdatedAt: TDateTime;
begin
  Result := FUpdatedAt;
end;

function TVendas.UpdatedAt(Value: TDateTime): IVendas;
begin
  Result := SElf;
  FUpdatedAt := Value;
end;

function TVendas.Usuario: IUsuarios;
begin
  Result := FUsuario;
end;

function TVendas.Usuario(Value: IUsuarios): IVendas;
begin
  Result := SElf;
  FUsuario := Value;
end;

function TVendas.ValorComissao: Currency;
begin
  Result := FValorComissao;
end;

function TVendas.ValorComissao(Value: Currency): IVendas;
begin
  Result := SElf;
  FValorComissao := Value;
end;

function TVendas.VendaItens: IVendaItens<IVendas>;
begin
  if not Assigned(FVendaItens) then
    FVendaItens := TVendaItens<IVendas>.NEw(Self);
  Result := FVendaItens;
end;

end.

