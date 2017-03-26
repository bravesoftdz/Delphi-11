(*
  cliente - pessoa f�sica
*)
unit unObjCliente;

interface

uses
  unDM,
  Controls; //TDate

  type TObjCliente = class

    private
      FnCodigo: Integer;
      FdDataCadastro: TDateTime;
      FdDataCaptacao: TDate;
      FnFk_Profissao: Integer;
      FnFk_MeioCaptacao: Integer;
      FnFk_Estado: Integer;
      FnFk_Cidade: Integer;
      FnFk_Bairro: Integer;
      FnFk_Rua: Integer;
      FsEnderecoCEP: String[9];
      FsEnderecoComplemento: String[100];
      FsNome: String[100];
      FsEmail: String[100];
      FsTelefoneResidencial: String[13];
      FsTelefoneComercial: String[13];
      FsTelefoneCelular: String[13];
      FsCPF: String[14];
      FsIdentidade: String[20];
      FdDataNascimento: TDate;
      FsHorarioLigacao: String[8];
      FtHoraInicio: TTime;
      FtHoraFinal: TTime;

      FsExibeProfissao: String;
      FsExibeMeioCaptacao: String;
      FsExibeEstado: String;
      FsExibeCidade: String;
      FsExibeBairro: String;
      FsExibeRua: String;
    public
      procedure setCodigo(pnCodigo: Integer);
      procedure setDataCadastro(pdDataCadastro: TDateTime);
      procedure setDataCaptacao(pdDataCaptacao: TDate);
      procedure setFkProfissao(pnFkProfissao: Integer);
      procedure setFkMeioCaptacao(pnFkMeioCaptacao: Integer);
      procedure setFkEstado(pnFkEstado: Integer);
      procedure setFkCidade(pnFkCidade: Integer);
      procedure setFkBairro(pnFkBairro: Integer);
      procedure setFkRua(pnFkRua: Integer);
      procedure setEnderecoCEP(psEnderecoCEP: String);
      procedure setEnderecoComplemento(psEnderecoComplemento: String);
      procedure setNome(psNome: String);
      procedure setEmail(psEmail: String);
      procedure setTelefoneResidencial(psTelefoneResidencial: String);
      procedure setTelefoneComercial(psTelefoneComercial: String);
      procedure setTelefoneCelular(psTelefoneCelular: String);
      procedure setCPF(psCPF: String);
      procedure setIdentidade(psIdentidade: String);
      procedure setDataNascimento(pdDataNascimento: TDate);
      procedure setHorarioLigacao(psHorarioLigacao: String);
      procedure setHoraInicio(ptHoraInicio: TTime);
      procedure setHoraFinal(ptHoraFinal: TTime);
      procedure setExibeProfissao(const pbMostrarNaoDefinido: Boolean = True);
      procedure setExibeMeioCaptacao(const pbMostrarNaoDefinido: Boolean = True);
      procedure setExibeEstado(const pbMostrarNaoDefinido: Boolean = True);
      procedure setExibeCidade(const pbMostrarNaoDefinido: Boolean = True);
      procedure setExibeBairro(const pbMostrarNaoDefinido: Boolean = True);
      procedure setExibeRua(const pbMostrarNaoDefinido: Boolean = True);

      function getCodigo(): Integer;
      function getDataCadastro(): TDateTime;
      function getDataCaptacao(): TDate;
      function getFkProfissao(): Integer;
      function getFkMeioCaptacao(): Integer;      
      function getFkEstado(): Integer;
      function getFkCidade(): Integer;
      function getFkBairro(): Integer;
      function getFkRua(): Integer;
      function getEnderecoCEP(): String;
      function getEnderecoComplemento(): String;
      function getNome(): String;
      function getEmail(): String;
      function getTelefoneResidencial(): String;
      function getTelefoneComercial(): String;
      function getTelefoneCelular(): String;
      function getCPF(): String;
      function getIdentidade(): String;
      function getDataNascimento(): TDate;
      function getHorarioLigacao(): String;
      function getHoraInicio(): TTime;
      function getHoraFinal(): TTime;

      function getExibeProfissao(): String;
      function getExibeMeioCaptacao(): String;
      function getExibeEstado(): String;
      function getExibeCidade(): String;
      function getExibeBairro(): String;
      function getExibeRua(): String;

      //limpa os dados do objeto
      procedure limparObjeto();

      //verifica se existe diferen�a no objeto. Quando estiver editando registro
      function verificarDiferencaCadastro(pdDataCaptacao:TDate; pnFkProfissao:Integer;
        pnFkMeioCaptacao:Integer; pnFkEstado:Integer;pnFkCidade:Integer;
        pnFkBairro:Integer; pnFkRua:Integer; psEnderecoCEP:String;
        psEnderecoComplemento:String; psNome:String; psEmail:String; psTelefoneResidencial:String;
        psTelefoneComercial:String; psTelefoneCelular:String; psCPF:String;
        psIdentidade:String; pdDataNascimento:TDate; psHorarioLigacao:String;
        pdHoraInicio:TTime; pdHoraFinal:TTime): Boolean;
  end;

implementation

uses
  unConstantes, Variants;

{ TObjCliente }

{***** set's e get's *****}
procedure TObjCliente.setCodigo(pnCodigo: Integer);
begin
  try
    Self.FnCodigo := pnCodigo;
  except
    Self.FnCodigo := NUMERO_INDEFINIDO;
  end;
end;

function TObjCliente.getCodigo: Integer;
begin
  Result := Self.FnCodigo;
end;

procedure TObjCliente.setDataCadastro(pdDataCadastro: TDateTime);
begin
  try
    Self.FdDataCadastro := pdDataCadastro;
  except
    Self.FdDataCadastro := NUMERO_INDEFINIDO;
  end;
end;

function TObjCliente.getDataCadastro(): TDateTime;
begin
  Result := Self.FdDataCadastro;
end;

procedure TObjCliente.setDataCaptacao(pdDataCaptacao: TDate);
begin
  try
    Self.FdDataCaptacao := pdDataCaptacao;
  except
    Self.FdDataCaptacao := NUMERO_INDEFINIDO;
  end;
end;

function TObjCliente.getDataCaptacao(): TDate;
begin
  Result := Self.FdDataCaptacao;
end;

procedure TObjCliente.setFkProfissao(pnFkProfissao: Integer);
begin
  try
    Self.FnFk_Profissao := pnFkProfissao;
  except
    Self.FnFk_Profissao := NUMERO_INDEFINIDO;
  end;
end;

function TObjCliente.getFkProfissao(): Integer;
begin
  Result := Self.FnFk_Profissao;
end;

procedure TObjCliente.setFkMeioCaptacao(pnFkMeioCaptacao: Integer);
begin
  try
    Self.FnFk_MeioCaptacao := pnFkMeioCaptacao;
  except
    Self.FnFk_MeioCaptacao := NUMERO_INDEFINIDO;
  end;
end;

function TObjCliente.getFkMeioCaptacao(): Integer;
begin
  Result := Self.FnFk_MeioCaptacao;
end;

procedure TObjCliente.setFkEstado(pnFkEstado: Integer);
begin
  try
    Self.FnFk_Estado := pnFkEstado;
  except
    Self.FnFk_Estado := NUMERO_INDEFINIDO;
  end;
end;

function TObjCliente.getFkEstado(): Integer;
begin
  Result := Self.FnFk_Estado;
end;

procedure TObjCliente.setFkCidade(pnFkCidade: Integer);
begin
  try
    Self.FnFk_Cidade := pnFkCidade;
  except
    Self.FnFk_Cidade := NUMERO_INDEFINIDO;
  end;
end;

function TObjCliente.getFkCidade(): Integer;
begin
  Result := Self.FnFk_Cidade;
end;

procedure TObjCliente.setFkBairro(pnFkBairro: Integer);
begin
  try
    Self.FnFk_Bairro := pnFkBairro;
  except
    Self.FnFk_Bairro := NUMERO_INDEFINIDO;
  end;
end;

function TObjCliente.getFkBairro(): Integer;
begin
  Result := Self.FnFk_Bairro;
end;

procedure TObjCliente.setFkRua(pnFkRua: Integer);
begin
  try
    Self.FnFk_Rua := pnFkRua;
  except
    Self.FnFk_Rua := NUMERO_INDEFINIDO;
  end;
end;

function TObjCliente.getFkRua(): Integer;
begin
  Result := Self.FnFk_Rua;
end;

procedure TObjCliente.setEnderecoCEP(psEnderecoCEP: String);
begin
  try
    Self.FsEnderecoCEP := psEnderecoCEP;
  except
    Self.FsEnderecoCEP := STRING_INDEFINIDO;
  end;
end;

function TObjCliente.getEnderecoCEP(): String;
begin
  Result := Self.FsEnderecoCEP;
end;

procedure TObjCliente.setEnderecoComplemento(psEnderecoComplemento: String);
begin
  try
    Self.FsEnderecoComplemento := psEnderecoComplemento;
  except
    Self.FsEnderecoComplemento := STRING_INDEFINIDO;
  end;
end;

function TObjCliente.getEnderecoComplemento(): String;
begin
  Result := Self.FsEnderecoComplemento;
end;

procedure TObjCliente.setNome(psNome: String);
begin
  try
    Self.FsNome := psNome;
  except
    Self.FsNome := STRING_INDEFINIDO;
  end;
end;

function TObjCliente.getNome(): String;
begin
  Result := Self.FsNome;
end;

procedure TObjCliente.setEmail(psEmail: String);
begin
  try
    Self.FsEmail := psEmail;
  except
    Self.FsEmail := STRING_INDEFINIDO;
  end;
end;

function TObjCliente.getEmail(): String;
begin
  Result := Self.FsEmail;
end;

procedure TObjCliente.setTelefoneResidencial(psTelefoneResidencial: String);
begin
  try
    Self.FsTelefoneResidencial := psTelefoneResidencial;
  except
    Self.FsTelefoneResidencial := STRING_INDEFINIDO;
  end;
end;

function TObjCliente.getTelefoneResidencial(): String;
begin
  Result := Self.FsTelefoneResidencial;
end;

procedure TObjCliente.setTelefoneComercial(psTelefoneComercial: String);
begin
  try
    Self.FsTelefoneComercial := psTelefoneComercial;
  except
    Self.FsTelefoneComercial := STRING_INDEFINIDO;
  end;
end;

function TObjCliente.getTelefoneComercial(): String;
begin
  Result := Self.FsTelefoneComercial;
end;

procedure TObjCliente.setTelefoneCelular(psTelefoneCelular: String);
begin
  try
    Self.FsTelefoneCelular := psTelefoneCelular;
  except
    Self.FsTelefoneCelular := STRING_INDEFINIDO;
  end;
end;

function TObjCliente.getTelefoneCelular(): String;
begin
  Result := Self.FsTelefoneCelular;
end;

procedure TObjCliente.setCPF(psCPF: String);
begin
  try
    Self.FsCPF := psCPF;
  except
    Self.FsCPF := STRING_INDEFINIDO;
  end;
end;

function TObjCliente.getCPF(): String;
begin
  Result := Self.FsCPF;
end;

procedure TObjCliente.setIdentidade(psIdentidade: String);
begin
  try
    Self.FsIdentidade := psIdentidade;
  except
    Self.FsIdentidade := STRING_INDEFINIDO;
  end;
end;

function TObjCliente.getIdentidade(): String;
begin
  Result := Self.FsIdentidade;
end;

procedure TObjCliente.setDataNascimento(pdDataNascimento: TDate);
begin
  try
    Self.FdDataNascimento := pdDataNascimento;
  except
    Self.FdDataNascimento := NUMERO_INDEFINIDO;
  end;
end;

function TObjCliente.getDataNascimento(): TDate;
begin
  Result := Self.FdDataNascimento;
end;

procedure TObjCliente.setHorarioLigacao(psHorarioLigacao: String);
begin
  try
    Self.FsHorarioLigacao := psHorarioLigacao;
  except
    Self.FsHorarioLigacao := STRING_INDEFINIDO;
  end;
end;

function TObjCliente.getHorarioLigacao(): String;
begin
  Result := Self.FsHorarioLigacao;
end;

procedure TObjCliente.setHoraInicio(ptHoraInicio: TTime);
begin
  try
    Self.FtHoraInicio := ptHoraInicio;
  except
    Self.FtHoraInicio := NUMERO_INDEFINIDO;
  end;
end;

function TObjCliente.getHoraInicio(): TTime;
begin
  Result := Self.FtHoraInicio;
end;

procedure TObjCliente.setHoraFinal(ptHoraFinal: TTime);
begin
  try
    Self.FtHoraFinal := ptHoraFinal;
  except
    Self.FtHoraFinal := NUMERO_INDEFINIDO;
  end;
end;

function TObjCliente.getHoraFinal(): TTime;
begin
  Result := Self.FtHoraFinal;
end;

procedure TObjCliente.setExibeProfissao(const pbMostrarNaoDefinido: Boolean = True);
begin
  Self.FsExibeProfissao := STRING_INDEFINIDO;

  if(not(pbMostrarNaoDefinido) and (Self.FnFk_Profissao =REGISTRO_NULO))then
    Self.FsExibeProfissao := STRING_INDEFINIDO

  else
  begin
    if(Self.FnFk_Profissao <> NUMERO_INDEFINIDO)then
    begin
      DM.zQryProfissao.Close;
      DM.zQryProfissao.SQL.Clear;
      DM.zQryProfissao.SQL.Add('SELECT * FROM profissao WHERE codigo=:cod');
      DM.zQryProfissao.ParamByName('cod').AsInteger := Self.FnFk_Profissao;
      DM.zQryProfissao.Open;
      if(DM.zQryProfissao.RecordCount = 1)then
        //Self.FsExibeProfissao := DM.zQryProfissaoCODIGO.AsString + ' - ' + DM.zQryProfissaoNOME.AsString;
        Self.FsExibeProfissao := DM.zQryProfissaoNOME.AsString;
    end;
  end;
end;

function TObjCliente.getExibeProfissao(): String;
begin
  Result := Self.FsExibeProfissao;
end;

procedure TObjCliente.setExibeMeioCaptacao(const pbMostrarNaoDefinido: Boolean = True);
begin
  Self.FsExibeMeioCaptacao := STRING_INDEFINIDO;

  if(not(pbMostrarNaoDefinido) and (Self.FnFk_MeioCaptacao =REGISTRO_NULO))then
    Self.FsExibeMeioCaptacao := STRING_INDEFINIDO

  else
  begin
    if(Self.FnFk_MeioCaptacao <> NUMERO_INDEFINIDO)then
    begin
      DM.zQryMeioCaptacao.Close;
      DM.zQryMeioCaptacao.SQL.Clear;
      DM.zQryMeioCaptacao.SQL.Add('SELECT * FROM meio_captacao WHERE codigo=:cod');
      DM.zQryMeioCaptacao.ParamByName('cod').AsInteger := Self.FnFk_MeioCaptacao;
      DM.zQryMeioCaptacao.Open;
      if(DM.zQryMeioCaptacao.RecordCount = 1)then
        //Self.FsExibeProfissao := DM.zQryProfissaoCODIGO.AsString + ' - ' + DM.zQryProfissaoNOME.AsString;
        Self.FsExibeMeioCaptacao := DM.zQryMeioCaptacaoNOME.AsString;
    end;
  end;
end;

function TObjCliente.getExibeMeioCaptacao(): String;
begin
  Result := Self.FsExibeMeioCaptacao;
end;

procedure TObjCliente.setExibeEstado(const pbMostrarNaoDefinido: Boolean = True);
begin
  Self.FsExibeEstado := STRING_INDEFINIDO;

  if(not(pbMostrarNaoDefinido) and (Self.FnFk_Estado =REGISTRO_NULO))then
    Self.FsExibeEstado := STRING_INDEFINIDO

  else
  begin
    if(Self.FnFk_Estado <> NUMERO_INDEFINIDO)then
    begin
      DM.zQryEstado.Close;
      DM.zQryEstado.SQL.Clear;
      DM.zQryEstado.SQL.Add('SELECT * FROM estado WHERE codigo=:cod');
      DM.zQryEstado.ParamByName('cod').AsInteger := Self.FnFk_Estado;
      DM.zQryEstado.Open;
      if(DM.zQryEstado.RecordCount = 1)then
        //Self.FsExibeEstado := DM.zQryEstadoCODIGO.AsString + ' - ' + DM.zQryEstadoNOME.AsString;
        Self.FsExibeEstado := DM.zQryEstadoNOME.AsString;
    end;
  end;
end;

function TObjCliente.getExibeEstado(): String;
begin
  Result := Self.FsExibeEstado;
end;

procedure TObjCliente.setExibeCidade(const pbMostrarNaoDefinido: Boolean = True);
begin
  Self.FsExibeCidade := STRING_INDEFINIDO;

  if(not(pbMostrarNaoDefinido) and (Self.FnFk_Cidade =REGISTRO_NULO))then
    Self.FsExibeCidade := STRING_INDEFINIDO

  else
  begin
    if(Self.FnFk_Cidade <> NUMERO_INDEFINIDO)then
    begin
      DM.zQryCidade.Close;
      DM.zQryCidade.SQL.Clear;
      DM.zQryCidade.SQL.Add('SELECT * FROM cidade WHERE codigo=:cod');
      DM.zQryCidade.ParamByName('cod').AsInteger := Self.FnFk_Cidade;
      DM.zQryCidade.Open;
      if(DM.zQryCidade.RecordCount = 1)then
        //Self.FsExibeCidade := DM.zQryCidadeCODIGO.AsString + ' - ' + DM.zQryCidadeNOME.AsString;
        Self.FsExibeCidade := DM.zQryCidadeNOME.AsString;
    end;
  end;
end;

function TObjCliente.getExibeCidade(): String;
begin
  Result := Self.FsExibeCidade;
end;

procedure TObjCliente.setExibeBairro(const pbMostrarNaoDefinido: Boolean = True);
begin
  Self.FsExibeBairro := STRING_INDEFINIDO;

  if(not(pbMostrarNaoDefinido) and (Self.FnFk_Bairro =REGISTRO_NULO))then
    Self.FsExibeBairro := STRING_INDEFINIDO

  else
  begin
    if(Self.FnFk_Bairro <> NUMERO_INDEFINIDO)then
    begin
      DM.zQryBairro.Close;
      DM.zQryBairro.SQL.Clear;
      DM.zQryBairro.SQL.Add('SELECT * FROM bairro WHERE codigo=:cod');
      DM.zQryBairro.ParamByName('cod').AsInteger := Self.FnFk_Bairro;
      DM.zQryBairro.Open;
      if(DM.zQryBairro.RecordCount = 1)then
        //Self.FsExibeBairro := DM.zQryBairroCODIGO.AsString + ' - ' + DM.zQryBairroNOME.AsString;
        Self.FsExibeBairro := DM.zQryBairroNOME.AsString;
    end;
  end;
end;

function TObjCliente.getExibeBairro(): String;
begin
  Result := Self.FsExibeBairro;
end;

procedure TObjCliente.setExibeRua(const pbMostrarNaoDefinido: Boolean = True);
begin
  Self.FsExibeRua := STRING_INDEFINIDO;

  if(not(pbMostrarNaoDefinido) and (Self.FnFk_Rua =REGISTRO_NULO))then
    Self.FsExibeRua := STRING_INDEFINIDO

  else
  begin
    if(Self.FnFk_Rua <> NUMERO_INDEFINIDO)then
    begin
      DM.zQryRua.Close;
      DM.zQryRua.SQL.Clear;
      DM.zQryRua.SQL.Add('SELECT * FROM rua WHERE codigo=:cod');
      DM.zQryRua.ParamByName('cod').AsInteger := Self.FnFk_Rua;
      DM.zQryRua.Open;
      if(DM.zQryRua.RecordCount = 1)then
        //Self.FsExibeRua := DM.zQryRuaCODIGO.AsString + ' - ' + DM.zQryRuaNOME.AsString;
        Self.FsExibeRua := DM.zQryRuaNOME.AsString;
    end;
  end;
end;

function TObjCliente.getExibeRua(): String;
begin
  Result := Self.FsExibeRua;
end;

{***** procedimentos diversos *****}

//limpa os dados do objeto
procedure TObjCliente.limparObjeto();
begin
  Self.setCodigo(NUMERO_INDEFINIDO);
  Self.setDataCadastro(NUMERO_INDEFINIDO);
  Self.setDataCaptacao(NUMERO_INDEFINIDO);
  Self.setFkProfissao(NUMERO_INDEFINIDO);
  Self.setFkMeioCaptacao(NUMERO_INDEFINIDO);
  Self.setFkEstado(NUMERO_INDEFINIDO);
  Self.setFkCidade(NUMERO_INDEFINIDO);
  Self.setFkBairro(NUMERO_INDEFINIDO);
  Self.setFkRua(NUMERO_INDEFINIDO);
  Self.setEnderecoCEP(STRING_INDEFINIDO);
  Self.setEnderecoComplemento(STRING_INDEFINIDO);
  Self.setNome(STRING_INDEFINIDO);
  Self.setEmail(STRING_INDEFINIDO);
  Self.setTelefoneResidencial(STRING_INDEFINIDO);
  Self.setTelefoneComercial(STRING_INDEFINIDO);
  Self.setTelefoneCelular(STRING_INDEFINIDO);
  Self.setCPF(STRING_INDEFINIDO);
  Self.setIdentidade(STRING_INDEFINIDO);
  Self.setDataNascimento(NUMERO_INDEFINIDO);
  Self.setHorarioLigacao(STRING_INDEFINIDO);
  Self.setHoraInicio(NUMERO_INDEFINIDO);
  Self.setHoraFinal(NUMERO_INDEFINIDO);
  Self.setExibeProfissao(False);
  Self.setExibeMeioCaptacao(False);
  Self.setExibeEstado(False);
  Self.setExibeCidade(False);
  Self.setExibeBairro(False);
  Self.setExibeRua(False);
end;

//verifica se existe diferen�a no objeto. Quando estiver editando registro
function TObjCliente.verificarDiferencaCadastro(pdDataCaptacao:TDate;
  pnFkProfissao:Integer;pnFkMeioCaptacao:Integer; pnFkEstado:Integer;
  pnFkCidade:Integer;pnFkBairro:Integer; pnFkRua:Integer; psEnderecoCEP:String;
  psEnderecoComplemento:String; psNome:String; psEmail:String;
  psTelefoneResidencial:String;psTelefoneComercial:String;
  psTelefoneCelular:String; psCPF:String;psIdentidade:String;
  pdDataNascimento:TDate; psHorarioLigacao:String;pdHoraInicio:TTime;
  pdHoraFinal:TTime): Boolean;
var
  retorno: Boolean;
begin
  retorno := False;

  if (pdDataCaptacao <> Self.getDataCaptacao) then
    retorno := True;
  if (pnFkProfissao <> Self.getFkProfissao) then
    retorno := True;
  if (pnFkMeioCaptacao <> Self.getFkMeioCaptacao) then
    retorno := True;
  if (pnFkEstado <> Self.getFkEstado) then
    retorno := True;
  if (pnFkCidade <> Self.getFkCidade) then
    retorno := True;
  if (pnFkBairro <> Self.getFkBairro) then
    retorno := True;
  if (pnFkRua <> Self.getFkRua) then
    retorno := True;
  if (psEnderecoCEP <> Self.getEnderecoCEP) then
    retorno := True;
  if (psEnderecoComplemento <> Self.getEnderecoComplemento) then
    retorno := True;
  if (psNome <> Self.getNome) then
    retorno := True;
  if (psEmail <> Self.getEmail) then
    retorno := True;
  if (psTelefoneResidencial <> Self.getTelefoneResidencial) then
    retorno := True;
  if (psTelefoneComercial <> Self.getTelefoneComercial) then
    retorno := True;
  if (psTelefoneCelular <> Self.getTelefoneCelular) then
    retorno := True;
  if (psCPF <> Self.getCPF) then
    retorno := True;
  if (psIdentidade <> Self.getIdentidade) then
    retorno := True;
  if (pdDataNascimento <> Self.getDataNascimento) then
    retorno := True;
  if (psHorarioLigacao <> Self.getHorarioLigacao) then
    retorno := True;
  if (pdHoraInicio <> Self.getHoraInicio) then
    retorno := True;
  if (pdHoraFinal <> Self.getHoraFinal) then
    retorno := True;

  Result := retorno;
end;

end.
