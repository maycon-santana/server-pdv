unit entity.ibpt;

interface

uses
  contracts.entity.ibpt;

type
  TIbpt<T: IInterface> = class(TInterfacedObject, IIbpt<T>)
  private
    FParent: T;

    FId: String;
    FExtiIPI: String;
    FTipo: Integer;
    FAliqNacional: Currency;
    FAliqImportado: Currency;
    FAliqEstadual: Currency;
    FAliqMunicipal: Currency;
    FCEST: String;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): IIbpt<T>;

    function Id(Value: String): IIbpt<T>; overload;
    function Id: String; overload;
    function ExtiIPI(Value: String): IIbpt<T>; overload;
    function ExtiIPI: String; overload;
    function Tipo(Value: Integer): IIbpt<T>; overload;
    function Tipo: Integer; overload;
    function AliqNacional(Value: Currency): IIbpt<T>; overload;
    function AliqNacional: Currency; overload;
    function AliqImportado(Value: Currency): IIbpt<T>; overload;
    function AliqImportado: Currency; overload;
    function AliqEstadual(Value: Currency): IIbpt<T>; overload;
    function AliqEstadual: Currency; overload;
    function AliqMunicipal(Value: Currency): IIbpt<T>; overload;
    function AliqMunicipal: Currency; overload;
    function CEST(Value: String): IIbpt<T>; overload;
    function CEST: String; overload;
    function Build: T;
  end;

implementation

{ TIbpt<T> }

function TIbpt<T>.AliqEstadual(Value: Currency): IIbpt<T>;
begin
  REsult := SElf;
  FAliqEstadual := Value;
end;

function TIbpt<T>.AliqEstadual: Currency;
begin
  REsult := FAliqEstadual;
end;

function TIbpt<T>.AliqImportado: Currency;
begin
  REsult := FAliqImportado;
end;

function TIbpt<T>.AliqImportado(Value: Currency): IIbpt<T>;
begin
  REsult := SElf;
  FAliqImportado := Value;
end;

function TIbpt<T>.AliqMunicipal(Value: Currency): IIbpt<T>;
begin
  REsult := SElf;
  FAliqMunicipal := Value;
end;

function TIbpt<T>.AliqMunicipal: Currency;
begin
  REsult := FAliqMunicipal;
end;

function TIbpt<T>.AliqNacional: Currency;
begin
  REsult := FAliqNacional;
end;

function TIbpt<T>.AliqNacional(Value: Currency): IIbpt<T>;
begin
  REsult := SElf;
  FAliqNacional := Value;
end;

function TIbpt<T>.Build: T;
begin
  REsult := FParent;
end;

function TIbpt<T>.CEST(Value: String): IIbpt<T>;
begin
  REsult := SElf;
  FCEST := Value;
end;

function TIbpt<T>.CEST: String;
begin
  REsult := FCEST;
end;

constructor TIbpt<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

function TIbpt<T>.ExtiIPI(Value: String): IIbpt<T>;
begin
  REsult := SElf;
  FExtiIPI := Value;
end;

function TIbpt<T>.ExtiIPI: String;
begin
  REsult := FExtiIPI;
end;

function TIbpt<T>.Id: String;
begin
  REsult := FId;
end;

function TIbpt<T>.Id(Value: String): IIbpt<T>;
begin
  REsult := SElf;
  FId := Value;
end;

class function TIbpt<T>.New(Parent: T): IIbpt<T>;
begin
  Result := SElf.Create(Parent);
end;

function TIbpt<T>.Tipo(Value: Integer): IIbpt<T>;
begin
  REsult := SElf;
  FTipo := Value;
end;

function TIbpt<T>.Tipo: Integer;
begin
  REsult := FTipo;
end;

end.

