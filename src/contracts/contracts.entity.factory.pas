unit contracts.entity.factory;

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
  contracts.entity.autenticacoes;

type
  IFactoryEntities = interface
    ['{829CCC06-26A0-48F7-97EE-9B6DCCC1C43A}']
    function Caixa: ICaixa;
    function CaixaMovimento: ICaixaMovimento;
    function Empresa: IEmpresa;
    function Marcas: IMarcas;
    function NotasFiscais: INotasFiscais;
    function Vendas: IVendas;
    function Unidades: IUnidades;
    function Produtos: IProdutos;
    function Turno: ITurno;
    function Usuarios: IUsuarios;
    function Clientes: IClientes;
    function Autenticacoes: IAutenticacoes;
  end;

implementation

end.
