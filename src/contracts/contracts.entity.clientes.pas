unit contracts.entity.clientes;

interface

uses
  contracts.entity.endereco,
  contracts.entity.empresa;

type
  IClientes = interface
    ['{DF065894-185B-4170-974C-C57EB87B37F7}']
    function Id(Value: String): IClientes; overload;
    function Id: String; overload;
    function Nome(Value: String): IClientes; overload;
    function Nome: String; overload;
    function CPFCNPJ(Value: String): IClientes; overload;
    function CPFCNPJ: String; overload;
    function Telefone(Value: String): IClientes; overload;
    function Telefone: String; overload;
    function Email(Value: String): IClientes; overload;
    function Email: String; overload;
    function IndIE(Value: Integer): IClientes; overload;
    function IndIE: Integer; overload;
    function InscricaoEstadual(Value: String): IClientes; overload;
    function InscricaoEstadual: String; overload;
    function InscricaoMunicipal(Value: String): IClientes; overload;
    function InscricaoMunicipal: String; overload;
    function Suframa(Value: String): IClientes; overload;
    function Suframa: String; overload;
    function Endereco: IEndereco<IClientes>;
    function Empresa(Value: IEmpresa): IClientes; overload;
    function Empresa: IEmpresa; overload;
    function CreatedAt(Value: TDateTime): IClientes; overload;
    function CreatedAt: TDateTime; overload;
    function UpdatedAt(Value: TDateTime): IClientes; overload;
    function UpdatedAt: TDateTime; overload;
    function Build: IClientes;
  end;

implementation

end.
