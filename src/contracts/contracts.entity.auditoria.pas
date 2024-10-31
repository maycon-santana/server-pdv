unit contracts.entity.auditoria;

interface

type
  IAuditoria<T: IInterface> = interface
    ['{7261817A-34BF-4D3B-88BB-86B0343FAB0E}']
    function Id(Value: string): IAuditoria<T>; overload;
    function Id: string; overload;
    function DataAcao(Value: TDateTime): IAuditoria<T>; overload;
    function DataAcao: TDateTime; overload;
    function Detalhe(Value: string): IAuditoria<T>; overload;
    function Detalhe: string; overload;
    function Build: T;
  end;

implementation

end.
