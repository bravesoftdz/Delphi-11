unit unConjuntoDadosEstado;

interface

  uses
    unConjuntoDados;

  type TConjuntoDadosEstado = class(TConjunto)

    private
    published
      constructor CriaObjeto(); override;
      function GetCodigo: Integer;
      function GetNome: String;
    public

  end;

implementation

uses
  unConstantes;

constructor TConjuntoDadosEstado.CriaObjeto();
begin
  inherited;

  SetNomeTabela(TABLE_ESTADO);
  SetSQLPrincipal();
  ExecutarSQLSelecao();
  DeletarRegistroNaoDefinido();  
end;

function TConjuntoDadosEstado.GetCodigo: Integer;
begin
  if(FcdsDados.Active)and(FcdsDados.RecordCount > 0)then
    Result := FcdsDados.FieldByName('codigo').AsInteger
  else
    Result := NUMERO_INDEFINIDO;
end;

function TConjuntoDadosEstado.GetNome: String;
begin
  if(FcdsDados.Active)and(FcdsDados.RecordCount > 0)then
    Result := FcdsDados.FieldByName('nome').AsString
  else
    Result := STRING_INDEFINIDO;
end;

end.
