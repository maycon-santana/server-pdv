unit contracts.entity.ibpt;

interface

type
  IIbpt<T: IInterface> = interface
    ['{A383F887-4516-4A69-B542-2466BACC243A}']
    function Id(Value: String): IIbpt<T>; overload;
    function Id: String; overload;
    function ExtiIPI(Value: String): IIbpt<T>; overload;
    function ExtiIPI: String; overload;
    function Tipo(Value: Integer): IIbpt<T>; overload;
    function Tipo: Integer; overload;
    function AliqNacional(Value: Currency): IIbpt<T>; overload;
    function AliqNacional: Currency; overload;
    function AliqImportado(Value: Currency): IIbpt<T>; overload;
    function AliqImportado: Currency; overload;
    function AliqEstadual(Value: Currency): IIbpt<T>; overload;
    function AliqEstadual: Currency; overload;
    function AliqMunicipal(Value: Currency): IIbpt<T>; overload;
    function AliqMunicipal: Currency; overload;
    function CEST(Value: String): IIbpt<T>; overload;
    function CEST: String; overload;
    function Build: T;
  end;

implementation

end.
