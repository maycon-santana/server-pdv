unit server.entity.endereco;

interface

  type
    TEndereco = class
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
      FUpdate: TDateTime;
    public
      property Id: String read FId write FId;
      property Empresa: String read FEmpresa write FEmpresa;
      property Logradouro: String read FLogradouro write FLogradouro;
      property Numero: String read FNumero write FNumero;
      property Complemento: String read FComplemento write FComplemento;
      property Bairro: String read FBairro write FBairro;
      property Cidade: String read FCidade write FCidade;
      property Estado: String read FEstado write FEstado;
      property Cep: String read FCep write FCep;
      property CreateAt: TDateTime read FCreateAt write FCreateAt;
      property UpdatedAt: TDateTime read FUpdate write FUpdate;
    end;

implementation

end.

