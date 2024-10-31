unit contracts.entity.empresacnae;

interface

type
  IEmpresaCnae<T: IInterface> = interface
    ['{A82A0E02-E97E-4968-968C-6417E9AD8847}']
    function Id(Value: String): IEmpresaCnae<T>; overload;
    function Id: String; overload;
    function Principal(Value: String): IEmpresaCnae<T>; overload;
    function Principal: String; overload;
    function RamoAtividade(Value: String): IEmpresaCnae<T>; overload;
    function RamoAtividade: String; overload;
    function ObjetivoSocial(Value: String): IEmpresaCnae<T>; overload;
    function ObjetivoSocial: String; overload;
    function Build: T;
  end;

implementation

end.
