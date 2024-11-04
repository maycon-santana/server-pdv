unit entity.caixamovimento;

interface

uses
  contracts.entity.caixaomovimento,
  contracts.entity.empresa,
  contracts.entity.usuarios,
  contracts.entity.caixa,
  contracts.entity.turno;

type
  TCaixaMovimento = class(TInterfacedObject, ICaixaMovimento)
  private
    FId: String;
    FEmpresa: IEmpresa;
    FOpercador: IUsuarios;
    FCaixa: ICaixa;
    FTurno: ITurno;
    FDataAbertura: TDateTime;
    FDataFechamento: TDateTime;
    FSitiacao: String;
  public
    class function New: ICaixaMovimento;

    function Id(Value: String): ICaixaMovimento; overload;
    function Id: String; overload;
    function Empresa(Value: IEmpresa): ICaixaMovimento; overload;
    function Empresa: IEmpresa; overload;
    function Operador(Value: IUsuarios): ICaixaMovimento; overload;
    function Operador: IUsuarios; overload;
    function Caixa(Value: ICaixa): ICaixaMovimento; overload;
    function Caixa: ICaixa; overload;
    function Turno(Value: ITurno): ICaixaMovimento; overload;
    function DataAbertura(Value: TDateTime): ICaixaMovimento; overload;
    function DataAbertura: TDateTime; overload;
    function DataFechamento(Value: TDateTime): ICaixaMovimento; overload;
    function DataFechamento: TDateTime; overload;
    function Situacao(Value: String): ICaixaMovimento; overload;
    function Sitiacao: String; overload;
    function Build: ICaixaMovimento;
  end;

implementation

{ TCaixaMovimento }

function TCaixaMovimento.Build: ICaixaMovimento;
begin
  Result := SElf;
end;

function TCaixaMovimento.Caixa: ICaixa;
begin
  Result := FCaixa;
end;

function TCaixaMovimento.Caixa(Value: ICaixa): ICaixaMovimento;
begin
  REsult := SElf;
  FCaixa := Value;
end;

function TCaixaMovimento.DataAbertura: TDateTime;
begin
  Result := FDataAbertura;
end;

function TCaixaMovimento.DataAbertura(Value: TDateTime): ICaixaMovimento;
begin
  Result := SElf;
  FDataAbertura := Value;
end;

function TCaixaMovimento.DataFechamento: TDateTime;
begin
  REsult := FDataFechamento;
end;

function TCaixaMovimento.DataFechamento(Value: TDateTime): ICaixaMovimento;
begin
  Result := SElf;
  FDataFechamento := Value;
end;

function TCaixaMovimento.Empresa: IEmpresa;
begin
  REsult := FEmpresa;
end;

function TCaixaMovimento.Empresa(Value: IEmpresa): ICaixaMovimento;
begin
  Result := SElf;
  FEmpresa := Value;
end;

function TCaixaMovimento.Id: String;
begin
  Result := FId;
end;

function TCaixaMovimento.Id(Value: String): ICaixaMovimento;
begin
  Result := Self;
  FId := Value;
end;

class function TCaixaMovimento.New: ICaixaMovimento;
begin
  REsult := SElf.Create;
end;

function TCaixaMovimento.Operador: IUsuarios;
begin
  REsult := FOpercador;
end;

function TCaixaMovimento.Operador(Value: IUsuarios): ICaixaMovimento;
begin
  Result := SELf;
  FOpercador := VAlue;
end;

function TCaixaMovimento.Sitiacao: String;
begin
  Result := FSitiacao;
end;

function TCaixaMovimento.Situacao(Value: String): ICaixaMovimento;
begin
  Result := SElf;
  FSitiacao := VALue;
end;

function TCaixaMovimento.Turno(Value: ITurno): ICaixaMovimento;
begin
  Result := SElf;
  FTurno := VALue;
end;

end.

