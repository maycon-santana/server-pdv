unit contracts.entity.endereco;

interface

type
  IEndereco<T: IInterface> = interface
    function Id(Value: String): IEndereco<T>; overload;
    function Id: String; overload;
    function Logradouro(Value: String): IEndereco<T>; overload;
    function Logradouro: String; overload;
    function Numero(Value: String): IEndereco<T>; overload;
    function Numero: String; overload;
    function Complemento(Value: String): IEndereco<T>; overload;
    function Complemento: String; overload;
    function Bairro(Value: String): IEndereco<T>; overload;
    function Bairro: String; overload;
    function Cidade(Value: String): IEndereco<T>; overload;
    function Cidade: String; overload;
    function Estado(Value: String): IEndereco<T>; overload;
    function Estado: String; overload;
    function Cep(Value: String): IEndereco<T>; overload;
    function Cep: String; overload;
    function CreatedAt(Value: TDateTime): IEndereco<T>; overload;
    function CreatedAt: TDateTime; overload;
    function UpdatedAt(Value: TDateTime): IEndereco<T>; overload;
    function UpdatedAt: TDateTime; overload;
    function Build: T;
  end;

implementation

end.
