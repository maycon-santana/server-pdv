unit contracts.entity.notasfiscais;

interface

uses
  contracts.entity.usuarios,
  contracts.entity.clientes,
  contracts.entity.empresa,
  contracts.entity.caixaomovimento,
  contracts.entity.notasfiscaisitens;

type
  INotasFiscais = interface
    ['{E7A420E9-A1F9-4736-96A3-7DB9A72D19B8}']
    function Id(Value: String): INotasFiscais; overload;
    function Id: String; overload;
    function Serie(Value: Integer): INotasFiscais; overload;
    function Serie: Integer; overload;
    function Numero(Value: Integer): INotasFiscais; overload;
    function Numero: Integer; overload;
    function Usuario(Value: IUsuarios): INotasFiscais; overload;
    function Usuario: IUsuarios; overload;
    function Empresa(Value: IEmpresa): INotasFiscais; overload;
    function EMpresa: IEmpresa; overload;
    function Cliente(Value: IClientes): INotasFiscais; overload;
    function Cliente: IClientes; overload;
    function Situacao(Value: String): INotasFiscais; overload;
    function Situacao: String; overload;
    function Chave(Value: String): INotasFiscais; overload;
    function Chave: String; overload;
    function DTEmissao(Value: TDate): INotasFiscais; overload;
    function DTEmissao: TDate; overload;
    function DTHrSaida(Value: TDateTime): INotasFiscais; overload;
    function DTHrSaida: TDateTime; overload;
    function TipoNfe(Value: Integer): INotasFiscais; overload;
    function TipoNfe: Integer; overload;
    function TipoEmissao(Value: Integer): INotasFiscais; overload;
    function TipoEmissao: Integer; overload;
    function DestNome(Value: String): INotasFiscais; overload;
    function DestNome: String; overload;
    function DestCNPJCPF(Value: String): INotasFiscais; overload;
    function DestCNPJCPF: String; overload;
    function DestTelefone(Value: String): INotasFiscais; overload;
    function DestTelefone: String; overload;
    function DestEndereco(Value: String): INotasFiscais; overload;
    function DestEndereco: String; overload;
    function DestNumero(Value: String): INotasFiscais; overload;
    function DestNumero: String; overload;
    function DestComplemento(Value: String): INotasFiscais; overload;
    function DestComplemento: String; overload;
    function DestBairro(Value: String): INotasFiscais; overload;
    function DestBairro: String; overload;
    function DestCidade(Value: Integer): INotasFiscais; overload;
    function DestCidade: Integer; overload;
    function DestCidadeDescricao(Value: String): INotasFiscais; overload;
    function DestCidadeDescricao: String; overload;
    function DestUf(Value: String): INotasFiscais; overload;
    function DestUf: String; overload;
    function DestCep(Value: String): INotasFiscais; overload;
    function DestCep: String; overload;
    function ValorBaseIcms(Value: Currency): INotasFiscais; overload;
    function ValorBaseIcms: Currency; overload;
    function VAlorIcms(Value: Currency): INotasFiscais; overload;
    function VAlorIcms: Currency; overload;
    function VAlorDesconto(Value: Currency): INotasFiscais; overload;
    function VAlorDesconto: Currency; overload;
    function VAlorProduto(Value: Currency): INotasFiscais; overload;
    function VAlorProduto: Currency; overload;
    function VAlorOutros(Value: Currency): INotasFiscais; overload;
    function VAlorOutros: Currency; overload;
    function VAlorTotalNf(Value: Currency): INotasFiscais; overload;
    function VAlorTotalNf: Currency; overload;
    function VAlorPis(Value: Currency): INotasFiscais; overload;
    function VAlorPis: Currency; overload;
    function VAlorCofins(Value: Currency): INotasFiscais; overload;
    function VAlorCofins: Currency; overload;
    function VAlorTroco(Value: Currency): INotasFiscais; overload;
    function VAlorTroco: Currency; overload;
    function CStat(Value: Integer): INotasFiscais; overload;
    function CStat: Integer; overload;
    function XMotivo(Value: String): INotasFiscais; overload;
    function XMotivo: String; overload;
    function DhRecebimento(Value: TDateTime): INotasFiscais; overload;
    function DhRecebimento: TDateTime; overload;
    function NumeroProtocolo(Value: String): INotasFiscais; overload;
    function NumeroProtocolo: String; overload;
    function Protocolo(Value: Integer): INotasFiscais; overload;
    function Protocolo: Integer; overload;
    function Observacao(Value: String): INotasFiscais; overload;
    function Observacao: String; overload;
    function XML(Value: String): INotasFiscais; overload;
    function XML: String; overload;
    function XMLCancelamento(Value: String): INotasFiscais; overload;
    function XMLCancelamento: String; overload;
    function CaixaMovimento(Value: ICaixaMovimento): INotasFiscais;
    function CodigoNf(Value: Integer): INotasFiscais; overload;
    function CodigoNf: Integer; overload;
    function CarroKm(Value: Integer): INotasFiscais; overload;
    function CarroKm: Integer; overload;
    function CarroPlaca(Value: String): INotasFiscais; overload;
    function CarroPlaca: string; overload;
    function NotasFiscaisItens: INotasFiscaisItens<INotasFiscais>;
    function Build: INotasFiscais;
  end;

implementation

end.
