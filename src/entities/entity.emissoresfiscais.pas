unit entity.emissoresfiscais;

interface

uses
  System.Classes,
  contracts.entity.emissoresfiscais;

type
  TEmissoresFiscais<T: IInterface> = class(TInterfacedObject, IEmissoresFiscais<T>)
  private
    FParent: T;

    FId: String;
    FTipoDocumento: String;
    FAmbiente: String;
    FSerie: String;
    FNumero: String;
    FTipoEmissao: String;
    FTipoSped: String;
    FCertificadoDigital: TStream;
    FSenha: String;
    FCreatedAt: TDateTime;
    FUpdatedAt: TDateTime;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): IEmissoresFiscais<T>;

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


{ TEmissoresFiscais<T> }

function TEmissoresFiscais<T>.Ambiente: String;
begin
  REsult := FAmbiente;
end;

function TEmissoresFiscais<T>.Ambiente(Value: String): IEmissoresFiscais<T>;
begin
  Result := SElf;
  FAmbiente := VAlue;
end;

function TEmissoresFiscais<T>.Build: T;
begin
  Result := FParent;
end;

function TEmissoresFiscais<T>.CertificadoDigital: TStream;
begin
  Result := FCertificadoDigital;
end;

function TEmissoresFiscais<T>.CertificadoDigital(
  Value: TStream): IEmissoresFiscais<T>;
begin
  REsult := SElf;
  FCertificadoDigital := Value;
end;

constructor TEmissoresFiscais<T>.Create(Parent: T);
begin
  FParent := PArent;
end;

function TEmissoresFiscais<T>.CreatedAt(Value: TDateTime): IEmissoresFiscais<T>;
begin
  Result := Self;
  FCreatedAt := VALue;
end;

function TEmissoresFiscais<T>.CreatedAt: TDateTime;
begin
  REsult := FCreatedAt;
end;

function TEmissoresFiscais<T>.Id: String;
begin
  REsult := FId;
end;

function TEmissoresFiscais<T>.Id(Value: String): IEmissoresFiscais<T>;
begin
  Result := Self;
  FID := VALue;
end;

class function TEmissoresFiscais<T>.New(Parent: T): IEmissoresFiscais<T>;
begin
  Result := SElf.Create(Parent);
end;

function TEmissoresFiscais<T>.Numero(Value: String): IEmissoresFiscais<T>;
begin
  Result := Self;
  FNumero := VALue;
end;

function TEmissoresFiscais<T>.Numero: String;
begin
  Result := FNumero;
end;

function TEmissoresFiscais<T>.Serie(Value: String): IEmissoresFiscais<T>;
begin
  Result := Self;
  FSerie := VALue;
end;

function TEmissoresFiscais<T>.Senha: String;
begin
  Result := FSenha;
end;

function TEmissoresFiscais<T>.Senha(Value: String): IEmissoresFiscais<T>;
begin
  REsult := SElf;
  FSenha := Value;
end;

function TEmissoresFiscais<T>.Serie: String;
begin
  REsult := FSerie;
end;

function TEmissoresFiscais<T>.TipoDocumento(
  Value: String): IEmissoresFiscais<T>;
begin
  Result := Self;
  FTipoDocumento := VALue;
end;

function TEmissoresFiscais<T>.TipoDocumento: String;
begin
  Result := FTipoDocumento;
end;

function TEmissoresFiscais<T>.TipoEmissao: String;
begin
  Result := TipoEmissao;
end;

function TEmissoresFiscais<T>.TipoEmissao(Value: String): IEmissoresFiscais<T>;
begin
  REsult := Self;
  FTipoEmissao := VAlue;
end;

function TEmissoresFiscais<T>.TipoSped(Value: String): IEmissoresFiscais<T>;
begin
  REsult := SElf;
  FTipoSped := VAlue;
end;

function TEmissoresFiscais<T>.TipoSped: String;
begin
  REsult := FTipoSped;
end;

function TEmissoresFiscais<T>.UpdatedAt: TDateTime;
begin
  REsult := FUpdatedAt;
end;

function TEmissoresFiscais<T>.UpdatedAt(Value: TDateTime): IEmissoresFiscais<T>;
begin
  REsult := SElf;
  FUpdatedAt := VAlue;
end;

end.

