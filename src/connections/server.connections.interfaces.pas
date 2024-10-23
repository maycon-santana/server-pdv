unit server.connections.interfaces;

interface

uses
  Data.DB;

type
  IDataBaseConnection = interface
    ['{C1017594-A371-4B01-9C32-0D6C6E394986}']
    procedure StartTransaction;
    procedure Commit;
    procedure Rollback;
    procedure Query(const Statement: String; const Prams: Array of Variant; var DataSource: TDataSource);
  end;

implementation

end.
