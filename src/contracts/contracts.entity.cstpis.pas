unit contracts.entity.cstpis;

interface

type
  ICstPis<T: IInterface> = interface
    ['{9376119F-2A38-4A32-A1B9-89E2122C028E}']
    function Id(Value: String): ICstPis<T>; overload;
    function Id: String; overload;
    function Descricao(Value: String): ICstPis<T>; overload;
    function Descricao: String; overload;
    function Build: T;
  end;

implementation

end.
