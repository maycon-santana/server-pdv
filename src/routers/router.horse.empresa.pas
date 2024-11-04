unit router.horse.empresa;

interface

uses
  Horse,
  System.JSON,
  System.SysUtils,
  contracts.router.horse,
  contracts.models.factory;

type
  TEmpresaHorseRouter = class(TInterfacedObject, IRouters)
  private
    FFactory: IModelsFactory;

    constructor Create;
  protected
    procedure GetEmpresa(Req: THorseRequest; Res: THorseResponse);
    procedure GetAllEmpresa(Req: THorseRequest; Res: THorseResponse);
    procedure PostEmpresa(Req: THorseRequest; Res: THorseResponse);
    procedure PutEmpresa(Req: THorseRequest; Res: THorseResponse);
    procedure DeleteEmpresa(Req: THorseRequest; Res: THorseResponse);
  public
    class function New: IRouters;

    procedure RegisterRouter;
  end;

implementation

uses
  repository.empresa,
  entity.empresa,
  models.factory,
  models.empresa,
  helpers.serializacao,
  helpers.utils,
  error.httperro,
  repository.autenticacoes,
  entity.autenticacoes,
  models.autenticacoes;

constructor TEmpresaHorseRouter.Create;
begin
  FFactory := TModelsFactory.New;
end;

procedure TEmpresaHorseRouter.DeleteEmpresa(Req: THorseRequest;
  Res: THorseResponse);
begin
  var LId := Req.Params['id'];
  var LEmpresa := TEmpresa.NEw.Id(LId);
  TRepositoryEmpresa.New(LEmpresa).Excluir;
  Res.Status(THTTPStatus.NoContent);
end;

procedure TEmpresaHorseRouter.GetAllEmpresa(Req: THorseRequest;
  Res: THorseResponse);
begin
  var LLista := TRepositoryEmpresa.New(TEmpresa.New).Listar;
  var LJSONArray := TJSONArray.Create;
  try
    for var I := Low(LLista) to High(LLista) do
      LJSONArray.Add(TSerializacao<TEmpresaModels>.New(
        TUtils.EntitieEmpresaToModelEmpresa(LLista[I])).ToJSON)
  finally
    Res.Send<TJSONArray>(LJSONArray);
  end;
end;

procedure TEmpresaHorseRouter.GetEmpresa(Req: THorseRequest;
  Res: THorseResponse);
begin
  var LRecord := TEmpresa.New.Id(Req.Params['id']);
  var LEmpresa := TRepositoryEmpresa.New(LRecord).ListarPorId;
  Res.Send<TJSONObject>(TSerializacao<TEmpresaModels>.New(
    TUtils.EntitieEmpresaToModelEmpresa(LEmpresa)).ToJSON);
end;

class function TEmpresaHorseRouter.New: IRouters;
begin
  Result := Self.Create;
end;

procedure TEmpresaHorseRouter.PostEmpresa(Req: THorseRequest;
  Res: THorseResponse);
begin
  var LModelEmpresa := TSerializacao<TEmpresaModels>.New(TEmpresaModels.Create)
      .ToObject(Req.Body);
  try
    var LEmpresa := TRepositoryEmpresa.New(TUtils.ModelEmpresaToEntitieEmpresa(LModelEmpresa)).Inserir;

    LModelEmpresa := TUtils.EntitieEmpresaToModelEmpresa(LEmpresa);

    var LAutenticacoes := TRepositoryAutenticacoes.New(TAutenticacoes.New).Listar;

    for var I := Low(LAutenticacoes) to High(LAutenticacoes) do
    begin
      if LAutenticacoes[I].Empresa.Id.Equals(LModelEmpresa.Id) then
      begin
        LModelEmpresa.Autenticacoes := TUtils.EntitieAutenticacoesToModelAutenticacoes(LAutenticacoes[I]);
        Break;
      end;
    end;
    Res.Send<TJSONObject>(TSerializacao<TEmpresaModels>.New(LModelEmpresa).ToJSON);
  except on E:Exception do
    begin
      var LErro := THttpError.Create;
      LErro.Erro := '400';
      LErro.Descricao := 'Problema ao persistir os dados';
      LErro.Mensagem := E.Message;
      Res.Send<TJSONObject>(TSerializacao<THttpError>.New(LErro).ToJSON)
        .Status(THTTPStatus.BadRequest);
    end;
  end;
end;

procedure TEmpresaHorseRouter.PutEmpresa(Req: THorseRequest;
  Res: THorseResponse);
begin
  var LEmpresa := TUtils.ModelEmpresaToEntitieEmpresa(
    TSerializacao<TEmpresaModels>.New(TEmpresaModels.Create)
    .ToObject(Req.Body));
  var LRetorno := TRepositoryEmpresa.New(LEmpresa).Atualizar;
  Res.Send<TJSONObject>(TSerializacao<TEmpresaModels>.New(
  TUtils.EntitieEmpresaToModelEmpresa(LRetorno)).ToJSON);
end;

procedure TEmpresaHorseRouter.RegisterRouter;
begin
  THorse
    .AddCallback(TUtils.Autorizacao(TEmpresa.New)).Get('api/empresas/:id', GetEmpresa)
    .Get('api/empresas', GetAllEmpresa)
    .Post('api/empresas', PostEmpresa)
    .Put('api/empresas/:id', PutEmpresa)
    .Delete('api/empresas/:id', DeleteEmpresa);
end;

end.

