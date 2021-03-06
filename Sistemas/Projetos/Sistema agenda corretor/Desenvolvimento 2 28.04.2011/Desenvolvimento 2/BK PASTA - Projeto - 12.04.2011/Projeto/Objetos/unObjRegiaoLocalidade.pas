unit unObjRegiaoLocalidade;

interface

  type TObjRegiaoLocalidade = class

    private
      FnCodigo: Integer;
      FsNome: String[50];
    public
      procedure setCodigo(pnCodigo: Integer);
      procedure setNome(psNome: String);

      function getCodigo(): Integer;
      function getNome(): String;
      //verifica se existe diferen�a no objeto. Quando estiver editando registro
      function verificarDiferencaCadastro(psNome:String; poBairros:OleVariant): boolean;
  end;

implementation

uses
  unConstantes, unDM,
  DBClient, //TClientDataSet
  ZDataset; //TZQuery

{ TObjRegiaoLocalidade }

{***** set's e get's *****}
procedure TObjRegiaoLocalidade.setCodigo(pnCodigo: Integer);
begin
  try
    Self.FnCodigo := pnCodigo;
  except
    Self.FnCodigo := NUMERO_INDEFINIDO;
  end;
end;

function TObjRegiaoLocalidade.getCodigo: Integer;
begin
  Result := Self.FnCodigo;
end;

procedure TObjRegiaoLocalidade.setNome(psNome: String);
begin
  try
    Self.FsNome := psNome;
  except
    Self.FsNome := STRING_INDEFINIDO;
  end;
end;

function TObjRegiaoLocalidade.getNome: String;
begin
  Result := Self.FsNome;
end;

{***** procedimentos diversos *****}
//verifica se existe diferen�a no objeto. Quando estiver editando registro
function TObjRegiaoLocalidade.verificarDiferencaCadastro(psNome:String; poBairros:OleVariant): boolean;
var
  retorno: Boolean;
  cdsBairros: TClientDataSet;
  zQuery: TZQuery;
begin
  retorno := False;

  if (psNome <> Self.getNome) then
    retorno := True;

  //verificando diferen�a dos bairros da regi�o localidade
  if(retorno=False)then
  begin
    cdsBairros.Data := poBairros; //bairros que existem agora

    zQuery := TZQuery.Create(nil);
    zQuery.Connection := DM.ZConnection;
    zQuery.Close;
    zQuery.SQL.Clear;
    zQuery.SQL.Add('SELECT * FROM regiao_localidade_bairro WHERE cod_fk_regiao_localidade=:cod_fk_regiao_localidade');
    zQuery.ParamByName('cod_fk_regiao_localidade').AsInteger := Self.getCodigo;
    zQuery.Open; //bairros que  j� existem no cadastro

    if(cdsBairros.Active)and(zQuery.Active)then
    begin
      if(cdsBairros.RecordCount <> zQuery.RecordCount)then
        retorno := True //existe diferen�a entre os bairros
      else
      begin
        zQuery.First;
        while not(zQuery.Eof)do
        begin
          if(cdsBairros.Locate('CODIGO_BAIRRO',zQuery.FieldByName('cod_fk_bairro').AsInteger,[]))then
            cdsBairros.Delete
          else
          begin
            retorno := True;
            Break;
          end;
          zQuery.Next;
        end;

        if(cdsBairros.RecordCount > NUMERO_INDEFINIDO)then
          retorno := True;
      end;
    end;  
  end;

  Result := retorno;
end;

end.
