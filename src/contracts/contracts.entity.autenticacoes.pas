unit contracts.entity.autenticacoes;

interface

uses
  contracts.entity.empresa;

type
  IAutenticacoes = interface
    ['{03D38ADC-C395-4480-BB78-7983B5CB20F6}']
    function Id(Value: String): IAutenticacoes; overload;
    function Id: String; overload;
    function Empresa(Value: IEmpresa): IAutenticacoes; overload;
    function Empresa: IEmpresa; overload;
    function ClientId(Value: String): IAutenticacoes; overload;
    function ClientId: String; overload;
    function ClientSecret(Value: String): IAutenticacoes; overload;
    function ClientSecret: String; overload;
    function TokenAcesso(Value: String): IAutenticacoes; overload;
    function TokenAcesso: String; overload;
    function DataGeracao(Value: TDateTime): IAutenticacoes; overload;
    function DataGeracao: TDateTime; overload;
    function DataExpiracao(Value: TDateTime): IAutenticacoes; overload;
    function DataExpiracao: TDateTime; overload;
    function Build: IAutenticacoes;
  end;

implementation

end.
