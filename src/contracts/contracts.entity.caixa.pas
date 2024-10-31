unit contracts.entity.caixa;

interface

uses
  contracts.entity.empresa;

type
  ICaixa = interface
    ['{F04A5ADB-260F-46AA-8CCD-0C284098CC0B}']
    function Id(Value: String): ICaixa; overload;
    function Id: String; overload;
    function Empresa(Value: IEmpresa): ICaixa; overload;
    function Empresa: IEmpresa; overload;
    function Nome(Value: String): ICaixa; overload;
    function Nome: String; overload;
    function Build: ICaixa;
  end;

implementation

end.
