unit entity.marcas;

interface

uses
  contracts.entity.marcas,
  contracts.entity.empresa;

type
  TMarcas = class(TInterfacedObject, IMarcas)
  private
    FId: String;
    FEmpresa: IEmpresa;
    FNome: String;
    FDescricao: String;
  public
    class function New: IMarcas;

    function Id(Value: String): IMarcas; overload;
    function Id: String; overload;
    function Empresa(Value: IEmpresa): IMarcas; overload;
    function Empresa: IEmpresa; overload;
    function Nome(Value: String): IMarcas; overload;
    function Nome: String; overload;
    function Decricao(Value: String): IMarcas; overload;
    function Descricao: String; overload;
    function Build: IMarcas;
  end;

implementation

function TMarcas.Build: IMarcas;
begin
  REsult := SElf;
end;

function TMarcas.Decricao(Value: String): IMarcas;
begin
  Result := SElf;
  FDescricao := Value;
end;

function TMarcas.Descricao: String;
begin
  Result := FDescricao;
end;

function TMarcas.Empresa: IEmpresa;
begin
  REsult := FEmpresa;
end;

function TMarcas.Empresa(Value: IEmpresa): IMarcas;
begin
  Result := Self;
  FEmpresa := Value;
end;

function TMarcas.Id: String;
begin
  Result := FId;
end;

function TMarcas.Id(Value: String): IMarcas;
begin
  Result := Self;
  FId := Value;
end;

class function TMarcas.New: IMarcas;
begin
  Result := Self.Create;
end;

function TMarcas.Nome(Value: String): IMarcas;
begin
  Result := Self;
  FNome := Value;
end;

function TMarcas.Nome: String;
begin
  Result := FNome;
end;

end.

