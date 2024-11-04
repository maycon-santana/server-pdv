unit entity.autenticacoes;

interface

uses
  contracts.entity.autenticacoes,
  contracts.entity.empresa;

type
  TAutenticacoes = class(TInterfacedObject, IAutenticacoes)
  private
    FId: String;
    FUsuario: IEmpresa;
    FClientId: String;
    FClientSecret: String;
    FTokenAcesso: String;
    FDataGeracao: TDateTime;
    FDataExpiracao: TDateTime;
    FEmpresa: IEmpresa;
  public
    class function New: IAutenticacoes;

    function Id(Value: String): IAutenticacoes; overload;
    function Id: String; overload;
    function Empresa(Value: IEmpresa): IAutenticacoes; overload;
    function Empresa: IEmpresa; overload;
    function ClientId(Value: String): IAutenticacoes; overload;
    function ClientId: String; overload;
    function ClientSecret(Value: String): IAutenticacoes; overload;
    function ClientSecret: String; overload;
    function TokenAcesso(Value: String): IAutenticacoes; overload;
    function TokenAcesso: String; overload;
    function DataGeracao(Value: TDateTime): IAutenticacoes; overload;
    function DataGeracao: TDateTime; overload;
    function DataExpiracao(Value: TDateTime): IAutenticacoes; overload;
    function DataExpiracao: TDateTime; overload;
    function Build: IAutenticacoes;
  end;

implementation

uses
  System.SysUtils,
  System.DateUtils;

function TAutenticacoes.Build: IAutenticacoes;
begin
  REsult := Self;
end;

function TAutenticacoes.ClientId(Value: String): IAutenticacoes;
begin
  REsult := Self;
  FClientId := Value;
end;

function TAutenticacoes.ClientId: String;
begin
  REsult := FClientId;
end;

function TAutenticacoes.ClientSecret(Value: String): IAutenticacoes;
begin
  Result := Self;
  FClientSecret := Value;
end;

function TAutenticacoes.ClientSecret: String;
begin
  Result := FClientSecret;
end;

function TAutenticacoes.DataExpiracao(Value: TDateTime): IAutenticacoes;
begin
  Result := SElf;
  FDataExpiracao := VAlue;
end;

function TAutenticacoes.DataExpiracao: TDateTime;
begin
  REsult := FDataExpiracao;
end;

function TAutenticacoes.DataGeracao(Value: TDateTime): IAutenticacoes;
begin
  Result := Self;
  FDataGeracao := Value;
end;

function TAutenticacoes.DataGeracao: TDateTime;
begin
  REsult := FDataGeracao;
end;

function TAutenticacoes.Id: String;
begin
  REsult := FId;
end;

function TAutenticacoes.Id(Value: String): IAutenticacoes;
begin
  Result := Self;
  FId := Value;
end;

class function TAutenticacoes.New: IAutenticacoes;
begin
  Result := SElf.Create;
end;

function TAutenticacoes.TokenAcesso: String;
begin
  REsult := FTokenAcesso;
end;

function TAutenticacoes.TokenAcesso(Value: String): IAutenticacoes;
begin
  Result := Self;
  FTokenAcesso := VAlue;
end;

function TAutenticacoes.Empresa(Value: IEmpresa): IAutenticacoes;
begin
  Result := SElf;
  FEmpresa := Value;
end;

function TAutenticacoes.Empresa: IEmpresa;
begin
  Result := FEmpresa;
end;

end.
