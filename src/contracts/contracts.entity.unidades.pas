unit contracts.entity.unidades;

interface

uses
  contracts.entity.empresa;

type
  IUnidades = interface
    ['{532603D8-03E6-4B7F-93F4-71D4A0294C2A}']
    function Id(Value: String): IUnidades; overload;
    function Id: String; overload;
    function Empresa(Value: IEmpresa): IUnidades; overload;
    function Empresa: IEmpresa; overload;
    function Sigla(Value: String): IUnidades; overload;
    function Sigla: String; overload;
    function Descricao(Value: String): IUnidades; overload;
    function Descricao: String; overload;
    function Build: IUnidades;
  end;

implementation

end.
