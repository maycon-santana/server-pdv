unit repository.autenticacoes;

interface

uses
  contracts.repository.base,
  System.Generics.Collections,
  contracts.connections.interfaces,
  contracts.entity.empresa,
  contracts.entity.autenticacoes,
  Data.DB;

type
  TRepositoryAutenticacoes = class(TInterfacedObject, IRepository<IAutenticacoes>)
  private
    FAutenticacoes: IAutenticacoes;
    FEmpresa: IEmpresa;
    FConn: IDataBaseConnection;

    constructor Create(Parent: IAutenticacoes);
  protected
    function EntityToUpdateParam(const Value: IAutenticacoes): TParams;
    function EntityToStoreParam(const Value: IAutenticacoes): TParams;
    function DataSetToEntity(const Value: TDataSet): IAutenticacoes;
    function FindId(const aId: String): TDataSet;
    function GerarToken: String;
  public
    class function New(Parent: IAutenticacoes): IRepository<IAutenticacoes>;

    function Listar: TArray<IAutenticacoes>;
    function ListarPorId: IAutenticacoes;
    procedure Excluir;
    function Atualizar: IAutenticacoes;
    function Inserir: IAutenticacoes;
  end;

implementation

uses
  System.SysUtils,
  connections.firedac,
  entity.autenticacoes,
  entity.empresa,
  BCrypt,
  JOSE.Core.JWT,
  JOSE.Core.Builder,
  System.JSON,
  System.DateUtils;

function TRepositoryAutenticacoes.Atualizar: IAutenticacoes;
begin
  var LSQL := 'UPDATE api.autenticacoes SET'+
              ' token_acesso=:token_acesso,'+
              ' data_expiracao=:data_expiracao'+
              ' WHERE id=:id';
  var LParams := EntityToUpdateParam(FAutenticacoes);
  FConn.StartTransaction;
  try
    FConn.Query(LSQL,[LParams]);
    FConn.Commit;
  except on E:Exception do
    begin
      FConn.Rollback;
      raise Exception.Create(E.Message);
    end;
  end;
end;

constructor TRepositoryAutenticacoes.Create(Parent: IAutenticacoes);
begin
  FAutenticacoes := Parent;
  FConn := TDataBaseConnection.New;
end;

function TRepositoryAutenticacoes.DataSetToEntity(const Value: TDataSet): IAutenticacoes;
begin
  Result := TAutenticacoes.NEw;
  Result
    .Id(Value.FieldByName('id').AsString)
    .Empresa(TEmpresa.New.Id(Value.FieldByName('empresa').AsString))
    .ClientId(Value.FieldByName('client_id').AsString)
    .ClientSecret(Value.FieldByName('client_secret').AsString)
    .TokenAcesso(Value.FieldByName('token_acesso').AsString)
    .DataGeracao(Value.FieldByName('data_geracao').AsDateTime)
    .DataExpiracao(Value.FieldByName('data_expiracao').AsDateTime);
end;

function TRepositoryAutenticacoes.EntityToStoreParam(const Value: IAutenticacoes): TParams;
begin
  Result := TParams.Create(nil);
  Result.CreateParam(ftString, 'empresa', ptInput).AsString := Value.Empresa.Id;
  Result.CreateParam(ftString, 'client_id', ptInput).AsString := Value.ClientId;
  Result.CreateParam(ftString, 'client_secret', ptInput).AsString := TBCrypt.GenerateHash(Value.Empresa.Id);
  Result.CreateParam(ftString, 'token_acesso', ptInput).AsString := GerarToken;
  Result.CreateParam(ftDateTime, 'data_geracao', ptInput).AsDateTime := Now;
  Result.CreateParam(ftDateTime, 'data_expiracao', ptInput).AsDateTime := IncMonth(now,6);
end;

function TRepositoryAutenticacoes.EntityToUpdateParam(const Value: IAutenticacoes): TParams;
begin
  Result := TParams.Create(nil);
  Result.CreateParam(ftString, 'id', ptInput).AsString := Value.Id;
  Result.CreateParam(ftString, 'token_acesso', ptInput).AsString := Value.TokenAcesso;
  Result.CreateParam(ftDateTime, 'data_expiracao', ptInput).AsDateTime := Value.DataExpiracao;
end;

procedure TRepositoryAutenticacoes.Excluir;
begin
  var LSQL := 'DELETE FROM api.autenticacoes WHERE id=:id';
  var LParam := TParams.Create(nil);
  try
    LParam.CreateParam(ftString, 'id', ptInput).AsString := FAutenticacoes.Id;
    FConn.StartTransaction;
    try
      FConn.Query(LSQL, [LParam]);
      FConn.Commit;
    except on E:Exception do
      begin
        FConn.Rollback;
        raise Exception.Create(E.Message);
      end;
    end;
  finally
    LParam.Free;
  end;
end;

function TRepositoryAutenticacoes.FindId(const aId: String): TDataSet;
begin
  var LParam := TParams.Create(nil);
  try
    LParam.CreateParam(ftString, 'id', ptInput).AsString := aId;
    Result := FConn.Query('select * from api.autenticacoes where id=:id', [LParam]);
  finally
    LParam.Free;
  end;
end;

function TRepositoryAutenticacoes.GerarToken: String;
begin
  var LJWT := TJWT.Create;
  var LClaims := LJWT.Claims;
  LClaims.JSON := TJSONObject.Create;
  LClaims.IssuedAt := Now;
  LClaims.Expiration := IncMonth(now,6);
  REsult := TJOSE.SHA256CompactToken(FAutenticacoes.Empresa.Id, LJWT);
end;

function TRepositoryAutenticacoes.Inserir: IAutenticacoes;
begin
  var LSQL := 'INSERT INTO'+
              ' api.autenticacoes'+
              ' (empresa,'+
              ' client_id,'+
              ' client_secret,'+
              ' token_acesso,'+
              ' data_geracao,'+
              ' data_expiracao) VALUES'+
              '(:empresa::uuid,'+
              ' :client_id,'+
              ' :client_secret,'+
              ' :token_acesso,'+
              ' :data_geracao,'+
              ' :data_expiracao)';
  var LParams := EntityToStoreParam(FAutenticacoes);
  try
    FConn.StartTransaction;
    try
      Result :=  DataSetToEntity(FConn.Query(LSQL, [LParams]));
      FConn.Commit;
    except on E:Exception do
      begin
        FConn.Rollback;
        raise Exception.Create(E.Message);
      end;
    end;
  finally
    LParams.Free;
  end;
end;

function TRepositoryAutenticacoes.Listar: TArray<IAutenticacoes>;
begin
  var LParams := TParams.Create(nil);
  try
    LParams.CreateParam(ftString, 'empresa', ptInput).AsString := FAutenticacoes.Empresa.Id;
    var LSQL := 'SELECT id::varchar, empresa::varchar, client_id, client_secret, token_acesso, data_geracao, data_expiracao FROM api.autenticacoes';
    var LRecord := FConn.Query(LSQL, [LParams]);
    try
      if LRecord.IsEmpty then
        Exit;

      SetLength(Result, LRecord.RecordCount);
      while not LRecord.Eof do
      begin
        try
          Result[Pred(LRecord.RecNo)] := DataSetToEntity(LRecord)
        finally
          LRecord.Next;
        end;
      end;
    finally
      LRecord.Free;
    end;
  finally
    LParams.Free;
  end;
end;

function TRepositoryAutenticacoes.ListarPorId: IAutenticacoes;
begin
  var LSQL := 'SELECT id::varchar, empresa:varchar, client_id, client_secret, token_acesso, data_geracao, data_expiracao FROM api.autenticacoes WHERE id:id';
  var LParam := TParams.Create(nil);
  try
    LParam.CreateParam(ftString, 'id', ptInput).AsString := FAutenticacoes.Id;
    Result := DataSetToEntity(FConn.Query(LSQL, [LParam]));
  finally
    LParam.Free;
  end;
end;

class function TRepositoryAutenticacoes.New(
  Parent: IAutenticacoes): IRepository<IAutenticacoes>;
begin
  Result := Self.Create(PArent);
end;

end.

