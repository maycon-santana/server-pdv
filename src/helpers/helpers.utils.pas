
unit helpers.utils;

interface

uses
  Horse,
  Horse.JWT,
  models.factory,
  models.empresa,
  contracts.entity.empresa,
  entity.empresa,
  models.autenticacoes, contracts.entity.autenticacoes;

type
  TUtils = class
  private
  public
    class function EntitieEmpresaToModelEmpresa(Empresa: IEmpresa): TEmpresaModels;
    class function ModelEmpresaToEntitieEmpresa(Empresa: TEmpresaModels): IEmpresa;
    class function EntitieAutenticacoesToModelAutenticacoes(Auth: IAutenticacoes): TModelAutenticacoes;
    class function Autorizacao(Empresa: IEmpresa): THorseCallBack;
  end;

implementation

class function TUtils.Autorizacao(Empresa: IEmpresa): THorseCallBack;
begin
  Result := HorseJWT(Empresa.Id);
end;

class function TUtils.EntitieAutenticacoesToModelAutenticacoes(
  Auth: IAutenticacoes): TModelAutenticacoes;
begin
 REsult := TMOdelAutenticacoes.Create;
 Result.ClientId := Auth.ClientId;
 Result.ClienteSecret := Auth.ClientSecret;
 REsult.TokenAcesso := Auth.TokenAcesso;
 Result.DataGeracao := Auth.DataGeracao;
 REsult.DataExpiracao := Auth.DataExpiracao;
end;

class function TUtils.EntitieEmpresaToModelEmpresa(Empresa: IEmpresa): TEmpresaModels;
begin
  var LModels := TModelsFactory.New;

  Result := LModels.Empresa;
  Result.Id := Empresa.Id;
  Result.Nome := Empresa.Nome;
  Result.CNPJ := Empresa.CNPJ;
  Result.Telefone := Empresa.Telefone;
  Result.Email := Empresa.Email;
  Result.InscricaoEstadual := Empresa.InscricaoEstadual;
  Result.InscricaoEstadualST := Empresa.InscricaoEstadualST;
  Result.InscaicaoMunicipal := Empresa.InscricaoMunicipal;
  Result.CRT := Empresa.CRT;
  Result.logotipo := Empresa.Logotipo;
  Result.Regime := Empresa.Regime;
  Result.CreateAt := Empresa.CreatedAt;
  Result.UpdateAt := Empresa.UpdatedAt;

  var LEndereco := LModels.Endereco;
  LEndereco.Id := Empresa.Endereco.Id;
  LEndereco.Empresa := Empresa.Id;
  LEndereco.Logradouro := Empresa.Endereco.Logradouro;
  LEndereco.Numero := Empresa.Endereco.Numero;
  LEndereco.Complemento := Empresa.Endereco.Complemento;
  LEndereco.Bairro := Empresa.Endereco.Bairro;
  LEndereco.Cidade := Empresa.Endereco.Cidade;
  LEndereco.Estado := Empresa.Endereco.Estado;
  LEndereco.Cep := Empresa.Endereco.Cep;
  LEndereco.CreateAt := Empresa.Endereco.CreatedAt;
  LEndereco.UpdatedAt := Empresa.Endereco.UpdatedAt;

  Result.Endereco.Add(LEndereco);

  var LCNAE := LModels.CNAE;
  for var I := 0 to Pred(Empresa.EmpresaCnaeRet.Count) do
  begin
    LCNAE.Id := Empresa.EmpresaCnaeRet[I].Id;
    LCNAE.Empresa := Empresa.Id;
    LCNAE.Principal := Empresa.EmpresaCnaeRet[I].Principal;
    LCNAE.RamoAtividade := Empresa.EmpresaCnaeRet[I].RamoAtividade;
    LCNAE.ObjetivoSocial := Empresa.EmpresaCnaeRet[I].ObjetivoSocial;
    Result.CNAE.Add(LCNAE);
  end;

  var LEmissor := LModels.EmissoresFiscais;
  LEmissor.Id := Empresa.EmissoresFiscais.Id;
  LEmissor.TipoDocumento := Empresa.EmissoresFiscais.TipoDocumento;
  LEmissor.Ambiente := Empresa.EmissoresFiscais.Ambiente;
  LEmissor.Serie := Empresa.EmissoresFiscais.Serie;
  LEmissor.Numero := Empresa.EmissoresFiscais.Numero;
  LEmissor.TipoEmissao := Empresa.EmissoresFiscais.TipoEmissao;
  LEmissor.TipoSped := Empresa.EmissoresFiscais.TipoSped;
  LEmissor.Certificado := Empresa.EmissoresFiscais.CertificadoDigital;
  LEmissor.Senha := Empresa.EmissoresFiscais.Serie;
  LEmissor.CreatedAt := Empresa.EmissoresFiscais.CreatedAt;
  LEmissor.UpdateAt := Empresa.EmissoresFiscais.UpdatedAt;

  Result.Emissor.Add(LEmissor);
end;

class function TUtils.ModelEmpresaToEntitieEmpresa(
  Empresa: TEmpresaModels): IEmpresa;
begin
  REsult := TEmpresa.NEw;
  Result
    .Id(Empresa.Id)
    .Nome(Empresa.Nome)
    .CNPJ(Empresa.CNPJ)
    .Telefone(Empresa.Telefone)
    .Email(Empresa.Email)
    .InscricaoEstadual(Empresa.InscricaoEstadual)
    .InscricaoEstadualST(Empresa.InscricaoEstadualST)
    .InscricaoMunicipal(Empresa.InscaicaoMunicipal)
    .CRT(Empresa.CRT)
    .Logotipo(Empresa.logotipo)
    .Regime(Empresa.Regime)
    .Endereco
      .Id(Empresa.Endereco[0].Id)
      .Logradouro(Empresa.Endereco[0].Logradouro)
      .Numero(Empresa.Endereco[0].Numero)
      .Complemento(Empresa.Endereco[0].Complemento)
      .Bairro(Empresa.Endereco[0].Bairro)
      .Cidade(Empresa.Endereco[0].Cidade)
      .Estado(Empresa.Endereco[0].Estado)
      .Cep(Empresa.Endereco[0].Cep)
      .CreatedAt(Empresa.Endereco[0].CreateAt)
      .UpdatedAt(Empresa.Endereco[0].UpdatedAt)
      .Build
    .EmissoresFiscais
        .Id(Empresa.Emissor[0].Id)
        .TipoDocumento(Empresa.Emissor[0].TipoDocumento)
        .Ambiente(Empresa.Emissor[0].Ambiente)
        .Serie(Empresa.Emissor[0].Serie)
        .Numero(Empresa.Emissor[0].Numero)
        .TipoEmissao(Empresa.Emissor[0].TipoEmissao)
        .TipoSped(Empresa.Emissor[0].TipoSped)
        .CertificadoDigital(Empresa.Emissor[0].Certificado)
        .Senha(Empresa.Emissor[0].Senha)
        .CreatedAt(Empresa.Emissor[0].CreatedAt)
        .UpdatedAt(Empresa.Emissor[0].UpdateAt)
        .Build;

    for var I in Empresa.CNAE do
    begin
      var LRecord := Result
                      .EmpresaCnae
                      .Id(I.Id)
                      .Principal(I.Principal)
                      .RamoAtividade(I.RamoAtividade)
                      .ObjetivoSocial(I.ObjetivoSocial);
      Result
        .EmpresaCnae(LRecord);
    end;
    Result
      .CreatedAt(Empresa.CreateAt)
      .UpdatedAt(Empresa.UpdateAt);
end;

end.

