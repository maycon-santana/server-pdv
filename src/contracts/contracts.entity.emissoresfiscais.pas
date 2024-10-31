unit contracts.entity.emissoresfiscais;

interface

uses
  System.Classes;

type
  IEmissoresFiscais<T: IInterface> = interface
    function Id(Value: String): IEmissoresFiscais<T>; overload;
    function Id: String; overload;
    function TipoDocumento(Value: String): IEmissoresFiscais<T>; overload;
    function TipoDocumento: String; overload;
    function Ambiente(Value: String): IEmissoresFiscais<T>; overload;
    function Ambiente: String; overload;
    function Serie(Value: String): IEmissoresFiscais<T>; overload;
    function Serie: String; overload;
    function Numero(Value: String): IEmissoresFiscais<T>; overload;
    function Numero: String; overload;
    function TipoEmissao(Value: String): IEmissoresFiscais<T>; overload;
    function TipoEmissao: String; overload;
    function TipoSped(Value: String): IEmissoresFiscais<T>; overload;
    function TipoSped: String; overload;
    function CertificadoDigital(Value: TStream): IEmissoresFiscais<T>; overload;
    function CertificadoDigital: TStream; overload;
    function Senha(Value: String): IEmissoresFiscais<T>; overload;
    function Senha: String; overload;
    function CreatedAt(Value: TDateTime): IEmissoresFiscais<T>; overload;
    function CreatedAt: TDateTime; overload;
    function UpdatedAt(Value: TDateTime): IEmissoresFiscais<T>; overload;
    function UpdatedAt: TDateTime; overload;
    function Build: T;
  end;

implementation

end.
