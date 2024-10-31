unit contracts.connections.interfaces;

interface

uses
  Data.DB;

type
  IDataBaseConnection = interface
    ['{0F23FE3F-D422-469F-B2B8-49BB7EC40215}']
    procedure StartTransaction;
    procedure Commit;
    procedure Rollback;
    function Query(const Statement: String; const Params: TArray<TParams> = []): TDataSet; overload;
  end;

implementation

end.
