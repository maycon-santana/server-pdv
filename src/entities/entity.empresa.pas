unit entity.empresa;

interface

uses
  System.Generics.Collections,
  contracts.entity.empresa,
  contracts.entity.endereco,
  contracts.entity.emissoresfiscais,
  contracts.entity.empresacnae;

type
  TEmpresa = class(TInterfacedObject, IEmpresa)
  private
    FId: String;
    FNome: String;
    FCNPJ: String;
    FTelefone: String;
    FEmail: String;
    FInscricaoEstadual: String;
    FInscricaoEstadualST: String;
    FInscricaoMunicipal: String;
    FCRT: Integer;
    FLogotipo: String;
    FRegime: Integer;
    FEndereco: IEndereco<IEmpresa>;
    FEmissoresFiscais: IEmissoresFiscais<IEmpresa>;
    FEmpresaCnae: IEmpresaCnae<IEmpresa>;
    FEmpresaCnaeList: TList<IEmpresaCnae<IEmpresa>>;
    FCreatedAt: TDateTime;
    FUpdatedAt: TDateTime;

    constructor Create;
    destructor Destroy; override;
  public
    class function New: IEmpresa;

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

uses
  entity.emissoresfiscais,
  entity.empresacnae,
  entity.endereco;

function TEmpresa.Build: IEmpresa;
begin
  REsult := SElf;
end;

function TEmpresa.CNPJ: String;
begin
  Result := FCNPJ;
end;

function TEmpresa.CNPJ(Value: String): IEmpresa;
begin
  REsult := SElf;
  FCNPJ := Value;
end;

constructor TEmpresa.Create;
begin
  FEmpresaCnaeList := TList<IEmpresaCnae<IEmpresa>>.Create;
end;

function TEmpresa.CreatedAt: TDateTime;
begin
  Result := FCreatedAt;
end;

function TEmpresa.CreatedAt(Value: TDateTime): IEmpresa;
begin
  REsult := SElf;
  FCreatedAt := Value;
end;

function TEmpresa.CRT: Integer;
begin
  REsult := FCRT;
end;

destructor TEmpresa.Destroy;
begin
  FEmpresaCnaeList.Free;
  inherited;
end;

function TEmpresa.CRT(Value: Integer): IEmpresa;
begin
  REsult := SElf;
  FCRT := Value;
end;

function TEmpresa.Email(Value: String): IEmpresa;
begin
  REsult := SElf;
  FCNPJ := Value;
end;

function TEmpresa.Email: String;
begin
  REsult := FEmail;
end;

function TEmpresa.EmissoresFiscais: IEmissoresFiscais<IEmpresa>;
begin
  if not Assigned(FEmissoresFiscais) then
    FEmissoresFiscais := TEmissoresFiscais<IEmpresa>.NEw(SElf);
  REsult := FEmissoresFiscais;
end;

function TEmpresa.EmpresaCnaeRet: TList<IEmpresaCnae<IEmpresa>>;
begin
  REsult := FEmpresaCnaeList;
end;

function TEmpresa.EmpresaCnae(Value: IEmpresaCnae<IEmpresa>): IEmpresa;
begin
  REsult := SElf;
  FEmpresaCnaeList.Add(Value);
end;

function TEmpresa.EmpresaCnae: IEmpresaCnae<IEmpresa>;
begin
  if not Assigned(FEmpresaCnae) then
    FEmpresaCnae := TEmpresaCnae<IEmpresa>.NEw(SElf);
  REsult := FEmpresaCnae;
end;

function TEmpresa.Endereco: IEndereco<IEmpresa>;
begin
  if not Assigned(FEndereco) then
    FEndereco := TEndereco<IEmpresa>.NEw(SElf);
  REsult := FEndereco;
end;

function TEmpresa.Id(Value: String): IEmpresa;
begin
  Result := SElf;
  FId := Value;
end;

function TEmpresa.Id: String;
begin
  REsult := FId;
end;

function TEmpresa.InscricaoEstadual(Value: String): IEmpresa;
begin
  REsult := SElf;
  FInscricaoEstadual := VAlue;
end;

function TEmpresa.InscricaoEstadual: String;
begin
  REsult := FInscricaoEstadual;
end;

function TEmpresa.InscricaoEstadualST: String;
begin
  REsult := FInscricaoEstadualST;
end;

function TEmpresa.InscricaoEstadualST(Value: String): IEmpresa;
begin
  REsult := SElf;
  FInscricaoEstadualST := VAlue;
end;

function TEmpresa.InscricaoMunicipal(Value: String): IEmpresa;
begin
  REsult := SElf;
  FInscricaoMunicipal := VAlue;
end;

function TEmpresa.InscricaoMunicipal: String;
begin
  REsult := FInscricaoMunicipal;
end;

function TEmpresa.Logotipo: String;
begin
  REsult := FLogotipo;
end;

function TEmpresa.Logotipo(Value: String): IEmpresa;
begin
  REsult := SElf;
  FLogotipo := VAlue;
end;

class function TEmpresa.New: IEmpresa;
begin
  REsult := SElf.Create;
end;

function TEmpresa.Nome(Value: String): IEmpresa;
begin
  REsult := SElf;
  FNome := VAlue;
end;

function TEmpresa.Nome: String;
begin
  REsult := FNome;
end;

function TEmpresa.Regime: Integer;
begin
  REsult := FRegime;
end;

function TEmpresa.Regime(Value: Integer): IEmpresa;
begin
  REsult := SElf;
  FRegime := VAlue;
end;

function TEmpresa.Telefone(Value: String): IEmpresa;
begin
  REsult := SElf;
  FTelefone := VAlue;
end;

function TEmpresa.Telefone: String;
begin
  REsult := FTelefone;
end;

function TEmpresa.UpdatedAt(Value: TDateTime): IEmpresa;
begin
  REsult := SElf;
  FUpdatedAt := VAlue;
end;

function TEmpresa.UpdatedAt: TDateTime;
begin
  REsult := FUpdatedAt;
end;

end.

