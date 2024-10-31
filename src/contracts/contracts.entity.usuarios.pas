unit contracts.entity.usuarios;

interface

uses
  contracts.entity.empresa,
  contracts.entity.auditoria;

type
  IUsuarios = interface
    ['{A8381B69-B06F-4AC0-AFA7-1411DA10595F}']
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

end.
