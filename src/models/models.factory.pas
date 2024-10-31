unit models.factory;

interface

uses
  models.empresa,
  models.endereco,
  models.cnae,
  models.emissoresfiscais,
  contracts.models.factory;

type
  TModelsFactory = class(TInterfacedObject, IModelsFactory)
  private
    FEmpresa: TEmpresaModels;
    FEndereco: TEnderecoModel;
    FCNAE: TCNAEModel;
    FEmissor: TEmissoresFiscaisModel;
  public
    class function New: IModelsFactory;

    function Empresa: TEmpresaMOdels;
    function Endereco: TEnderecoModel;
    function CNAE: TCNAEModel;
    function EmissoresFiscais: TEmissoresFiscaisModel;
  end;

implementation

{ TModelsFactory }

function TModelsFactory.CNAE: TCNAEModel;
begin
  if not Assigned(FCNAE) then
    FCNAE := TCNAEModel.Create;
  REsult := FCNAE;
end;

function TModelsFactory.EmissoresFiscais: TEmissoresFiscaisModel;
begin
  if not Assigned(FEmissor) then
    FEmissor := TEmissoresFiscaisModel.Create;
  Result := FEmissor;
end;

function TModelsFactory.Empresa: TEmpresaMOdels;
begin
  if not Assigned(FEmpresa) then
    FEmpresa := TEmpresaModels.Create;
  REsult := FEmpresa;
end;

function TModelsFactory.Endereco: TEnderecoModel;
begin
  if not Assigned(FEndereco) then
    FEndereco := TEnderecoModel.Create;
  Result := FEndereco;
end;

class function TModelsFactory.New: IModelsFactory;
begin
  Result := Self.Create;
end;

end.
