unit entity.usuarios;

interface

uses
  contracts.entity.usuarios,
  contracts.entity.empresa,
  contracts.entity.auditoria;

type
  TUsuarios = class(TInterfacedObject, IUsuarios)
  private
    FId: String;
    FEmpresa: IEmpresa;
    FNome: String;
    FEmail: String;
    FSenha: String;
    FRole: String;
    FAuditoria: IAuditoria<IUsuarios>;
    FCreatedAt: TDateTime;
    FUpdatedAt: TDateTime;
  public
    class function New: IUsuarios;

    function Id(Value: String): IUsuarios; overload;
    function Id: String; overload;
    function Empresa(VAlue: IEmpresa): IUsuarios; overload;
    function Empresa: IEmpresa; overload;
    function Nome(Value: String): IUsuarios; overload;
    function Nome: String; overload;
    function Email(Value: String): IUsuarios; overload;
    function Email: String; overload;
    function Senha(Value: String): IUsuarios; overload;
    function Senha: String; overload;
    function Role(Value: String): IUsuarios; overload;
    function Role: String; overload;
    function Auditoria: IAuditoria<IUsuarios>;
    function CreatedAt(Value: TDateTime): IUsuarios; overload;
    function CreatedAt: TDateTime; overload;
    function UpdatedAt(Value: TDateTime): IUsuarios; overload;
    function UpdatedAt: TDateTime; overload;
    function Build: IUsuarios;
  end;

implementation

uses
  entity.auditoria;

function TUsuarios.Auditoria: IAuditoria<IUsuarios>;
begin
  if not Assigned(FAuditoria) then
    FAuditoria := TAuditoria<IUsuarios>.New(Self);
  REsult := FAuditoria;
end;

function TUsuarios.Build: IUsuarios;
begin
  Result := Self;
end;

function TUsuarios.CreatedAt: TDateTime;
begin
  REsult := FCreatedAt;
end;

function TUsuarios.CreatedAt(Value: TDateTime): IUsuarios;
begin
  Result := Self;
  FCreatedAt := VAlue;
end;

function TUsuarios.Email(Value: String): IUsuarios;
begin
  Result := Self;
  FEmail := VAlue;
end;

function TUsuarios.Email: String;
begin
  Result := FEmail;
end;

function TUsuarios.Empresa: IEmpresa;
begin
  Result := FEmpresa
end;

function TUsuarios.Empresa(VAlue: IEmpresa): IUsuarios;
begin
  Result := Self;
  FEmpresa := VAlue;
end;

function TUsuarios.Id(Value: String): IUsuarios;
begin
  Result := Self;
  FId := VAlue;
end;

function TUsuarios.Id: String;
begin
  Result := FId;
end;

class function TUsuarios.New: IUsuarios;
begin
  Result := SElf.Create;
end;

function TUsuarios.Nome: String;
begin
  Result := FNOme;
end;

function TUsuarios.Nome(Value: String): IUsuarios;
begin
  Result := Self;
  FNome := VAlue;
end;

function TUsuarios.Role: String;
begin
  Result := FRole;
end;

function TUsuarios.Role(Value: String): IUsuarios;
begin
  Result := Self;
  FRole := VAlue;
end;

function TUsuarios.Senha: String;
begin
  Result := FSenha;
end;

function TUsuarios.Senha(Value: String): IUsuarios;
begin
  Result := Self;
  FSenha := VAlue;
end;

function TUsuarios.UpdatedAt: TDateTime;
begin
  Result := FUpdatedAt;
end;

function TUsuarios.UpdatedAt(Value: TDateTime): IUsuarios;
begin
  Result := Self;
  FUpdatedAt := VAlue;
end;

end.

