unit entity.caixa;

interface

uses
  contracts.entity.caixa,
  contracts.entity.empresa;

type
  TCaixa = class(TInterfacedObject, ICaixa)
  private
    FId: String;
    FEmpresa: IEmpresa;
    FNome: String;
  public
    class function New: ICaixa;

    function Id(Value: String): ICaixa; overload;
    function Id: String; overload;
    function Empresa(Value: IEmpresa): ICaixa; overload;
    function Empresa: IEmpresa; overload;
    function Nome(Value: String): ICaixa; overload;
    function Nome: String; overload;
    function Build: ICaixa;
  end;

implementation

{ TCaixa }

function TCaixa.Build: ICaixa;
begin
  REsult := SElf;
end;

function TCaixa.Empresa(Value: IEmpresa): ICaixa;
begin
  REsult := SElf;
  FEmpresa := Value;
end;

function TCaixa.Id(Value: String): ICaixa;
begin

end;

function TCaixa.Empresa: IEmpresa;
begin
  Result := FEmpresa;
end;

function TCaixa.Id: String;
begin
  REsult := FId;
end;

class function TCaixa.New: ICaixa;
begin
  REsult := SElf.Create;
end;

function TCaixa.Nome: String;
begin
  Result := FNome;
end;

function TCaixa.Nome(Value: String): ICaixa;
begin
  REsult := SElf;
  FNome := VAlue;
end;

end.

