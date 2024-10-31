unit contracts.entity.caixaomovimento;

interface

uses
  contracts.entity.empresa,
  contracts.entity.usuarios,
  contracts.entity.caixa,
  contracts.entity.turno;

type
  ICaixaMovimento = interface
    ['{F00D43E2-8522-4ECB-876C-FE07EB028A8E}']
    function Id(Value: String): ICaixaMovimento; overload;
    function Id: String; overload;
    function Empresa(Value: IEmpresa): ICaixaMovimento; overload;
    function Empresa: IEmpresa; overload;
    function Operador(Value: IUsuarios): ICaixaMovimento; overload;
    function Operador: IUsuarios; overload;
    function Caixa(Value: ICaixa): ICaixaMovimento; overload;
    function Caixa: ICaixa; overload;
    function Turno(Value: ITurno): ICaixaMovimento; overload;
    function DataAbertura(Value: TDateTime): ICaixaMovimento; overload;
    function DataAbertura: TDateTime; overload;
    function DataFechamento(Value: TDateTime): ICaixaMovimento; overload;
    function DataFechamento: TDateTime; overload;
    function Situacao(Value: String): ICaixaMovimento; overload;
    function Sitiacao: String; overload;
    function Build: ICaixaMovimento;
  end;

implementation

end.
