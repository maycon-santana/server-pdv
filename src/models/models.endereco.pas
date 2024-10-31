unit models.endereco;

interface

uses
  GBJSON.Attributes;

type
  TEnderecoModel = class
  private
    FId: String;
    FEmpresa: String;
    FLogradouro: String;
    FNumero: String;
    FComplemento: String;
    FBairro: String;
    FCidade: String;
    FEstado: String;
    FCep: String;
    FCreateAt: TDateTime;
    FUpdatedAt: TDateTime;
  public
    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('empresa')]
    [JSONIgnore]
    property Empresa: String read FEmpresa write FEmpresa;
    [JSONProp('logradouro')]
    property Logradouro: String read FLogradouro write FLogradouro;
    [JSONProp('numero')]
    property Numero: String read FNumero write FNumero;
    [JSONProp('Complemento')]
    property Complemento: String read FComplemento write FComplemento;
    [JSONProp('bairro')]
    property Bairro: String read FBairro write FBairro;
    [JSONProp('cidade')]
    property Cidade: String read FCidade write FCidade;
    [JSONProp('estado')]
    property Estado: String read FEstado write FEstado;
    [JSONProp('cep')]
    property Cep: String read FCep write FCep;
    [JSONProp('createdat')]
    [JSONIgnore]
    property CreateAt: TDateTime read FCreateAt write FCreateAt;
    [JSONProp('updatedat')]
    [JSONIgnore]
    property UpdatedAt: TDateTime read FUpdatedAt write FUpdatedAt;
  end;


implementation

end.
