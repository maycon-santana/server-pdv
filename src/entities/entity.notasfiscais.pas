unit entity.notasfiscais;

interface

uses
  contracts.entity.notasfiscais,
  contracts.entity.usuarios,
  contracts.entity.clientes,
  contracts.entity.empresa,
  contracts.entity.caixaomovimento,
  contracts.entity.notasfiscaisitens;

type
  TNotasFiscais = class(TInterfacedObject, INotasFiscais)
  private
    FId: String;
    FSerie: Integer;
    FNumero: Integer;
    FUsuario: IUsuarios;
    FEmpresa: IEmpresa;
    FCliente: IClientes;
    FSituacao: String;
    FChave: String;
    FDTEmissao: TDate;
    FDTHrSaida: TDateTime;
    FTipoNfe: Integer;
    FTipoEmissao: Integer;
    FDestNome: String;
    FDestCNPJCPF: String;
    FDestTelefone: String;
    FDestEndereco: String;
    FDestNumero: String;
    FDestComplemento: String;
    FDestBairro: String;
    FDestCidade: Integer;
    FDestCidadeDescricao: String;
    FDestUf: String;
    FDestCep: String;
    FValorBaseIcms: Currency;
    FVAlorIcms: Currency;
    FVAlorDesconto: Currency;
    FVAlorProduto: Currency;
    FVAlorOutros: Currency;
    FVAlorTotalNf: Currency;
    FVAlorPis: Currency;
    FVAlorCofins: Currency;
    FVAlorTroco: Currency;
    FCStat: Integer;
    FXMotivo: String;
    FDhRecebimento: TDateTime;
    FNumeroProtocolo: String;
    FProtocolo: Integer;
    FObservacao: String;
    FXML: String;
    FXMLCancelamento: String;
    FCaixaMovimento: ICaixaMovimento;
    FCodigoNf: Integer;
    FCarroKm: Integer;
    FCarroPlaca: string;
    FNotasFiscaisItens: INotasFiscaisItens<INotasFiscais>;
  public
    class function New: INotasFiscais;

    function Id(Value: String): INotasFiscais; overload;
    function Id: String; overload;
    function Serie(Value: Integer): INotasFiscais; overload;
    function Serie: Integer; overload;
    function Numero(Value: Integer): INotasFiscais; overload;
    function Numero: Integer; overload;
    function Usuario(Value: IUsuarios): INotasFiscais; overload;
    function Usuario: IUsuarios; overload;
    function Empresa(Value: IEmpresa): INotasFiscais; overload;
    function Empresa: IEmpresa; overload;
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

uses
  entity.notasfiscaisitens;

function TNotasFiscais.Build: INotasFiscais;
begin
  REsult := SElf;
end;

function TNotasFiscais.CaixaMovimento(Value: ICaixaMovimento): INotasFiscais;
begin
  REsult := SElf;
  FCaixaMovimento := VAlue;
end;

function TNotasFiscais.CarroKm: Integer;
begin
  REsult := FCarroKm;
end;

function TNotasFiscais.CarroKm(Value: Integer): INotasFiscais;
begin
  REsult := SElf;
  FCarroKm := VAlue;
end;

function TNotasFiscais.CarroPlaca: string;
begin
  REsult := FCarroPlaca;
end;

function TNotasFiscais.CarroPlaca(Value: String): INotasFiscais;
begin
  REsult := SElf;
  FCarroPlaca := VAlue;
end;

function TNotasFiscais.Chave(Value: String): INotasFiscais;
begin
  REsult := SElf;
  FChave := VAlue;
end;

function TNotasFiscais.Chave: String;
begin
  REsult := FChave;
end;

function TNotasFiscais.Cliente: IClientes;
begin
  Result := FCliente;
end;

function TNotasFiscais.Cliente(Value: IClientes): INotasFiscais;
begin
  REsult := SElf;
  FCliente := VAlue;
end;

function TNotasFiscais.CodigoNf(Value: Integer): INotasFiscais;
begin
  REsult := SElf;
  FCodigoNf := VAlue;
end;

function TNotasFiscais.CodigoNf: Integer;
begin
  REsult := FCodigoNf;
end;

function TNotasFiscais.CStat: Integer;
begin
  REsult := FCStat;
end;

function TNotasFiscais.CStat(Value: Integer): INotasFiscais;
begin
  REsult := SElf;
  FCStat := VAlue;
end;

function TNotasFiscais.DestBairro(Value: String): INotasFiscais;
begin
  REsult := SElf;
  FDestBairro := VAlue;
end;

function TNotasFiscais.DestBairro: String;
begin
  REsult := FDestBairro;
end;

function TNotasFiscais.DestCep(Value: String): INotasFiscais;
begin
  REsult := SElf;
  FDestCep := VAlue;
end;

function TNotasFiscais.DestCep: String;
begin
  REsult := FDestCep;
end;

function TNotasFiscais.DestCidade(Value: Integer): INotasFiscais;
begin
  REsult := SElf;
  FDestCidade := VAlue;
end;

function TNotasFiscais.DestCidade: Integer;
begin
  REsult := FDestCidade;
end;

function TNotasFiscais.DestCidadeDescricao(Value: String): INotasFiscais;
begin
  REsult := SElf;
  FDestCidadeDescricao := VAlue;
end;

function TNotasFiscais.DestCidadeDescricao: String;
begin
  REsult := FDestCidadeDescricao;
end;

function TNotasFiscais.DestCNPJCPF(Value: String): INotasFiscais;
begin
  REsult := SElf;
  FDestCNPJCPF := VAlue;
end;

function TNotasFiscais.DestCNPJCPF: String;
begin
  REsult := FDestCNPJCPF;
end;

function TNotasFiscais.DestComplemento: String;
begin
  REsult := FDestComplemento;
end;

function TNotasFiscais.DestComplemento(Value: String): INotasFiscais;
begin
  REsult := SElf;
  FDestComplemento := VAlue;
end;

function TNotasFiscais.DestEndereco(Value: String): INotasFiscais;
begin
  REsult := SElf;
  FDestEndereco := VAlue;
end;

function TNotasFiscais.DestEndereco: String;
begin
  REsult := FDestEndereco;
end;

function TNotasFiscais.DestNome: String;
begin
  REsult := FDestNome;
end;

function TNotasFiscais.DestNome(Value: String): INotasFiscais;
begin
  REsult := SElf;
  FDestNome := VAlue;
end;

function TNotasFiscais.DestNumero: String;
begin
  REsult := FDestNumero;
end;

function TNotasFiscais.DestNumero(Value: String): INotasFiscais;
begin
  REsult := SElf;
  FDestNumero := VAlue;
end;

function TNotasFiscais.DestTelefone(Value: String): INotasFiscais;
begin
  REsult := SElf;
  FDestTelefone := VAlue;
end;

function TNotasFiscais.DestTelefone: String;
begin
  REsult := FDestTelefone;
end;

function TNotasFiscais.DestUf: String;
begin
  REsult := FDestUf;
end;

function TNotasFiscais.DestUf(Value: String): INotasFiscais;
begin
  REsult := SElf;
  FDestUf := VAlue;
end;

function TNotasFiscais.DhRecebimento: TDateTime;
begin
  REsult := FDhRecebimento;
end;

function TNotasFiscais.DhRecebimento(Value: TDateTime): INotasFiscais;
begin
  REsult := SElf;
  FDhRecebimento := VAlue;
end;

function TNotasFiscais.DTEmissao(Value: TDate): INotasFiscais;
begin
  REsult := SElf;
  FDTEmissao := VAlue;
end;

function TNotasFiscais.DTEmissao: TDate;
begin
  REsult := FDTEmissao;
end;

function TNotasFiscais.DTHrSaida(Value: TDateTime): INotasFiscais;
begin
  REsult := SElf;
  FDTHrSaida := VAlue;
end;

function TNotasFiscais.DTHrSaida: TDateTime;
begin
  REsult := FDTHrSaida;
end;

function TNotasFiscais.Empresa: IEmpresa;
begin
  Result := FEmpresa;
end;

function TNotasFiscais.Empresa(Value: IEmpresa): INotasFiscais;
begin
  REsult := SElf;
  FEmpresa := VAlue;
end;

function TNotasFiscais.Id(Value: String): INotasFiscais;
begin
  REsult := SElf;
  FId := VAlue;
end;

function TNotasFiscais.Id: String;
begin
  REsult := FId;
end;

class function TNotasFiscais.New: INotasFiscais;
begin
  Result := Self.Create;
end;

function TNotasFiscais.NotasFiscaisItens: INotasFiscaisItens<INotasFiscais>;
begin
  if not Assigned(FNotasFiscaisItens) then
    FNotasFiscaisItens := TNotasFiscaisItens<INotasFiscais>.New(Self);
  Result := FNotasFiscaisItens;
end;

function TNotasFiscais.Numero(Value: Integer): INotasFiscais;
begin
  REsult := SElf;
  FNumero := VAlue;
end;

function TNotasFiscais.Numero: Integer;
begin
  REsult := FNumero;
end;

function TNotasFiscais.NumeroProtocolo(Value: String): INotasFiscais;
begin
  REsult := SElf;
  FNumeroProtocolo := VAlue;
end;

function TNotasFiscais.NumeroProtocolo: String;
begin
  REsult := FNumeroProtocolo;
end;

function TNotasFiscais.Observacao(Value: String): INotasFiscais;
begin
  REsult := SElf;
  FObservacao := VAlue;
end;

function TNotasFiscais.Observacao: String;
begin
  REsult := FObservacao;
end;

function TNotasFiscais.Protocolo(Value: Integer): INotasFiscais;
begin
  REsult := SElf;
  FProtocolo := VAlue;
end;

function TNotasFiscais.Protocolo: Integer;
begin
  REsult := FProtocolo;
end;

function TNotasFiscais.Serie: Integer;
begin
  REsult := FSerie;
end;

function TNotasFiscais.Serie(Value: Integer): INotasFiscais;
begin
  REsult := SElf;
  FSerie := VAlue;
end;

function TNotasFiscais.Situacao(Value: String): INotasFiscais;
begin
  REsult := SElf;
  FSituacao := VAlue;
end;

function TNotasFiscais.Situacao: String;
begin
  REsult := FSituacao;
end;

function TNotasFiscais.TipoEmissao: Integer;
begin
  REsult := FTipoEmissao;
end;

function TNotasFiscais.TipoEmissao(Value: Integer): INotasFiscais;
begin
  REsult := SElf;
  FTipoEmissao := VAlue;
end;

function TNotasFiscais.TipoNfe(Value: Integer): INotasFiscais;
begin
  REsult := SElf;
  FTipoNfe := VAlue;
end;

function TNotasFiscais.TipoNfe: Integer;
begin
  REsult := FTipoNfe;
end;

function TNotasFiscais.Usuario: IUsuarios;
begin
  Result := FUsuario;
end;

function TNotasFiscais.Usuario(Value: IUsuarios): INotasFiscais;
begin
  REsult := SElf;
  FUsuario := VAlue;
end;

function TNotasFiscais.ValorBaseIcms: Currency;
begin
  REsult := FValorBaseIcms;
end;

function TNotasFiscais.ValorBaseIcms(Value: Currency): INotasFiscais;
begin
  REsult := SElf;
  FValorBaseIcms := VAlue;
end;

function TNotasFiscais.VAlorCofins(Value: Currency): INotasFiscais;
begin
  REsult := SElf;
  FVAlorCofins := VAlue;
end;

function TNotasFiscais.VAlorCofins: Currency;
begin
  REsult := FVAlorCofins;
end;

function TNotasFiscais.VAlorDesconto(Value: Currency): INotasFiscais;
begin
  REsult := SElf;
  FVAlorDesconto := VAlue;
end;

function TNotasFiscais.VAlorDesconto: Currency;
begin
  REsult := FVAlorDesconto;
end;

function TNotasFiscais.VAlorIcms(Value: Currency): INotasFiscais;
begin
  REsult := SElf;
  FVAlorIcms := VAlue;
end;

function TNotasFiscais.VAlorIcms: Currency;
begin
  REsult := FValorBaseIcms;
end;

function TNotasFiscais.VAlorOutros(Value: Currency): INotasFiscais;
begin
  REsult := SElf;
  FVAlorOutros := VAlue;
end;

function TNotasFiscais.VAlorOutros: Currency;
begin
  REsult := FVAlorOutros;
end;

function TNotasFiscais.VAlorPis: Currency;
begin
  REsult := FVAlorPis;
end;

function TNotasFiscais.VAlorPis(Value: Currency): INotasFiscais;
begin
  REsult := SElf;
  FVAlorPis := VAlue;
end;

function TNotasFiscais.VAlorProduto: Currency;
begin
  REsult := FVAlorProduto;
end;

function TNotasFiscais.VAlorProduto(Value: Currency): INotasFiscais;
begin
  REsult := SElf;
  FVAlorProduto := VAlue;
end;

function TNotasFiscais.VAlorTotalNf: Currency;
begin
  REsult := FVAlorTotalNf;
end;

function TNotasFiscais.VAlorTotalNf(Value: Currency): INotasFiscais;
begin
  REsult := SElf;
  FVAlorTotalNf := VAlue;
end;

function TNotasFiscais.VAlorTroco: Currency;
begin
  REsult := FVAlorTroco;
end;

function TNotasFiscais.VAlorTroco(Value: Currency): INotasFiscais;
begin
  REsult := SElf;
  FVAlorTroco := VAlue;
end;

function TNotasFiscais.XML: String;
begin
  REsult := FXML;
end;

function TNotasFiscais.XML(Value: String): INotasFiscais;
begin
  REsult := SElf;
  FXML := VAlue;
end;

function TNotasFiscais.XMLCancelamento(Value: String): INotasFiscais;
begin
  REsult := SElf;
  FXMLCancelamento := VAlue;
end;

function TNotasFiscais.XMLCancelamento: String;
begin
  REsult := FXMLCancelamento;
end;

function TNotasFiscais.XMotivo: String;
begin
  REsult := FXMotivo;
end;

function TNotasFiscais.XMotivo(Value: String): INotasFiscais;
begin
  REsult := SElf;
  FXMotivo := VAlue;
end;

end.

