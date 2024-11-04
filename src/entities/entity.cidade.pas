unit entity.cidade;

interface

uses
  contracts.entity.cidade,
  contracts.entity.uf;

type
  TCidade = class(TInterfacedObject, ICidade)
  private
    FCodIbge: String;
    FDescricao: String;
    FUf: IUf<ICidade>;
  public
    class function New: ICidade;

    function CodIbge(Value: string): ICidade; overload;
    function CodIbge: String; overload;
    function Descricao(Value: string): ICidade; overload;
    function Descricao: String; overload;
    function Uf: IUf<ICidade>;
    function Build: ICidade;
  end;

implementation

uses
  entity.uf;

function TCidade.Build: ICidade;
begin
  REsult := SElf;
end;

function TCidade.CodIbge(Value: string): ICidade;
begin
  REsult := SElf;
  FCodIbge := Value;
end;

function TCidade.CodIbge: String;
begin
  Result := FCodIbge;
end;

function TCidade.Descricao(Value: string): ICidade;
begin
  Result := SElf;
  FDescricao := VAlue;
end;

function TCidade.Descricao: String;
begin
  Result := FDescricao;
end;

class function TCidade.New: ICidade;
begin
  Result := SElf.Create;
end;

function TCidade.Uf: IUf<ICidade>;
begin
  if not Assigned(FUf) then
    FUf := TUf<ICidade>.New(Self);
  Result := FUf;
end;

end.

