unit entity.factory;

interface

uses
  contracts.entity.caixa,
  contracts.entity.caixaomovimento,
  contracts.entity.empresa,
  contracts.entity.marcas,
  contracts.entity.notasfiscais,
  contracts.entity.vendas,
  contracts.entity.unidades,
  contracts.entity.produtos,
  contracts.entity.turno,
  contracts.entity.usuarios,
  contracts.entity.clientes,
  contracts.entity.autenticacoes,
  contracts.entity.factory;

type
  TFactoryEntities = class(TInterfacedObject, IFactoryEntities)
  private
    FCaixa: ICaixa;
    FCaixaMovimento: ICaixaMovimento;
    FEmpresa: IEmpresa;
    FMarcas: IMarcas;
    FNotasfiscais: INotasFiscais;
    FVendas: IVendas;
    FUnidades: IUNidades;
    FProdutos: IProdutos;
    FTurno: ITurno;
    FUsuarios: IUsuarios;
    FClientes: IClientes;
    FAutenticacoes: IAutenticacoes;
  public
    class function New: IFactoryEntities;

    function Caixa: ICaixa;
    function CaixaMovimento: ICaixaMovimento;
    function Empresa: IEmpresa;
    function Marcas: IMarcas;
    function Notasfiscais: INotasFiscais;
    function Vendas: IVendas;
    function Unidades: IUNidades;
    function Produtos: IProdutos;
    function Turno: ITurno;
    function Usuarios: IUsuarios;
    function Clientes: IClientes;
    function Autenticacoes: IAutenticacoes;
  end;

implementation

uses
  entity.autenticacoes,
  entity.caixa,
  entity.caixamovimento,
  entity.clientes,
  entity.empresa,
  entity.marcas,
  entity.notasfiscais,
  entity.produtos,
  entity.turno,
  entity.unidades,
  entity.usuarios,
  entity.vendas;

function TFactoryEntities.Autenticacoes: IAutenticacoes;
begin
  if not Assigned(FAutenticacoes) then
    FAutenticacoes := TAutenticacoes.New;
  Result := FAutenticacoes;
end;

function TFactoryEntities.Caixa: ICaixa;
begin
  if not Assigned(FCaixa) then
    FCaixa := TCaixa.New;
  Result := FCaixa;
end;

function TFactoryEntities.CaixaMovimento: ICaixaMovimento;
begin
  if not Assigned(FCaixaMovimento) then
    FCaixaMovimento := TCaixaMovimento.New;
  Result := FCaixaMovimento;
end;

function TFactoryEntities.Clientes: IClientes;
begin
  if not Assigned(FClientes) then
    FClientes := TClientes.New;
  Result := FClientes;
end;

function TFactoryEntities.Empresa: IEmpresa;
begin
  if not Assigned(FEmpresa) then
    FEmpresa := TEmpresa.New;
  Result := FEmpresa;
end;

function TFactoryEntities.Marcas: IMarcas;
begin
  if not Assigned(FMarcas) then
    FMarcas := TMarcas.New;
  Result := FMarcas;
end;

class function TFactoryEntities.New: IFactoryEntities;
begin
  REsult := SElf.Create;
end;

function TFactoryEntities.Notasfiscais: INotasFiscais;
begin
  if not Assigned(FNotasfiscais) then
    FNotasfiscais := TNotasfiscais.New;
  Result := FNotasfiscais;
end;

function TFactoryEntities.Produtos: IProdutos;
begin
 if not Assigned(FProdutos) then
    FProdutos := TProdutos.New;
  Result := FProdutos;
end;

function TFactoryEntities.Turno: ITurno;
begin
  if not Assigned(FTurno) then
    FTurno := TTurno.New;
  Result := FTurno;
end;

function TFactoryEntities.Unidades: IUNidades;
begin
  if not Assigned(FUnidades) then
    FUnidades := TUnidades.New;
  Result := FUnidades;
end;

function TFactoryEntities.Usuarios: IUsuarios;
begin
  if not Assigned(FUsuarios) then
    FUsuarios := TUsuarios.New;
  Result := FUsuarios;
end;

function TFactoryEntities.Vendas: IVendas;
begin
  if not Assigned(FVendas) then
    FVendas := TVendas.New;
  Result := FVendas;
end;

end.

