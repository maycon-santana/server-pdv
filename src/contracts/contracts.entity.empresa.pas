unit contracts.entity.empresa;

interface

uses
  System.Generics.Collections,
  contracts.entity.endereco,
  contracts.entity.emissoresfiscais,
  contracts.entity.empresacnae;

type
  IEmpresa = interface
    ['{30016FEC-F009-4B1B-91C5-1CBB57B3B835}']
    function Id(Value: String): IEmpresa; overload;
    function Id: String; overload;
    function Nome(Value: String): IEmpresa; overload;
    function Nome: String; overload;
    function CNPJ(Value: String): IEmpresa; overload;
    function CNPJ: String; overload;
    function Telefone(Value: String): IEmpresa; overload;
    function Telefone: String; overload;
    function Email(Value: String): IEmpresa; overload;
    function Email: String; overload;
    function InscricaoEstadual(Value: String): IEmpresa; overload;
    function InscricaoEstadual: String; overload;
    function InscricaoEstadualST(Value: String): IEmpresa; overload;
    function InscricaoEstadualST: String; overload;
    function InscricaoMunicipal(Value: String): IEmpresa; overload;
    function InscricaoMunicipal: String; overload;
    function CRT(Value: Integer): IEmpresa; overload;
    function CRT: Integer; overload;
    function Logotipo(Value: String): IEmpresa; overload;
    function Logotipo: String; overload;
    function Regime(Value: Integer): IEmpresa; overload;
    function Regime: Integer; overload;
    function Endereco: IEndereco<IEmpresa>;
    function EmissoresFiscais: IEmissoresFiscais<IEmpresa>;
    function EmpresaCnae: IEmpresaCnae<IEmpresa>; overload;
    function EmpresaCnae(Value: IEmpresaCnae<IEmpresa>): IEmpresa; overload;
    function EmpresaCnaeRet: TList<IEmpresaCnae<IEmpresa>>; overload;
    function CreatedAt(Value: TDateTime): IEmpresa; overload;
    function CreatedAt: TDateTime; overload;
    function UpdatedAt(Value: TDateTime): IEmpresa; overload;
    function UpdatedAt: TDateTime; overload;
    function Build: IEmpresa;
  end;

implementation

end.
