unit models.autenticacoes;

interface

uses
  GBJSON.Attributes;

type
    TMOdelAutenticacoes = class
    private
    FTokenAcesso: String;
    FDataGeracao: TDateTime;
    FDataExpiracao: TDateTime;
    FClientId: String;
    FClienteSecret: String;
    public
      [JSONProp('client_id')]
      property ClientId: String read FClientId write FClientId;
      [JSONProp('client_secret')]
      property ClienteSecret: String read FClienteSecret write FClienteSecret;
      [JSONProp('token_acess')]
      property TokenAcesso: String read FTokenAcesso write FTokenAcesso;
      [JSONProp('data_geracao')]
      property DataGeracao: TDateTime read FDataGeracao write FDataGeracao;
      [JSONProp('data_expiracao')]
      property DataExpiracao: TDateTime read FDataExpiracao write FDataExpiracao;
    end;

implementation

end.
