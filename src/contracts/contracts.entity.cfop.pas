unit contracts.entity.cfop;

interface

type
  ICfop<T: IInterface> = interface
    ['{36A11DE4-E15F-4037-88E2-C23E018FCEF0}']
    function Id(Value: string): ICfop<T>; overload;
    function Id: string; overload;
    function Descricao(Value: string): ICfop<T>; overload;
    function Descricao: string; overload;
    function Build: T;
  end;

implementation

end.
