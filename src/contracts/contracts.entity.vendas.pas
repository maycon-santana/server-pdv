unit contracts.entity.vendas;

interface

uses
  contracts.entity.clientes,
  contracts.entity.usuarios,
  contracts.entity.empresa,
  contracts.entity.vendaitens;

type
  IVendas = interface
    ['{71438640-09D9-49C7-B927-A877DCEFF672}']
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

end.
