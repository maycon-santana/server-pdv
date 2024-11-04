unit repository.empresa;

interface

uses
  System.SysUtils,
  System.Classes,
  System.Generics.Collections,
  Data.DB,
  contracts.repository.base,
  contracts.entity.empresa,
  contracts.connections.interfaces;

type
  TRepositoryEmpresa = class(TInterfacedObject, IRepository<IEmpresa>)
  private
    FEmpresa: IEmpresa;
    FConn: IDataBaseConnection;

    constructor Create(Empresa: IEmpresa);
    destructor Destroy; override;

  protected
    const
      SQL_UPDATE = 'UPDATE %s SET %s WHERE %s';
      SQL_INSERT = 'INSERT INTO %s (%s) VALUES (%s)';
      SQL_SELECT = 'SELECT * FROM %s';
      SQL_SELECT_WHERE = 'SELECT * FROM %s WHERE %s';

      COLUMNPARMS =  'nome=:nome,cnpj=:cnpj,telefone=:telefone,email=:emal,'+
                     'inscricaoestadual=:inscricaoestadual,'+
                     'inscricaoestadualst=:inscricaoestadualst,'+
                     'inscricaomunicipal=:inscricaomunicipal,'+
                     'crt=:crt,logotipo=:logotipo,regime=:regime';

      TABELA = 'api.empresa';

    function EntityToUpdateParam(const Value: IEmpresa): TParams;
    function EntityToStoreParam(const Value: IEmpresa): TParams;
    function DataSetToEntity(const Value: TDataSet): IEmpresa;
    function FindId(const aId: String): TDataSet;
    procedure PopuleEndereco(const Value: TDataSet; var Empresa: IEmpresa);
    procedure PopuleEmissorFiscal(const Value: TDataSet; var Empresa: IEmpresa);
    procedure PopulaCNae(const Value: TDataSet; var Empresa: IEmpresa);
  public
    class function New(Empresa: IEmpresa): IRepository<IEmpresa>;

    function Listar: TArray<IEmpresa>;
    function ListarPorId: IEmpresa;
    procedure Excluir;
    function Atualizar: IEmpresa;
    function Inserir: IEmpresa;
  end;

implementation

uses
  System.DateUtils,
  connections.firedac,
  entity.empresa,
  repository.autenticacoes,
  entity.autenticacoes;

function TRepositoryEmpresa.Atualizar: IEmpresa;
begin
  var LParams := EntityToUpdateParam(FEmpresa);
  FConn.Query(Format(SQL_UPDATE,[TABELA,COLUMNPARMS,'ID=:ID']), [LParams]);
end;

constructor TRepositoryEmpresa.Create(Empresa: IEmpresa);
begin
  FEmpresa := Empresa;
  FConn := TDataBaseConnection.New;
end;

function TRepositoryEmpresa.DataSetToEntity(const Value: TDataSet): IEmpresa;
begin
  Result := nil;
  if not Value.IsEmpty then
  begin
    Result := TEmpresa.New;
    Result
      .Id(Value.FieldByName('ID').AsString)
      .Nome(Value.FieldByName('NOME').AsString)
      .CNPJ(Value.FieldByName('CNPJ').AsString)
      .Telefone(Value.FieldByName('TELEFONE').AsString)
      .Email(Value.FieldByName('EMAIL').AsString)
      .InscricaoEstadual(Value.FieldByName('INSCRICAOESTADUAL').AsString)
      .InscricaoEstadualST(Value.FieldByName('INSCRICAOESTADUALST').AsString)
      .InscricaoMunicipal(Value.FieldByName('INSCRICAOMUNICIPAL').AsString)
      .CRT(Value.FieldByName('CRT').AsInteger)
      .Logotipo(Value.FieldByName('LOGOTIPO').AsString)
      .Regime(Value.FieldByName('REGIME').AsInteger);

      PopuleEndereco(Value, Result);
      PopuleEmissorFiscal(Value, Result);
  end;
end;

destructor TRepositoryEmpresa.Destroy;
begin

  inherited;
end;

function TRepositoryEmpresa.EntityToStoreParam(const Value: IEmpresa): TParams;
begin
  Result := TParams.Create(nil);
  Result.CreateParam(ftString, 'id', ptInput).AsString := Value.Id;
  Result.CreateParam(ftString, 'nome', ptInput).AsString := Value.Nome;
  Result.CreateParam(ftString, 'cnpj', ptInput).AsString := Value.CNPJ;
  Result.CreateParam(ftString, 'telefone', ptInput).AsString := Value.Telefone;
  Result.CreateParam(ftString, 'inscricaoestadual', ptInput).AsString := Value.InscricaoEstadual;
  Result.CreateParam(ftString, 'inscricaoestadualst', ptInput).AsString := Value.InscricaoEstadualST;
  Result.CreateParam(ftString, 'inscricaomunicipal', ptInput).AsString := Value.InscricaoMunicipal;
  Result.CreateParam(ftInteger, 'crt', ptInput).AsInteger := Value.CRT;
  Result.CreateParam(ftString, 'logotipo', ptInput).AsString := Value.Logotipo;
  Result.CreateParam(ftInteger, 'regime', ptInput).AsInteger := Value.Regime;
end;

function TRepositoryEmpresa.EntityToUpdateParam(const Value: IEmpresa): TParams;
begin
  Result := TParams.Create(nil);
  Result.CreateParam(ftString, 'id', ptInput).AsString := Value.Id;
  Result.CreateParam(ftString, 'nome', ptInput).AsString := Value.Nome;
  Result.CreateParam(ftString, 'cnpj', ptInput).AsString := Value.CNPJ;
  Result.CreateParam(ftString, 'telefone', ptInput).AsString := Value.Telefone;
  Result.CreateParam(ftString, 'inscricaoestadual', ptInput).AsString := Value.InscricaoEstadual;
  Result.CreateParam(ftString, 'inscricaoestadualst', ptInput).AsString := Value.InscricaoEstadualST;
  Result.CreateParam(ftString, 'inscricaomunicipal', ptInput).AsString := Value.InscricaoMunicipal;
  Result.CreateParam(ftInteger, 'crt', ptInput).AsInteger := Value.CRT;
  Result.CreateParam(ftString, 'logotipo', ptInput).AsString := Value.Logotipo;
  Result.CreateParam(ftInteger, 'regime', ptInput).AsInteger := Value.Regime;
end;

procedure TRepositoryEmpresa.Excluir;
begin
  var LParams := TParams.Create(nil);
  try
    LParams.CreateParam(ftString, 'id', ptInput).AsString := FEmpresa.Id;
    FConn.Query('delete from empresas where id = :id',[LParams]);
  finally
    LParams.Free;
  end;
end;

function TRepositoryEmpresa.FindId(const aId: String): TDataSet;
begin
//
end;

function TRepositoryEmpresa.Inserir:IEmpresa;
begin
  var LSQL := 'INSERT INTO api.empresas '+
  '(nome, cnpj, telefone, email, inscricaoestadual, inscricaoestadualst, '+
  'inscricaomunicipal, crt, logotipo, regime) VALUES '+
  '(:nome, :cnpj, :telefone, :email, :inscricaoestadual, :inscricaoestadualst, '+
  ':inscricaomunicipal, :crt, :logotipo, :regime)';
  var LParams := EntityToStoreParam(FEmpresa);
  FConn.StartTransaction;
  try
    var LEntity := DataSetToEntity(FConn.Query(LSQL, [LParams]));
    FConn.Commit;

    var LId := Random(1000000000);
    var LClientID := DayOf(now).ToString+MonthOf(now).ToString+LId.ToString;
    TRepositoryAutenticacoes
      .New(TAutenticacoes
            .New
            .Empresa(LEntity)
            .ClientId(LClientID))
      .Inserir;
  except on E:Exception do
    begin
      FConn.Rollback;
      raise Exception.Create(E.Message);
    end;
  end;
end;

function TRepositoryEmpresa.Listar: TArray<IEmpresa>;
begin
  var LRecord := FConn.Query(Format(SQL_SELECT, [TABELA]), []);
  try
    if LRecord.IsEmpty then
      Exit;

    SetLength(Result, LRecord.RecordCount);
    while not LRecord.Eof do
    begin
      try
        Result[Pred(LRecord.RecNo)] := DataSetToEntity(LRecord);
      finally
        LRecord.Next;
      end;
    end;
  finally
    LRecord.Free;
  end;
end;

function TRepositoryEmpresa.ListarPorId: IEmpresa;
begin
  var LParam := TParams.Create(nil);
  try
    LParam.CreateParam(ftString, 'id', ptInput).AsString := FEmpresa.Id;
    var LRecord := FConn.Query(Format(SQL_SELECT_WHERE,[TABELA,'id=:id']), [LParam]);
    try
      Result := DataSetToEntity(LRecord);
    finally
      LRecord.Free;
    end;
  finally
    LParam.Free;
  end;
end;

class function TRepositoryEmpresa.New(Empresa: IEmpresa): IRepository<IEmpresa>;
begin
  Result := Self.Create(Empresa);
end;

procedure TRepositoryEmpresa.PopulaCNae(const Value: TDataSet;
  var Empresa: IEmpresa);
begin
  var LParam := TParams.Create(nil);
  LParam.CreateParam(ftString,'empresa',ptInput).AsString :=
    Value.FieldByName('ID').AsString;
  var LRecord := FConn.Query(format(SQL_SELECT_WHERE,
    ['EMPRESA_CNAE','EMPRESA=:EMPRESA']),[LParam]);
  try
    if not LRecord.IsEmpty then
    begin
      while not LRecord.Eof do
      begin
        try
          Empresa
            .EmpresaCnae(
              Empresa
                .EmpresaCnae
                  .Id(LRecord.FieldByName('ID').AsString)
                  .Principal(LRecord.FieldByName('PRINCIPAL').AsString)
                  .RamoAtividade(LRecord.FieldByName('RAMO_ATIVIDADE').AsString)
                  .ObjetivoSocial(LRecord.FieldByName('OBJETIVO_SOCIAL').AsString));
        finally
          LRecord.Free;
        end;
      end;
    end;
  finally
    LParam.Free;
  end;
end;

procedure TRepositoryEmpresa.PopuleEmissorFiscal(
  const Value: TDataSet; var Empresa: IEmpresa);
begin
  var LParam := TParams.Create(nil);
  LParam.CreateParam(ftString,'empresa',ptInput).AsString :=
    Value.FieldByName('ID').AsString;
  var LRecord := FConn.Query(format(SQL_SELECT_WHERE,
    ['EMISSORES_FISCAIS','EMPRESA=:EMPRESA']),[LParam]);
  try
    if not LRecord.IsEmpty then
    begin
      Empresa
        .EmissoresFiscais
          .Id(LRecord.FieldByName('ID').AsString)
          .TipoDocumento(LRecord.FieldByName('TIPO_DOCUMENTO_FISCAL').AsString)
          .Ambiente(LRecord.FieldByName('AMBIENTE_EMISSAO').AsString)
          .Serie(LRecord.FieldByName('SERIE_EMISSAO').AsString)
          .Numero(LRecord.FieldByName('NUMERO_NOTA_FISCAL').AsString)
          .TipoEmissao(LRecord.FieldByName('TIPO_EMISSAO').AsString)
          .TipoSped(LRecord.FieldByName('TIPO_SPED').AsString)
          .CertificadoDigital(TStringStream.Create(LRecord.FieldByName('CERTIFICADO_DIGITAL').AsString))
          .Serie(LRecord.FieldByName('SENHA_CERTIFICADO').AsString)
          .Build;
    end;
  finally
    LParam.Free;
    LRecord.Free;
  end;
end;

procedure TRepositoryEmpresa.PopuleEndereco(const Value: TDataSet; var Empresa: IEmpresa);
begin
  var LParam := TParams.Create(nil);
  LParam.CreateParam(ftString,'empresa',ptInput).AsString :=
    Value.FieldByName('ID').AsString;
  var LRecord := FConn.Query(format(SQL_SELECT_WHERE,
    ['ENDERECOS','EMPRESA=:EMPRESA']),[LParam]);
  try
    if not LRecord.IsEmpty then
    begin
      Empresa
        .Endereco
          .Id(LRecord.FieldByName('ID').AsString)
          .Logradouro(LRecord.FieldByName('LOGRADOURO').AsString)
          .Numero(LRecord.FieldByName('NUMERO').AsString)
          .Complemento(LRecord.FieldByName('COMPLEMENTO').AsString)
          .Bairro(LRecord.FieldByName('BAIRRO').AsString)
          .Cidade(LRecord.FieldByName('CIDADE').AsString)
          .Estado(LRecord.FieldByName('ESTADO').AsString)
          .Cep(LRecord.FieldByName('CEP').AsString)
          .CreatedAt(LRecord.FieldByName('CREATED_AT').AsDateTime)
          .UpdatedAt(LRecord.FieldByName('UPDATE_AT').AsDateTime)
          .Build;
    end;
  finally
    LParam.Free;
    LRecord.Free;
  end;
end;

end.

