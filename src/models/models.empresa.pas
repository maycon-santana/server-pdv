unit models.empresa;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  models.endereco,
  models.cnae,
  models.emissoresfiscais,
  models.autenticacoes;

type
  TEmpresaModels = class
  private
    FId: String;
    FNome: String;
    FCNPJ: String;
    FTelefone: String;
    FEmail: String;
    FInscricaoEstadual: String;
    FInscricaoEstadualST: String;
    FInscaicaoMunicipal: String;
    FCRT: Integer;
    Flogotipo: String;
    FRegime: Integer;
    FCreateAT: TDateTime;
    FUpdateAt: TDateTime;
    FEndereco: TObjectList<TEnderecoMOdel>;
    FCNAE: TObjectList<TCNAEModel>;
    FEmissor: TObjectList<TEmissoresFiscaisModel>;
    FAutenticacoes: TMOdelAutenticacoes;
  public
    constructor Create;
    destructor Destroy; override;

    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('nome')]
    property Nome: String read FNome write FNome;
    [JSONProp('cnpj')]
    property CNPJ: String read FCNPJ write FCNPJ;
    [JSONProp('telefone')]
    property Telefone: String read FTelefone write FTelefone;
    [JSONProp('email')]
    property Email: String read FEmail write FEmail;
    [JSONProp('inscricaoEstadual')]
    property InscricaoEstadual: String read FInscricaoEstadual write FInscricaoEstadual;
    [JSONProp('inscricaoEstadualST')]
    property InscricaoEstadualST: String read FInscricaoEstadualST write FInscricaoEstadualST;
    [JSONProp('inscricaoMunicipal')]
    property InscaicaoMunicipal: String read FInscaicaoMunicipal write FInscaicaoMunicipal;
    [JSONProp('crt')]
    property CRT: Integer read FCRT write FCRT;
    [JSONProp('logotipo')]
    property logotipo: String read Flogotipo write Flogotipo;
    [JSONProp('regime')]
    property Regime: Integer read FRegime write FRegime;
    [JSONProp('creteat')]
    [JSONIgnore]
    property CreateAt: TDateTime read FCreateAT write FCreateAT;
    [JSONProp('updateat')]
    [JSONIgnore]
    property UpdateAt: TDateTime read FUpdateAt write FUpdateAt;
    [JSONProp('endereco')]
    property Endereco: TObjectList<TEnderecoMOdel> read FEndereco write FEndereco;
    [JSONProp('cnae')]
    property CNAE: TObjectList<TCNAEModel> read FCNAE write FCNAE;
    [JSONProp('emissorFiscal')]
    property Emissor: TObjectList<TEmissoresFiscaisModel> read FEmissor write FEmissor;
    [JSONProp('autenticacoes')]
    property Autenticacoes: TMOdelAutenticacoes read FAutenticacoes write FAutenticacoes;
  end;

implementation

{ TEmpresaModels }

constructor TEmpresaModels.Create;
begin
  FEndereco := TObjectList<TEnderecoMOdel>.Create;
  FCNAE := TObjectList<TCNAEModel>.Create;
  FEmissor := TObjectList<TEmissoresFiscaisModel>.Create;
  FAutenticacoes := TMOdelAutenticacoes.Create;
end;

destructor TEmpresaModels.Destroy;
begin
  FEndereco.free;
  FCNAE.free;
  FEmissor.Free;
  FAutenticacoes.Free;
  inherited;
end;

end.

