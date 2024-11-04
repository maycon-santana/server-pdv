unit entity.endereco;

interface

uses
  contracts.entity.endereco;

type
  TEndereco<T: IInterface> = class(TInterfacedObject, IEndereco<T>)
  private
    FParent: T;

    FId: String;
    FLogradouro: String;
    FNumero: String;
    FComplemento: String;
    FBairro: String;
    FCidade: String;
    FEstado: String;
    FCep: String;
    FCreatedAt: TDateTime;
    FUpdatedAt: TDateTime;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): IEndereco<T>;

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

{ TEndereco<T> }

function TEndereco<T>.Bairro(Value: String): IEndereco<T>;
begin
  Result := Self;
  FBairro := Value;
end;

function TEndereco<T>.Bairro: String;
begin
  Result := FBairro;
end;

function TEndereco<T>.Build: T;
begin
  REsult := FParent;
end;

function TEndereco<T>.Cep(Value: String): IEndereco<T>;
begin
  Result := Self;
  FCep := Value;
end;

function TEndereco<T>.Cep: String;
begin
  Result := FCep;
end;

function TEndereco<T>.Cidade: String;
begin
  REsult := FCidade;
end;

function TEndereco<T>.Cidade(Value: String): IEndereco<T>;
begin
  Result := Self;
  FCidade := Value;
end;

function TEndereco<T>.Complemento: String;
begin
  Result := FComplemento;
end;

function TEndereco<T>.Complemento(Value: String): IEndereco<T>;
begin
  REsult := Self;
  FComplemento := VAlue;
end;

constructor TEndereco<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

function TEndereco<T>.CreatedAt(Value: TDateTime): IEndereco<T>;
begin
  Result := Self;
  FCreatedAt := Value;
end;

function TEndereco<T>.CreatedAt: TDateTime;
begin
  Result := FCreatedAt;
end;

function TEndereco<T>.Estado(Value: String): IEndereco<T>;
begin
  Result := Self;
  FEstado := Value;
end;

function TEndereco<T>.Estado: String;
begin
  Result := FEstado;
end;

function TEndereco<T>.Id: String;
begin
  REsult := FId;
end;

function TEndereco<T>.Id(Value: String): IEndereco<T>;
begin
  Result := Self;
  FId := Value;
end;

function TEndereco<T>.Logradouro(Value: String): IEndereco<T>;
begin
  Result := Self;
  FLogradouro := Value;
end;

function TEndereco<T>.Logradouro: String;
begin
  Result := FLogradouro;
end;

class function TEndereco<T>.New(Parent: T): IEndereco<T>;
begin
  REsult := SElf.Create(Parent);
end;

function TEndereco<T>.Numero(Value: String): IEndereco<T>;
begin
  Result := Self;
  FNumero := Value;
end;

function TEndereco<T>.Numero: String;
begin
  REsult := FNumero;
end;

function TEndereco<T>.UpdatedAt: TDateTime;
begin
  Result := FUpdatedAt;;
end;

function TEndereco<T>.UpdatedAt(Value: TDateTime): IEndereco<T>;
begin
  Result := Self;
  FUpdatedAt := Value;
end;

end.


