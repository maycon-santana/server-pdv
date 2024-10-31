unit server.entity.auditoria;

interface

uses
  contracts.server.entity.auditoria;

type
  TAuditoria<T: IInterface> = class(TInterfacedObject, TAuditoria<T>)
  private
    FParent: T;

    FId: string;
    FDataAcao: TDateTime;
    FDetalhe: string;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): IAuditoria<T>;

    function Id(Value: string): IAuditoria<T>; overload;
    function Id: string; overload;
    function DataAcao(Value: TDateTime): IAuditoria<T>; overload;
    function DataAcao: TDateTime; overload;
    function Detalhe(Value: string): IAuditoria<T>; overload;
    function Detalhe: string; overload;
    function Build: T;

end;

implementation

{ TIAuditoria<T> }

function TAuditoria<T>.Build: T;
begin
  Result := FParent;
end;

constructor TAuditoria<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

function TAuditoria<T>.DataAcao: TDateTime;
begin
  Result := FDataAcao;
end;

function TAuditoria<T>.DataAcao(Value: TDateTime): IAuditoria<T>;
begin
  REsult := Self;
  FDataAcao := VAlue;
end;

function TAuditoria<T>.Detalhe(Value: string): IAuditoria<T>;
begin
  Result := SElf;
  FDetalhe := Value;
end;

function TAuditoria<T>.Detalhe: string;
begin
  REsult := FDetalhe;
end;

function TAuditoria<T>.Id: string;
begin
  REsult := FId;
end;

function TAuditoria<T>.Id(Value: string): IAuditoria<T>;
begin
  Result := Self;
  FId := Value;
end;

class function TAuditoria<T>.New(Parent: T): IAuditoria<T>;
begin
  REsult := SElf.Create(Parent);
end;

end.
