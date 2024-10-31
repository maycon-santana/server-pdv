unit contracts.entity.turno;

interface

uses
  contracts.entity.empresa;

type
  ITurno = interface
    ['{A6E0E34B-9E9F-4730-8F71-2640DF581726}']
    function Id(Value: String): ITurno; overload;
    function Id: String; overload;
    function Empresa(Value: IEmpresa): ITurno; overload;
    function Empresa: IEmpresa; overload;
    function Nome(Value: String): ITurno; overload;
    function Nome: String; overload;
    function Build: ITurno;
  end;

implementation

end.
