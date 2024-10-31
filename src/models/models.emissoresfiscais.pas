unit models.emissoresfiscais;

interface

uses
  System.Classes,
  GBJSON.Attributes;

type
  TEmissoresFiscaisModel = class
  private
    FId: String;
    FTipoDocumento: String;
    FAmbiente: String;
    FSerie: String;
    FNumero: String;
    FTipoEmissao: String;
    FTipoSped: String;
    FCertificado: TStream;
    FSenha: String;
    FCreatedAt: TDateTime;
    FUpdateAt: TDateTime;
  public
    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('tipoDocumento')]
    property TipoDocumento: String read FTipoDocumento write FTipoDocumento;
    [JSONProp('ambiente')]
    property Ambiente: String read FAmbiente write FAmbiente;
    [JSONProp('serie')]
    property Serie: String read FSerie write FSerie;
    [JSONProp('numero')]
    property Numero: String read FNumero write FNumero;
    [JSONProp('tipoEmissao')]
    property TipoEmissao: String read FTipoEmissao write FTipoEmissao;
    [JSONProp('tipoSped')]
    property TipoSped: String read FTipoSped write FTipoSped;
    [JSONProp('certificado')]
    property Certificado: TStream read FCertificado write FCertificado;
    [JSONProp('senha')]
    property Senha: String read FSenha write FSenha;
    [JSONProp('createdat')]
    [JSONIgnore]
    property CreatedAt: TDateTime read FCreatedAt write FCreatedAt;
    [JSONProp('updateat')]
    [JSONIgnore]
    property UpdateAt: TDateTime read FUpdateAt write FUpdateAt;
  end;

implementation

end.
