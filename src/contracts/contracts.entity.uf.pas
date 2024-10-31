unit contracts.entity.uf;

interface

type
  IUf<T: IInterface> = interface
    ['{93FB8F85-1A3E-4A28-979B-4F357E6E2474}']
    function Id(Value: String): IUf<T>; overload;
    function Id: String; overload;
    function Descricao(Value: String): IUf<T>; overload;
    function Descricao: String; overload;
    function CodIbge(Value: String): IUf<T>; overload;
    function CodIbge: String; overload;
    function Build: T;
  end;

implementation

end.
