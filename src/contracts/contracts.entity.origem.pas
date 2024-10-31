unit contracts.entity.origem;

interface

type
  IOrigem<T: IInterface> = interface
    ['{6782D33C-B9F1-4169-B5DB-1D53F71EB7D3}']
    function Id(Value: String): IOrigem<T>; overload;
    function Id: String; overload;
    function Descricao(Value: String): IOrigem<T>; overload;
    function Descricao: String; overload;
    function Build: T;
  end;

implementation

end.
