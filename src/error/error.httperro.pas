unit error.httperro;

interface

uses
  GBJSON.Attributes;

type
  THttpError = class
  private
    FErro: String;
    FDescricao: String;
    FMensagem: String;
  public
    [JSONProp('erro')]
    property Erro: String read FErro write FErro;
    [JSONProp('descricao')]
    property Descricao: String read FDescricao write FDescricao;
    [JSONProp('mensagem')]
    property Mensagem: String read FMensagem write FMensagem;
  end;

implementation

end.
