program server;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Horse,
  Horse.jhonson,
  Horse.OctetStream,
  System.SysUtils,
  server.connections.interfaces in 'src\connections\server.connections.interfaces.pas',
  server.connections.impl.firedac in 'src\connections\impl\server.connections.impl.firedac.pas',
  server.entity.empresa in 'src\entities\server.entity.empresa.pas',
  server.entity.endereco in 'src\entities\server.entity.endereco.pas',
  server.entity.emissorfiscal in 'src\entities\server.entity.emissorfiscal.pas',
  service.repository.interfaces in 'src\repository\service.repository.interfaces.pas',
  service.repository.impl.empresa in 'src\repository\impl\service.repository.impl.empresa.pas',
  server.entity.auditoria in 'src\entities\server.entity.auditoria.pas',
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
  server.entity.base in 'src\contracts\server.entity.base.pas';

begin
  {$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}

  THorse
    .Use(Jhonson)
    .Use(OctetStream);

  THorse.Listen(9000);
end.
