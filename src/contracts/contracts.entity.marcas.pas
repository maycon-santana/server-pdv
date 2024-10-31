unit contracts.entity.marcas;

interface

uses
  contracts.entity.empresa;

type
  IMarcas = interface
    ['{4B6AC590-2B4D-46ED-A307-2ED3C8BDECC0}']
    function Id(Value: String): IMarcas; overload;
    function Id: String; overload;
    function Empresa(Value: IEmpresa): IMarcas; overload;
    function Empresa: IEmpresa; overload;
    function Nome(Value: String): IMarcas; overload;
    function Nome: String; overload;
    function Decricao(Value: String): IMarcas; overload;
    function Descricao: String; overload;
    function Build: IMarcas;
  end;

implementation

end.
