unit models.cnae;

interface

uses
  GBJSON.Attributes;

type
  TCNAEModel = class
  private
    FId: String;
    FEmpresa: String;
    FPrincipal: String;
    FRamoAtividade: String;
    FCreatedAt: TDateTime;
    FUpdatedAt: TDateTIme;
    FObjetivoSocial: String;
  public
    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('empresa')]
    [JSONIgnre]
    property Empresa: String read FEmpresa write FEmpresa;
    [JSONProp('principal')]
    property Principal: String read FPrincipal write FPrincipal;
    [JSONProp('ramoAtividade')]
    property RamoAtividade: String read FRamoAtividade write FRamoAtividade;
    [JSONProp('objeticoSocial')]
    property ObjetivoSocial: String read FObjetivoSocial write FObjetivoSocial;
    [JSONProp('createdat')]
    [JSONIgnore]
    property CreatedAt: TDateTime read FCreatedAt write FCreatedAt;
    [JSONProp('updatedat')]
    [JSONIgnore]
    property UpdatedAt: TDateTIme read FUpdatedAt write FUpdatedAt;
  end;

implementation

end.
