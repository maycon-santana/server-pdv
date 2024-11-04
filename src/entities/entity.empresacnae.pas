unit entity.empresacnae;

interface

uses
  contracts.entity.empresacnae;

type
  TEmpresaCnae<T: IInterface> = class(TInterfacedObject, IEmpresaCnae<T>)
  private
    FParent: T;

    FId: String;
    FPrincipal: String;
    FRamoAtividade: String;
    FObjetivoSocial: String;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): IEmpresaCnae<T>;

    function Id(Value: String): IEmpresaCnae<T>; overload;
    function Id: String; overload;
    function Principal(Value: String): IEmpresaCnae<T>; overload;
    function Principal: String; overload;
    function RamoAtividade(Value: String): IEmpresaCnae<T>; overload;
    function RamoAtividade: String; overload;
    function ObjetivoSocial(Value: String): IEmpresaCnae<T>; overload;
    function ObjetivoSocial: String; overload;
    function Build: T;
  end;

implementation

{ TEmpresaCnae<T> }

function TEmpresaCnae<T>.Build: T;
begin
  Result := FParent;
end;

constructor TEmpresaCnae<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

function TEmpresaCnae<T>.Id: String;
begin
  Result := FId;
end;

function TEmpresaCnae<T>.Id(Value: String): IEmpresaCnae<T>;
begin
  REsult := SElf;
  FId := Value;
end;

class function TEmpresaCnae<T>.New(Parent: T): IEmpresaCnae<T>;
begin
  REsult := SElf.Create(Parent);
end;

function TEmpresaCnae<T>.ObjetivoSocial(Value: String): IEmpresaCnae<T>;
begin
  REsult := SElf;
  FObjetivoSocial := Value;
end;

function TEmpresaCnae<T>.ObjetivoSocial: String;
begin
  REsult := FObjetivoSocial;
end;

function TEmpresaCnae<T>.Principal: String;
begin
  REsult := FPrincipal;
end;

function TEmpresaCnae<T>.Principal(Value: String): IEmpresaCnae<T>;
begin
  REsult := SElf;
  FPrincipal := Value;
end;

function TEmpresaCnae<T>.RamoAtividade: String;
begin
  REsult := FRamoAtividade;
end;

function TEmpresaCnae<T>.RamoAtividade(Value: String): IEmpresaCnae<T>;
begin
  REsult := SElf;
  FRamoAtividade := Value;
end;

end.

