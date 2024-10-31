unit server.connections.impl.firedac;

interface

uses
  System.SysUtils,
  System.Classes,
  System.Generics.Collections,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.PG,
  FireDAC.Phys.PGDef,
  FireDAC.ConsoleUI.Wait,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  contracts.connections.interfaces;

  type
  TDataBaseConnection = class(TInterfacedObject, IDataBaseConnection)
  private
    FConn: TFDConnection;

    constructor Create;
    destructor Destroy; override;
  protected
    function PrepareQuery(const SQL: String; const Params: TArray<TParams>): TFDQuery;
    function Persistir(Value: String): Boolean;
  public

    class function New: IDataBaseConnection;

    procedure StartTransaction;
    procedure Commit;
    procedure Rollback;
    function Query(const Statement: String; const Params: TArray<TParams> = []): TDataSet; overload;
  end;

implementation

{ TDataBaseConnection }

procedure TDataBaseConnection.Commit;
begin
  FConn.Commit;
end;

constructor TDataBaseConnection.Create;
begin
  FConn := TFDConnection.Create(nil);

  var lDataBase := GetEnvironmentVariable('DATABASE');
  var lServer := GetEnvironmentVariable('SERVER');
  var lUserName := GetEnvironmentVariable('USERNAME');
  var lPassword := GetEnvironmentVariable('PASSWORD');
  var lPort := GetEnvironmentVariable('PORT');

  FConn.Params.DriverID := 'PG';
  FConn.Params.Database := lDataBase;
  FConn.Params.Add('Server='+lServer);
  FConn.Params.UserName := lUserName;
  FConn.Params.Password := lPassword;
  FConn.Params.Add('PORT='+lPort);
  FConn.Params.Add('CharacterSet=utf8');
  FConn.Connected;
end;

destructor TDataBaseConnection.Destroy;
begin
  FConn.Free;
  inherited;
end;

class function TDataBaseConnection.New: IDataBaseConnection;
begin
  REsult := Self.Create;
end;

function TDataBaseConnection.Persistir(Value: String): Boolean;
begin
  Result := not (not (Pos('UPDATE', UpperCase(Value)) > 0)) or
    (not (Pos('INSERT', UpperCase(Value)) > 0));
end;

function TDataBaseConnection.PrepareQuery(const SQL: String;
  const Params: TArray<TParams>): TFDQuery;
begin
  Result := TFDQuery.Create(nil);
  try
    Result.Connection := FConn;
    Result.SQL.Text := SQL;
    if Length(Params) > 0 then
    begin
      for var I := Low(Params) to High(Params) do
      begin
        for var J := Low(0) to Pred(Params[I].Count) do
        begin
          Result.ParamByName(Params[I].Items[J].Name).DataType := Params[I].Items[J].DataType;
          Result.ParamByName(Params[I].Items[J].Name).ParamType := Params[I].Items[J].ParamType;
          Result.ParamByName(Params[I].Items[J].Name).Values[I] := Params[I].Items[J].Value;
        end;
      end;
      Result.Prepare;
    end;
  except on E: Exception do
    begin
      FreeAndNil(Result);
      raise;
    end;
  end;
end;

function TDataBaseConnection.Query(const Statement: String;
  const Params: TArray<TParams>): TDataSet;
begin
  Result := nil;
  var LQuery := PrepareQuery(Statement, Params);
  if not Persistir(Statement) then
  begin
    LQuery.Open;
    Result := LQuery;
    Exit;
  end;
  LQuery.ExecSQL;
  Result := LQuery;
end;

procedure TDataBaseConnection.Rollback;
begin
  FConn.Rollback;
end;

procedure TDataBaseConnection.StartTransaction;
begin
  FConn.StartTransaction;
end;

end.
