unit contracts.entity.cst;

interface

type
  ICST<T: IInterface> = interface
    ['{47A176B7-7048-4C76-AF7A-45A4A5520C4F}']
    function Id(Value: String): ICST<T>; overload;
    function Id: String; overload;
    function Descricao(Value: String): ICST<T>; overload;
    function Descricao: String; overload;
    function SimplesNacional(Value: String): ICST<T>; overload;
    function SimplesNacional: String; overload;
    function Build: T;
  end;

implementation

end.
