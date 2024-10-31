unit contracts.repository.base;

interface

uses
  System.Generics.Collections;

type
  IRepository<T: IInterface> = interface
    ['{B3585AA4-F3EE-4DFB-B137-85298DF60C80}']
    function Listar: TArray<T>;
    function ListarPorId: T;
    procedure Excluir;
    function Atualizar: T;
    function Inserir: T;
  end;

implementation

end.
