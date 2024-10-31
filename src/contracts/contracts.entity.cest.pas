unit contracts.entity.cest;

interface

type
  ICest<T: IInterface> = interface
    ['{934756DE-264B-4B8F-819A-F653393B2E62}']
    function Id(Value: string): ICest<T>; overload;
    function Id: string; overload;
    function NCM(Value: string): ICest<T>; overload;
    function NCM: string; overload;
    function Descricao(Value: string): ICest<T>; overload;
    function Descricao: string; overload;
    function Build: T;
  end;

implementation

end.
