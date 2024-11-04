unit entity.clientes;

interface

uses
  contracts.entity.endereco,
  contracts.entity.empresa,
  contracts.entity.clientes;

type
  TClientes = class(TInterfacedObject, IClientes)
  private
    FId: String;
    FNome: String;
    FCPFCNPJ: String;
    FTelefone: String;
    FEmail: String;
    FIndIE: Integer;
    FInscricaoEstadual: String;
    FInscricaoMunicipal: String;
    FSuframa: String;
    FEndereco: IEndereco<IClientes>;
    FEmpresa: IEmpresa;
    FCreatedAt: TDateTime;
    FUpdatedAt: TDateTime;
  public
    class function New: IClientes;

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

uses
  entity.endereco;

function TClientes.Build: IClientes;
begin
  Result := Self;
end;

function TClientes.CPFCNPJ: String;
begin
  REsult := FCPFCNPJ;
end;

function TClientes.CPFCNPJ(Value: String): IClientes;
begin
  Result := SELf;
  FCPFCNPJ := Value;
end;

function TClientes.CreatedAt: TDateTime;
begin
  Result := FCreatedAt;
end;

function TClientes.CreatedAt(Value: TDateTime): IClientes;
begin
  Result := SELf;
  FCreatedAt := Value;
end;

function TClientes.Email(Value: String): IClientes;
begin
  Result := SELf;
  FEmail := Value;
end;

function TClientes.Email: String;
begin
  Result := FEmail;
end;

function TClientes.Empresa: IEmpresa;
begin
  Result := FEmpresa;
end;

function TClientes.Empresa(Value: IEmpresa): IClientes;
begin
  Result := SELf;
  FEmpresa := Value;
end;

function TClientes.Endereco: IEndereco<IClientes>;
begin
  if not Assigned(FEndereco) then
    FEndereco := TEndereco<IClientes>.NEw(Self);
  REsult := FEndereco;
end;

function TClientes.Id(Value: String): IClientes;
begin
  Result := SELf;
  FId := Value;
end;

function TClientes.Id: String;
begin
  Result := FId;
end;

function TClientes.IndIE(Value: Integer): IClientes;
begin
  Result := SELf;
  FIndIE := Value;
end;

function TClientes.IndIE: Integer;
begin
  Result := FIndIE;
end;

function TClientes.InscricaoEstadual(Value: String): IClientes;
begin
  Result := SELf;
  FInscricaoEstadual := Value;
end;

function TClientes.InscricaoEstadual: String;
begin
  Result := FInscricaoEstadual;
end;

function TClientes.InscricaoMunicipal: String;
begin
  Result := FInscricaoMunicipal;
end;

function TClientes.InscricaoMunicipal(Value: String): IClientes;
begin
  Result := SELf;
  FInscricaoMunicipal := Value;
end;

class function TClientes.New: IClientes;
begin
  REsult := Self.Create;
end;

function TClientes.Nome: String;
begin
  Result := FNome;
end;

function TClientes.Nome(Value: String): IClientes;
begin
  Result := SELf;
  FNome := Value;
end;

function TClientes.Suframa: String;
begin
  Result := FSuframa;
end;

function TClientes.Suframa(Value: String): IClientes;
begin
  Result := SELf;
  FSuframa := Value;
end;

function TClientes.Telefone: String;
begin
  Result := FTelefone;
end;

function TClientes.Telefone(Value: String): IClientes;
begin
  Result := SELf;
  FTelefone := Value;
end;

function TClientes.UpdatedAt: TDateTime;
begin
  Result := FUpdatedAt;
end;

function TClientes.UpdatedAt(Value: TDateTime): IClientes;
begin
  Result := SELf;
  FUpdatedAt := Value;
end;

end.

