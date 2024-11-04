program server;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Horse,
  Horse.jhonson,
  Horse.OctetStream,
  System.SysUtils,
  entity.endereco in 'src\entities\entity.endereco.pas',
  contracts.connections.interfaces in 'src\contracts\contracts.connections.interfaces.pas',
  contracts.entity.auditoria in 'src\contracts\contracts.entity.auditoria.pas',
  contracts.entity.autenticacoes in 'src\contracts\contracts.entity.autenticacoes.pas',
  contracts.entity.empresa in 'src\contracts\contracts.entity.empresa.pas',
  contracts.entity.caixa in 'src\contracts\contracts.entity.caixa.pas',
  contracts.entity.caixaomovimento in 'src\contracts\contracts.entity.caixaomovimento.pas',
  contracts.entity.usuarios in 'src\contracts\contracts.entity.usuarios.pas',
  contracts.entity.turno in 'src\contracts\contracts.entity.turno.pas',
  contracts.entity.cest in 'src\contracts\contracts.entity.cest.pas',
  contracts.entity.cfop in 'src\contracts\contracts.entity.cfop.pas',
  contracts.entity.uf in 'src\contracts\contracts.entity.uf.pas',
  contracts.entity.cidade in 'src\contracts\contracts.entity.cidade.pas',
  contracts.entity.endereco in 'src\contracts\contracts.entity.endereco.pas',
  contracts.entity.clientes in 'src\contracts\contracts.entity.clientes.pas',
  contracts.entity.cst in 'src\contracts\contracts.entity.cst.pas',
  contracts.entity.cstcofins in 'src\contracts\contracts.entity.cstcofins.pas',
  contracts.entity.cstipi in 'src\contracts\contracts.entity.cstipi.pas',
  contracts.entity.cstpis in 'src\contracts\contracts.entity.cstpis.pas',
  contracts.entity.emissoresfiscais in 'src\contracts\contracts.entity.emissoresfiscais.pas',
  contracts.entity.empresacnae in 'src\contracts\contracts.entity.empresacnae.pas',
  contracts.entity.factory in 'src\contracts\contracts.entity.factory.pas',
  contracts.entity.marcas in 'src\contracts\contracts.entity.marcas.pas',
  contracts.entity.ibpt in 'src\contracts\contracts.entity.ibpt.pas',
  contracts.entity.notasfiscais in 'src\contracts\contracts.entity.notasfiscais.pas',
  contracts.entity.notasfiscaisitens in 'src\contracts\contracts.entity.notasfiscaisitens.pas',
  contracts.entity.origem in 'src\contracts\contracts.entity.origem.pas',
  contracts.entity.produtos in 'src\contracts\contracts.entity.produtos.pas',
  contracts.entity.unidades in 'src\contracts\contracts.entity.unidades.pas',
  contracts.entity.vendaitens in 'src\contracts\contracts.entity.vendaitens.pas',
  contracts.entity.vendas in 'src\contracts\contracts.entity.vendas.pas',
  contracts.models.factory in 'src\contracts\contracts.models.factory.pas',
  models.endereco in 'src\models\models.endereco.pas',
  models.cnae in 'src\models\models.cnae.pas',
  models.empresa in 'src\models\models.empresa.pas',
  models.emissoresfiscais in 'src\models\models.emissoresfiscais.pas',
  contracts.repository.base in 'src\contracts\contracts.repository.base.pas',
  contracts.router.horse in 'src\contracts\contracts.router.horse.pas',
  server.entity.base in 'src\contracts\server.entity.base.pas',
  models.autenticacoes in 'src\models\models.autenticacoes.pas',
  models.factory in 'src\models\models.factory.pas',
  entity.autenticacoes in 'src\entities\entity.autenticacoes.pas',
  entity.caixa in 'src\entities\entity.caixa.pas',
  entity.caixamovimento in 'src\entities\entity.caixamovimento.pas',
  entity.cest in 'src\entities\entity.cest.pas',
  entity.cfop in 'src\entities\entity.cfop.pas',
  entity.cidade in 'src\entities\entity.cidade.pas',
  entity.uf in 'src\entities\entity.uf.pas',
  entity.clientes in 'src\entities\entity.clientes.pas',
  entity.cst in 'src\entities\entity.cst.pas',
  entity.cstcofins in 'src\entities\entity.cstcofins.pas',
  entity.cstipi in 'src\entities\entity.cstipi.pas',
  entity.cstpis in 'src\entities\entity.cstpis.pas',
  entity.emissoresfiscais in 'src\entities\entity.emissoresfiscais.pas',
  entity.empresa in 'src\entities\entity.empresa.pas',
  entity.empresacnae in 'src\entities\entity.empresacnae.pas',
  entity.ibpt in 'src\entities\entity.ibpt.pas',
  entity.factory in 'src\entities\entity.factory.pas',
  entity.marcas in 'src\entities\entity.marcas.pas',
  entity.notasfiscais in 'src\entities\entity.notasfiscais.pas',
  entity.notasfiscaisitens in 'src\entities\entity.notasfiscaisitens.pas',
  entity.origem in 'src\entities\entity.origem.pas',
  entity.produtos in 'src\entities\entity.produtos.pas',
  entity.turno in 'src\entities\entity.turno.pas',
  entity.unidades in 'src\entities\entity.unidades.pas',
  entity.usuarios in 'src\entities\entity.usuarios.pas',
  entity.vendaitens in 'src\entities\entity.vendaitens.pas',
  entity.vendas in 'src\entities\entity.vendas.pas',
  entity.auditoria in 'src\entities\entity.auditoria.pas',
  error.httperro in 'src\error\error.httperro.pas',
  helpers.serializacao in 'src\helpers\helpers.serializacao.pas',
  helpers.utils in 'src\helpers\helpers.utils.pas',
  repository.autenticacoes in 'src\repository\repository.autenticacoes.pas',
  repository.empresa in 'src\repository\repository.empresa.pas',
  router.horse.empresa in 'src\routers\router.horse.empresa.pas',
  connections.firedac in 'src\connections\connections.firedac.pas';

begin
  {$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}

  THorse
    .Use(Jhonson)
    .Use(OctetStream);

  THorse.Listen(9000);
end.
