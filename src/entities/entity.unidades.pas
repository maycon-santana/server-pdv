unit entity.unidades;

interface

uses
  contracts.entity.empresa,
  contracts.entity.unidades;

type
  TUnidades = class(TInterfacedObject, IUnidades)
  private
    FId: String;
    FEmpresa: IEmpresa;
    FSigla: String;
    FDescricao: String;
  public
    class function New: IUnidades;

    function Id(Value: String): IUnidades; overload;
    function Id: String; overload;
    function Empresa(Value: IEmpresa): IUnidades; overload;
    function Empresa: IEmpresa; overload;
    function Sigla(Value: String): IUnidades; overload;
    function Sigla: String; overload;
    function Descricao(Value: String): IUnidades; overload;
    function Descricao: String; overload;
    function Build: IUnidades;
  end;

implementation

{ TUnidades }

function TUnidades.Build: IUnidades;
begin
  Result := Self;
end;

function TUnidades.Descricao: String;
begin
  Result := FDescricao;
end;

function TUnidades.Descricao(Value: String): IUnidades;
begin
  Result := SElf;
  FDescricao := Value;
end;

function TUnidades.Empresa: IEmpresa;
begin
  Result := FEmpresa;
end;

function TUnidades.Empresa(Value: IEmpresa): IUnidades;
begin
  REsult := Self;
  FEmpresa := Value;
end;

function TUnidades.Id: String;
begin
  Result := FId;
end;

function TUnidades.Id(Value: String): IUnidades;
begin
  Result := Self;
  FId := VAlue;
end;

class function TUnidades.New: IUnidades;
begin
  Result := SElf.Create;
end;

function TUnidades.Sigla(Value: String): IUnidades;
begin
  Result := SElf;
  FSigla := Value;
end;

function TUnidades.Sigla: String;
begin
  Result := FSigla;
end;

end.

