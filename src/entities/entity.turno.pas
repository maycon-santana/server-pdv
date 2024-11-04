unit entity.turno;

interface

uses
  contracts.entity.turno,
  contracts.entity.empresa;

type
  TTurno = class(TInterfacedObject, ITurno)
  private
    FId: String;
    FEmpresa: IEmpresa;
    FNome: String;
  public
    class function New: ITurno;

    function Id(Value: String): ITurno; overload;
    function Id: String; overload;
    function Empresa(Value: IEmpresa): ITurno; overload;
    function Empresa: IEmpresa; overload;
    function Nome(Value: String): ITurno; overload;
    function Nome: String; overload;
    function Build: ITurno;
  end;

implementation

{ TTurno }

function TTurno.Build: ITurno;
begin
  REsult := SElf;
end;

function TTurno.Empresa: IEmpresa;
begin
  Result := FEmpresa;
end;

function TTurno.Empresa(Value: IEmpresa): ITurno;
begin
  Result := SElf;
  FEmpresa := VAlue;
end;

function TTurno.Id(Value: String): ITurno;
begin
  Result := SElf;
  FId := VAlue;
end;

function TTurno.Id: String;
begin
  Result := FId;
end;

class function TTurno.New: ITurno;
begin
  REsult := SElf.Create
end;

function TTurno.Nome: String;
begin
  Result := FNome;
end;

function TTurno.Nome(Value: String): ITurno;
begin
  Result := SElf;
  FNome := VAlue;
end;

end.

