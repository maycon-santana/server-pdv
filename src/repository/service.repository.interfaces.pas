unit service.repository.interfaces;

interface

uses
  System.Generics.Collections;

type
  IRepository<T: class> = interface
    ['{75670650-19F4-40AC-95FD-3D8E5CF2437F}']
    function Listar: IRepository<T>;
    function ListarPorId(Value: String): IRepository<T>;
    function Excluir(Value: String): IRepository<T>;
    function Atualizar: IRepository<T>;
    function Inserir: IRepository<T>;
    function This: T;
    function These: TObjectList<T>;
  end;

implementation

end.
