unit contracts.entity.cstipi;

interface

type
  ICstIPI<T: IInterface> = interface
    ['{4428FAF0-18F1-458D-9FC4-111C821DE429}']
    function Id(Value: String): ICstIPI<T>; overload;
    function Id: String; overload;
    function Descricao(Value: String): ICstIPI<T>; overload;
    function Descricao: String; overload;
    function Build: T;
  end;

implementation

end.
