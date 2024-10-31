unit contracts.models.factory;

interface

uses
  models.endereco,
  models.cnae,
  models.empresa,
  models.emissoresfiscais;

type
  IModelsFactory = interface
    ['{06C3413A-A17D-4204-9D49-8B6A06831D11}']
    function Empresa: TEmpresaModels;
    function Endereco: TEnderecoModel;
    function CNAE: TCNAEModel;
    function EmissoresFiscais: TEmissoresFiscaisModel;
  end;

implementation

end.
