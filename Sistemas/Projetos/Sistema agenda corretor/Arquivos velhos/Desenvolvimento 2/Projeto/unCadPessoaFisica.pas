(*
  agenciador - pessoa f�sica
*)
unit unCadPessoaFisica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unCadastroBasico, DBClient, Provider, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, AppEvnts, ImgList, ComCtrls, ToolWin,
  StdCtrls, plsMemo, Buttons, plsEdit, Mask, plsTMaskEdit, plsComboBox,
  unObjPessoaFisica, ExtCtrls;

  type
    TEstado = record
      codigo: Integer;
      nome: string[100];
    end;

  type
    TCidade = record
      codigo: Integer;
      nome: string[100];
    end;

  type
    TBairro = record
      codigo: Integer;
      nome: string[100];
    end;

  type
    TRua = record
      codigo: Integer;
      nome: string[100];
      cep: string[9];
    end;

  type
    TMeioCaptacao = record
      codigo: Integer;
      nome: string[50];
    end;    

type
  TfrmCadPessoaFisica = class(TfrmCadastroBasico)
    lblCodigo: TLabel;
    lblNome: TLabel;
    lblCPF: TLabel;
    plsMedCPF: TPlsMaskEdit;
    plsEdNome: TPlsEdit;
    plsEdCodigo: TPlsEdit;
    plsEdIdentidade: TPlsEdit;
    lblIdentidade: TLabel;
    lblDataNascimento: TLabel;
    plsMedDataNascimento: TPlsMaskEdit;
    plsEdEmail: TPlsEdit;
    lblEmail: TLabel;
    grpBxTelefones: TGroupBox;
    lblResidencial: TLabel;
    lblComercial: TLabel;
    lblCelular: TLabel;
    plsMedTelefoneResidencial: TPlsMaskEdit;
    plsMedTelefoneComercial: TPlsMaskEdit;
    plsMedTelefoneCelular: TPlsMaskEdit;
    grpBxEndereco: TGroupBox;
    lblEstado: TLabel;
    spBtnBuscaEstado: TSpeedButton;
    spBtnBuscaCidade: TSpeedButton;
    lblCidade: TLabel;
    lblBairro: TLabel;
    lblRua: TLabel;
    lblCEP: TLabel;
    spBtnBuscaBairro: TSpeedButton;
    spBtnBuscaRua: TSpeedButton;
    lblComplemento: TLabel;
    plsEdEstado: TPlsEdit;
    plsEdCidade: TPlsEdit;
    plsMedCEP: TPlsMaskEdit;
    plsEdRua: TPlsEdit;
    plsEdBairro: TPlsEdit;
    plsMmEnderecoComplemento: TPlsMemo;
    lblConjuge: TLabel;
    plsEdConjuge: TPlsEdit;
    grpBxHorarioLigacao: TGroupBox;
    lblPeriodo: TLabel;
    plsCbBxPeriodo: TPlsComboBox;
    lblDas: TLabel;
    lblAs: TLabel;
    plsMedHoraLigacaoFinal: TPlsMaskEdit;
    plsMedHoraLigacaoInicio: TPlsMaskEdit;
    lblCampoObrigatorio1: TLabel;
    lblCampoObrigatorio4: TLabel;
    lblCampoObrigatorio3: TLabel;
    pnlMeioCaptacao: TPanel;
    lblMeioCaptacao: TLabel;
    spBtnBuscaMeioCaptacao: TSpeedButton;
    lblCampoObrigatorio2: TLabel;
    plsEdMeioCaptacao: TPlsEdit;
    zQryDadosCODIGO: TIntegerField;
    zQryDadosDATA_CADASTRO: TDateTimeField;
    zQryDadosNOME: TStringField;
    zQryDadosEMAIL: TStringField;
    zQryDadosCPF: TStringField;
    zQryDadosIDENTIDADE: TStringField;
    zQryDadosDATA_NASCIMENTO: TDateTimeField;
    zQryDadosCONJUGE: TStringField;
    zQryDadosTELEFONE_RESIDENCIAL: TStringField;
    zQryDadosTELEFONE_COMERCIAL: TStringField;
    zQryDadosTELEFONE_CELULAR: TStringField;
    zQryDadosCOD_FK_MEIO_CAPTACAO: TIntegerField;
    zQryDadosCOD_FK_ESTADO: TIntegerField;
    zQryDadosCOD_FK_CIDADE: TIntegerField;
    zQryDadosCOD_FK_BAIRRO: TIntegerField;
    zQryDadosCOD_FK_RUA: TIntegerField;
    zQryDadosENDERECO_CEP: TStringField;
    zQryDadosENDERECO_COMPLEMENTO: TStringField;
    zQryDadosHORARIO_LIGACAO: TStringField;
    zQryDadosHORA_INICIO: TTimeField;
    zQryDadosHORA_FINAL: TTimeField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDATA_CADASTRO: TDateTimeField;
    cdsDadosNOME: TStringField;
    cdsDadosEMAIL: TStringField;
    cdsDadosCPF: TStringField;
    cdsDadosIDENTIDADE: TStringField;
    cdsDadosDATA_NASCIMENTO: TDateTimeField;
    cdsDadosCONJUGE: TStringField;
    cdsDadosTELEFONE_RESIDENCIAL: TStringField;
    cdsDadosTELEFONE_COMERCIAL: TStringField;
    cdsDadosTELEFONE_CELULAR: TStringField;
    cdsDadosCOD_FK_MEIO_CAPTACAO: TIntegerField;
    cdsDadosCOD_FK_ESTADO: TIntegerField;
    cdsDadosCOD_FK_CIDADE: TIntegerField;
    cdsDadosCOD_FK_BAIRRO: TIntegerField;
    cdsDadosCOD_FK_RUA: TIntegerField;
    cdsDadosENDERECO_CEP: TStringField;
    cdsDadosENDERECO_COMPLEMENTO: TStringField;
    cdsDadosHORARIO_LIGACAO: TStringField;
    cdsDadosHORA_INICIO: TTimeField;
    cdsDadosHORA_FINAL: TTimeField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tlBtnNovoClick(Sender: TObject);
    procedure tlBtnSalvarClick(Sender: TObject);
    procedure tlBtnEditarClick(Sender: TObject);
    procedure tlBtnExcluirClick(Sender: TObject);
    procedure tlBtnCancelarClick(Sender: TObject);
    procedure plsEdCodigoExit(Sender: TObject);
    procedure plsEdNomeExit(Sender: TObject);
    procedure plsMedCPFExit(Sender: TObject);
    procedure plsEdIdentidadeExit(Sender: TObject);
    procedure spBtnBuscaEstadoClick(Sender: TObject);
    procedure spBtnBuscaCidadeClick(Sender: TObject);
    procedure spBtnBuscaBairroClick(Sender: TObject);
    procedure spBtnBuscaRuaClick(Sender: TObject);
    procedure plsEdEstadoClick(Sender: TObject);
    procedure plsEdCidadeClick(Sender: TObject);
    procedure plsEdBairroClick(Sender: TObject);
    procedure plsEdRuaClick(Sender: TObject);
    procedure plsEdCodigoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure plsEdEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure plsEdCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure plsEdBairroKeyPress(Sender: TObject; var Key: Char);
    procedure plsEdRuaKeyPress(Sender: TObject; var Key: Char);
    procedure plsEdNomeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure plsMedCPFKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure plsEdIdentidadeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spBtnBuscaMeioCaptacaoClick(Sender: TObject);
    procedure plsEdMeioCaptacaoKeyPress(Sender: TObject; var Key: Char);
    procedure plsEdMeioCaptacaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FoPessoaFisica: TObjPessoaFisica;
    FnCodigoEditar: Integer;
    FbPodeLimparEndereco: Boolean;

    procedure carregarObjeto(); override;
    procedure carregarComponentesApresentacao(); override;
    procedure selecionarTodosDados(); override;
    procedure limparObjeto(); override;
    procedure limparTela(poForm: TForm); override;
    function verificarHouveAlteracoes(): boolean; override;
    function verificarCamposObrigatorios(): boolean; override;
    function verificarRegistroJaExiste(): boolean; override;
    function verificarPodeDeletar(): boolean; override;
    procedure visibilidade(pnVisib: Integer); override;
    function outrasValidacoesAntesSalvar(): Boolean; override;
    procedure novo(); override;
    function salvar(): Boolean; override;
    function excluir(): Boolean; override;
    procedure verificarInseriuChamadaTelaExterna(); override;
    procedure limparEndereco(iEnderecoChamou: String); //limpa os campos do endere�o, a partir daquele que alterou
    function validarAcessoEndereco(iEnderecoChamou: String): boolean; //valida se o acesso ao endere�o pode ser realizado
    procedure editarRegistroChamadaExterna();
  public
    FoMeioCaptacao: TMeioCaptacao;
    FoEstado: TEstado;
    FoCidade: TCidade;
    FoBairro: TBairro;
    FoRua: TRua;

    procedure iniciarTela(poForm: TForm); override;
    procedure passarParametro(pTipo:String; pValores:OleVariant); override;
    procedure realizouPesquisa(piCodigo: Integer); override;
  end;

var
  frmCadPessoaFisica: TfrmCadPessoaFisica;

implementation

uses unPesquisandoPessoaFisica, unConstantes, unDM,
  unSelecionaRegistroEstado, unSelecionaRegistroCidade,
  unSelecionaRegistroBairro, unSelecionaRegistroRua, unFuncoes,
  unVariaveis, unSelecionaRegistroPessoaFisica,
  unSelecionaRegistroMeioCaptacao, unCadAgenciamento;

{$R *.dfm}  

{ TfrmCadPessoaFisica }

(* procedimentos de controle *)

procedure TfrmCadPessoaFisica.iniciarTela(poForm: TForm);
begin
  inherited;
(*
  Application.CreateForm(TfrmPesquisandoPessoaFisica, Self.FoPesquisa);
  Self.FoPesquisa.iniciarTela(frmCadPessoaFisica);
  if(Assigned(Self.FoPesquisa))then
    Self.FoPesquisa.Hide;
*)
end;

procedure TfrmCadPessoaFisica.passarParametro(pTipo:String; pValores:OleVariant);
begin
  if(pTipo = PRM_CRIA_TELA_PESQUISA)then
  begin
    Application.CreateForm(TfrmPesquisandoPessoaFisica, Self.FoPesquisa);
    Self.FoPesquisa.passarParametro(PRM_INICIAR_TELA, null);
    Self.FoPesquisa.iniciarTela(frmCadPessoaFisica);
    if(Assigned(Self.FoPesquisa))then
      Self.FoPesquisa.Hide;
  end

  else if(pTipo = PRM_INSERE_REGISTRO_AO_ESTAR_SELECIONANDO)then
  begin
    Self.FbChamadaExternaInserirRegistro := True;
    Self.FiTelaExternaChamouInserirRegistro := pValores;
  end

  else if(pTipo = PRM_EDITAR_PESSOA_AGENCIAMENTO_STAND_BY)then
  begin
    Self.FbChamadaExternaEditarRegistro := True;
    Self.FiTelaExternaChamouEditarRegistro := pValores;
  end

  else if(pTipo = PRM_CARREGA_REGISTRO_CODIGO)then
  begin
    Self.FnCodigoEditar := pValores;
  end

  else if(pTipo = PRM_NAO_LIMPAR_ENDERECO)then
  begin
    Self.FbPodeLimparEndereco := False;
  end;
end;

procedure TfrmCadPessoaFisica.limparObjeto();
begin
  if (Assigned(Self.FoPessoaFisica)) then
  begin
    Self.FoPessoaFisica.limparObjeto();
  end
end;

procedure TfrmCadPessoaFisica.limparTela(poForm: TForm);
begin
  inherited;
  Self.FoEstado.codigo := NUMERO_INDEFINIDO;
  Self.FoEstado.nome := STRING_INDEFINIDO;

  Self.FoCidade.codigo := NUMERO_INDEFINIDO;
  Self.FoCidade.nome := STRING_INDEFINIDO;

  Self.FoBairro.codigo := NUMERO_INDEFINIDO;
  Self.FoBairro.nome := STRING_INDEFINIDO;

  Self.FoRua.codigo := NUMERO_INDEFINIDO;
  Self.FoRua.nome := STRING_INDEFINIDO;
  Self.FoRua.cep := STRING_INDEFINIDO;

  Self.FoMeioCaptacao.codigo := NUMERO_INDEFINIDO;
  Self.FoMeioCaptacao.nome := STRING_INDEFINIDO;
end;

procedure TfrmCadPessoaFisica.carregarObjeto();
begin
  if ((cdsDados.Active) and (Assigned(Self.FoPessoaFisica))) then
  begin
    Self.FoPessoaFisica.setCodigo(cdsDadosCODIGO.AsInteger);
    Self.FoPessoaFisica.setDataCadastro(cdsDadosDATA_CADASTRO.AsDateTime);
    Self.FoPessoaFisica.setNome(cdsDadosNOME.AsString);
    Self.FoPessoaFisica.setEmail(cdsDadosEMAIL.AsString);
    Self.FoPessoaFisica.setCPF(cdsDadosCPF.AsString);
    Self.FoPessoaFisica.setIdentidade(cdsDadosIDENTIDADE.AsString);
    Self.FoPessoaFisica.setDataNascimento(cdsDadosDATA_NASCIMENTO.AsDateTime);
    Self.FoPessoaFisica.setConjuge(cdsDadosCONJUGE.AsString);
    Self.FoPessoaFisica.setTelefoneResidencial(cdsDadosTELEFONE_RESIDENCIAL.AsString);
    Self.FoPessoaFisica.setTelefoneComercial(cdsDadosTELEFONE_COMERCIAL.AsString);
    Self.FoPessoaFisica.setTelefoneCelular(cdsDadosTELEFONE_CELULAR.AsString);
    Self.FoPessoaFisica.setFkMeioCaptacao(cdsDadosCOD_FK_MEIO_CAPTACAO.AsInteger);
    Self.FoPessoaFisica.setFkEstado(cdsDadosCOD_FK_ESTADO.AsInteger);
    Self.FoPessoaFisica.setFkCidade(cdsDadosCOD_FK_CIDADE.AsInteger);
    Self.FoPessoaFisica.setFkBairro(cdsDadosCOD_FK_BAIRRO.AsInteger);
    Self.FoPessoaFisica.setFkRua(cdsDadosCOD_FK_RUA.AsInteger);
    Self.FoPessoaFisica.setEnderecoCEP(cdsDadosENDERECO_CEP.AsString);
    Self.FoPessoaFisica.setEnderecoComplemento(cdsDadosENDERECO_COMPLEMENTO.AsString);
    Self.FoPessoaFisica.setHorarioLigacao(cdsDadosHORARIO_LIGACAO.AsString);
    Self.FoPessoaFisica.setHoraInicio(cdsDadosHORA_INICIO.AsDateTime);
    Self.FoPessoaFisica.setHoraFinal(cdsDadosHORA_FINAL.AsDateTime);
    Self.FoPessoaFisica.setExibeMeioCaptacao(False);
    Self.FoPessoaFisica.setExibeEstado(False);
    Self.FoPessoaFisica.setExibeCidade(False);
    Self.FoPessoaFisica.setExibeBairro(False);
    Self.FoPessoaFisica.setExibeRua(False);
  end
  else
  begin
    Self.FoFuncoes.gravaMensagemSistemaDiversos('procedure TfrmCadPessoaFisica.carregarObjeto();','Acesso Indispon�vel');
  end;
end;

procedure TfrmCadPessoaFisica.carregarComponentesApresentacao();
begin
  if(Assigned(Self.FoPessoaFisica))then
  begin
    if(Self.FoPessoaFisica.getCodigo <> NUMERO_INDEFINIDO)then
      plsEdCodigo.Text := IntToStr(Self.FoPessoaFisica.getCodigo)
    else
      plsEdCodigo.Clear;
    plsEdNome.Text := Self.FoPessoaFisica.getNome;
    plsMedCPF.Text := Self.FoPessoaFisica.getCPF;
    plsEdIdentidade.Text := Self.FoPessoaFisica.getIdentidade;
    if(Self.FoPessoaFisica.getDataNascimento <> NUMERO_INDEFINIDO)then
      plsMedDataNascimento.Text := DateToStr(Self.FoPessoaFisica.getDataNascimento)
    else
      plsMedDataNascimento.Clear;
    plsEdEmail.Text := Self.FoPessoaFisica.getEmail;
    plsEdConjuge.Text := Self.FoPessoaFisica.getConjuge;
    plsEdMeioCaptacao.Text := Self.FoPessoaFisica.getExibeMeioCaptacao;
    Self.FoMeioCaptacao.codigo := Self.FoPessoaFisica.getFkMeioCaptacao;
    Self.FoMeioCaptacao.nome := Self.FoPessoaFisica.getExibeMeioCaptacao;
    plsMedTelefoneResidencial.Text := Self.FoPessoaFisica.getTelefoneResidencial;
    plsMedTelefoneComercial.Text := Self.FoPessoaFisica.getTelefoneComercial;
    plsMedTelefoneCelular.Text := Self.FoPessoaFisica.getTelefoneCelular;
    plsEdEstado.Text := Self.FoPessoaFisica.getExibeEstado;
    Self.FoEstado.codigo := Self.FoPessoaFisica.getFkEstado;
    Self.FoEstado.nome := Self.FoPessoaFisica.getExibeEstado;
    plsEdCidade.Text := Self.FoPessoaFisica.getExibeCidade;
    Self.FoCidade.codigo := Self.FoPessoaFisica.getFkCidade;
    Self.FoCidade.nome := Self.FoPessoaFisica.getExibeCidade;
    plsEdBairro.Text := Self.FoPessoaFisica.getExibeBairro;
    Self.FoBairro.codigo := Self.FoPessoaFisica.getFkBairro;
    Self.FoBairro.nome := Self.FoPessoaFisica.getExibeBairro;
    plsEdRua.Text := Self.FoPessoaFisica.getExibeRua;
    Self.FoRua.codigo := Self.FoPessoaFisica.getFkRua;
    Self.FoRua.nome := Self.FoPessoaFisica.getExibeRua;
    plsMedCEP.Text := Self.FoPessoaFisica.getEnderecoCEP;
    plsMmEnderecoComplemento.Text := Self.FoPessoaFisica.getEnderecoComplemento;

    if(Self.FoPessoaFisica.getHorarioLigacao = PESSOA_FISICA_HORARIO_LIGACAO_MANHA)then
      plsCbBxPeriodo.ItemIndex := 0
    else if(Self.FoPessoaFisica.getHorarioLigacao = PESSOA_FISICA_HORARIO_LIGACAO_TARDE)then
      plsCbBxPeriodo.ItemIndex := 1
    else if(Self.FoPessoaFisica.getHorarioLigacao = PESSOA_FISICA_HORARIO_LIGACAO_NOITE)then
      plsCbBxPeriodo.ItemIndex := 2
    else if(Self.FoPessoaFisica.getHorarioLigacao = PESSOA_FISICA_HORARIO_LIGACAO_QUALQUER)then
      plsCbBxPeriodo.ItemIndex := 3
    else
      plsCbBxPeriodo.ItemIndex := -1;

    if(Self.FoPessoaFisica.getHoraInicio <> NUMERO_INDEFINIDO)then
      plsMedHoraLigacaoInicio.Text := TimeToStr(Self.FoPessoaFisica.getHoraInicio)
    else
      plsMedHoraLigacaoInicio.Clear;

    if(Self.FoPessoaFisica.getHoraFinal <> NUMERO_INDEFINIDO)then
      plsMedHoraLigacaoFinal.Text := TimeToStr(Self.FoPessoaFisica.getHoraFinal)
    else
      plsMedHoraLigacaoFinal.Clear;
  end;
end;

procedure TfrmCadPessoaFisica.selecionarTodosDados();
begin
  cdsDados.Filter := '';
  cdsDados.Filtered := False;
  cdsDados.Close;
  zQryDados.Filter := '';
  zQryDados.Filtered := False;
  zQryDados.Close;
  zQryDados.SQL.Clear;
  zQryDados.SQL.Add('SELECT * FROM agenc_pessoa_fisica ');
  zQryDados.SQL.Add(FoFuncoes.inserirCondicaoSelectNaoTrazerRegistroNulo());
  zQryDados.SQL.Add('ORDER BY nome');
  zQryDados.Open;
  cdsDados.Open;
  cdsDados.First;
end;

function TfrmCadPessoaFisica.verificarHouveAlteracoes(): boolean;
var
  sNome: String;
  sCPF: String;
  sIdentidade: String;
  dDataNascimento: TDate;
  sEmail: String;
  sConjuge: String;
  iMeioCaptacao: Integer;
  sTelefoneResidencial: String;
  sTelefoneComercial: String;
  sTelefoneCelular: String;
  iEstado: Integer;
  iCidade: Integer;
  iBairro: Integer;
  iRua: Integer;
  sEnderecoCEP: String;
  sEnderecoComplemento: String;
  sHorarioLigacao: String;
  tHoraInicio: TTime;
  tHoraFinal: TTime;
  bAlteracao: Boolean;
begin
  sNome := Trim(plsEdNome.Text);
  sCPF := Trim(plsMedCPF.Text);
  sIdentidade := Trim(plsEdIdentidade.Text);
  try
    dDataNascimento := StrToDate(plsMedDataNascimento.Text);
  except
    dDataNascimento := NUMERO_INDEFINIDO;
  end;
  sEmail := Trim(plsEdEmail.Text);
  sConjuge := Trim(plsEdConjuge.Text);
  iMeioCaptacao := Self.FoMeioCaptacao.codigo;
  sTelefoneResidencial := Trim(plsMedTelefoneResidencial.Text);
  sTelefoneComercial := Trim(plsMedTelefoneComercial.Text);
  sTelefoneCelular := Trim(plsMedTelefoneCelular.Text);
  iEstado := Self.FoEstado.codigo;
  iCidade := Self.FoCidade.codigo;
  iBairro := Self.FoBairro.codigo;
  iRua := Self.FoRua.codigo;
  sEnderecoCEP := Trim(plsMedCEP.Text);
  sEnderecoComplemento := Trim(plsMmEnderecoComplemento.Text);
  sHorarioLigacao := Trim(plsCbBxPeriodo.Text);
  try
    tHoraInicio := StrToTime(plsMedHoraLigacaoInicio.Text);
  except
    tHoraInicio := NUMERO_INDEFINIDO;
  end;
  try
    tHoraFinal := StrToTime(plsMedHoraLigacaoFinal.Text);
  except
    tHoraFinal := NUMERO_INDEFINIDO;
  end;

  try
    bAlteracao := Self.FoPessoaFisica.verificarDiferencaCadastro(iMeioCaptacao,
      iEstado,iCidade,iBairro,iRua,sEnderecoCEP,sEnderecoComplemento,sNome,sEmail,
      sCPF,sIdentidade,dDataNascimento,sConjuge,sTelefoneResidencial,
      sTelefoneComercial,sTelefoneCelular,sHorarioLigacao,tHoraInicio,tHoraFinal);
  except
    bAlteracao := True;
  end;
  Result := bAlteracao;
end;

function TfrmCadPessoaFisica.verificarCamposObrigatorios(): boolean;
var
  bRetorno: Boolean;
  compFoco: TWinControl;
  campos: string;
  sAux: string;
  tHoraInicio,tHoraFinal: TTime;
begin
  bRetorno := True;
  compFoco := nil;
  campos := '';
  sAux := '';

  if(Trim(plsEdNome.Text) = '')then
  begin
    if(campos <> '')then
      campos := campos + ', Nome'
    else
    begin
      campos := 'Nome';
      compFoco := plsEdNome;
    end;
  end;

  if(Self.FoMeioCaptacao.codigo = NUMERO_INDEFINIDO)then
  begin
    if(campos <> '')then
      campos := campos + ', Meio de Capta��o'
    else
    begin
      campos := 'Meio de Capta��o';
      compFoco := plsEdMeioCaptacao;
    end;
  end;

  if(Self.FoEstado.codigo = NUMERO_INDEFINIDO)then
  begin
    if(campos <> '')then
      campos := campos + ', Estado'
    else
    begin
      campos := 'Estado';
      compFoco := plsEdEstado;
    end;
  end;

  if(Self.FoCidade.codigo = NUMERO_INDEFINIDO)then
  begin
    if(campos <> '')then
      campos := campos + ', Cidade'
    else
    begin
      campos := 'Cidade';
      compFoco := plsEdCidade;
    end;
  end;

  if(campos <> '')then
  begin
    MessageDlg('Antes de salvar, verifique os campos: ' + campos + '.', mtInformation, [mbOK], 0);
    bRetorno := False;
  end;

  //verifica hor�rio da liga��o
  if(bRetorno)then
  begin
    try
      tHoraInicio := StrToTime(plsMedHoraLigacaoInicio.Text);
    except
      tHoraInicio := NUMERO_INDEFINIDO;
    end;
    try
      tHoraFinal := StrToTime(plsMedHoraLigacaoFinal.Text);
    except
      tHoraFinal := NUMERO_INDEFINIDO;
    end;
    if((tHoraInicio<>NUMERO_INDEFINIDO)and(tHoraFinal=NUMERO_INDEFINIDO))then
    begin
      MessageDlg('Verifique o hor�rio da liga��o.', mtInformation, [mbOK], 0);
      compFoco := plsMedHoraLigacaoFinal;
    end
    else if((tHoraInicio=NUMERO_INDEFINIDO)and(tHoraFinal<>NUMERO_INDEFINIDO))then
    begin
      MessageDlg('Verifique o hor�rio da liga��o.', mtInformation, [mbOK], 0);
      compFoco := plsMedHoraLigacaoInicio;
    end;
  end;

  //setar foco no componente que n�o foi validado
  if((not(bRetorno))and(compFoco is TWinControl))then
    Self.FoFuncoes.focarComponente(compFoco);

  Result := bRetorno;
end;

procedure TfrmCadPessoaFisica.visibilidade(pnVisib: Integer);
begin
  inherited;
  case pnVisib of
    OPC_TELA_INICIO: begin
                       plsEdCodigo.Enabled := True;
                       plsEdNome.Enabled := True;
                       plsMedCPF.Enabled := True;
                       plsEdIdentidade.Enabled := True;
                       plsMedDataNascimento.Enabled := True;
                       plsEdEmail.Enabled := False;
                       plsEdConjuge.Enabled := False;
                       grpBxTelefones.Enabled := False;
                       grpBxEndereco.Enabled := False;
                       grpBxHorarioLigacao.Enabled := False;
                       Self.FoFuncoes.focarComponente(plsEdCodigo);
                     end;
    OPC_NOVO:        begin
                       plsEdCodigo.Enabled := False;
                       plsEdNome.Enabled := True;
                       plsMedCPF.Enabled := True;
                       plsEdIdentidade.Enabled := True;
                       plsMedDataNascimento.Enabled := True;
                       plsEdEmail.Enabled := True;
                       plsEdConjuge.Enabled := True;
                       grpBxTelefones.Enabled := True;
                       grpBxEndereco.Enabled := True;
                       grpBxHorarioLigacao.Enabled := True;
                       Self.FoFuncoes.focarComponente(plsEdNome);
                     end;
    OPC_EDITAR:      begin
                       plsEdCodigo.Enabled := False;
                       plsEdNome.Enabled := True;
                       plsMedCPF.Enabled := True;
                       plsEdIdentidade.Enabled := True;
                       plsMedDataNascimento.Enabled := True;
                       plsEdEmail.Enabled := True;
                       plsEdConjuge.Enabled := True;
                       grpBxTelefones.Enabled := True;
                       grpBxEndereco.Enabled := True;
                       grpBxHorarioLigacao.Enabled := True;
                       Self.FoFuncoes.focarComponente(plsEdNome);
                     end;
    OPC_SALVAR:      begin

                     end;
    OPC_EXCLUIR:     begin

                     end;
    OPC_CANCELAR:    begin

                     end;
    OPC_PESQUISOU:   begin
                       plsEdCodigo.Enabled := True;
                       plsEdNome.Enabled := True;
                       plsMedCPF.Enabled := True;
                       plsEdIdentidade.Enabled := True;
                       plsMedDataNascimento.Enabled := True;
                       plsEdEmail.Enabled := False;
                       plsEdConjuge.Enabled := False;
                       grpBxTelefones.Enabled := False;
                       grpBxEndereco.Enabled := False;
                       grpBxHorarioLigacao.Enabled := False;
                     end;
  end; //fim - case
end;

function TfrmCadPessoaFisica.outrasValidacoesAntesSalvar(): Boolean;
var
  compFoco: TWinControl;
  sCPF: String;
  bRetorno: Boolean;
begin
  compFoco := nil;
  bRetorno := True;

  sCPF := Self.FoFuncoes.retirarCaracteres(plsMedCPF.Text,'.-');
  if(not(sCPF=STRING_INDEFINIDO))then
  begin
    if(not(Self.FoFuncoes.validarCPF(sCPF)))then
    begin
      MessageDlg('CPF inv�lido.',mtWarning,[mbOK],0);
      compFoco := plsMedCPF;
      bRetorno := False;
    end;
  end;

  if(bRetorno)then
  begin
    if(not(Self.FoFuncoes.retirarCaracteres(plsMedDataNascimento.Text,'/')=STRING_INDEFINIDO))then
    begin
      if(not(Self.FoFuncoes.validarData(plsMedDataNascimento.Text)))then
      begin
        MessageDlg('Data de nascimento inv�lida.',mtWarning,[mbOK],0);
        compFoco := plsMedDataNascimento;
        bRetorno := False;
      end;
    end;
  end;

  if(bRetorno)then
  begin
    if(Trim(plsEdEmail.Text)<>STRING_INDEFINIDO)then
    begin
      if(not(Self.FoFuncoes.validarEmail(plsEdEmail.Text)))then
      begin
        MessageDlg('Email inv�lido.',mtWarning,[mbOK],0);
        compFoco := plsEdEmail;
        bRetorno := False;
      end;
    end;
  end;

  if(bRetorno)then
  begin
    if(not(Self.FoFuncoes.retirarCaracteres(plsMedTelefoneResidencial.Text,'()-')=STRING_INDEFINIDO))then
    begin
      if(not(Self.FoFuncoes.validarTelefone(plsMedTelefoneResidencial.Text)))then
      begin
        MessageDlg('Telefone residencial inv�lido.',mtWarning,[mbOK],0);
        compFoco := plsMedTelefoneResidencial;
        bRetorno := False;
      end;
    end;
  end;

  if(bRetorno)then
  begin
    if(not(Self.FoFuncoes.retirarCaracteres(plsMedTelefoneComercial.Text,'()-')=STRING_INDEFINIDO))then
    begin
      if(not(Self.FoFuncoes.validarTelefone(plsMedTelefoneComercial.Text)))then
      begin
        MessageDlg('Telefone comercial inv�lido.',mtWarning,[mbOK],0);
        compFoco := plsMedTelefoneComercial;
        bRetorno := False;
      end;
    end;
  end;

  if(bRetorno)then
  begin
    if(not(Self.FoFuncoes.retirarCaracteres(plsMedTelefoneCelular.Text,'()-')=STRING_INDEFINIDO))then
    begin
      if(not(Self.FoFuncoes.validarTelefone(plsMedTelefoneCelular.Text)))then
      begin
        MessageDlg('Telefone celular inv�lido.',mtWarning,[mbOK],0);
        compFoco := plsMedTelefoneCelular;
        bRetorno := False;
      end;
    end;
  end;

  if(bRetorno)then
  begin
    if(not(Self.FoFuncoes.retirarCaracteres(plsMedHoraLigacaoInicio.Text,':')=STRING_INDEFINIDO))then
    begin
      if(not(Self.FoFuncoes.validarHora(plsMedHoraLigacaoInicio.Text)))then
      begin
        MessageDlg('Hor�rio de in�cio da liga��o inv�lida.',mtWarning,[mbOK],0);
        compFoco := plsMedHoraLigacaoInicio;
        bRetorno := False;
      end;
    end;
  end;

  if(bRetorno)then
  begin
    if(not(Self.FoFuncoes.retirarCaracteres(plsMedHoraLigacaoFinal.Text,':')=STRING_INDEFINIDO))then
    begin
      if(not(Self.FoFuncoes.validarHora(plsMedHoraLigacaoFinal.Text)))then
      begin
        MessageDlg('Hor�rio final da liga��o inv�lida.',mtWarning,[mbOK],0);
        compFoco := plsMedHoraLigacaoFinal;
        bRetorno := False;
      end;
    end;
  end;

  //setar foco no componente que n�o foi validado
  if((not(bRetorno))and(compFoco is TWinControl))then
    Self.FoFuncoes.focarComponente(compFoco);

  Result := bRetorno;
end;

procedure TfrmCadPessoaFisica.novo();
begin
  inherited;
  limparObjeto();
  limparTela(frmCadPessoaFisica);
  visibilidade(OPC_NOVO);
end;

function TfrmCadPessoaFisica.salvar(): boolean;
var
  bSalvou: boolean;

  sNome,sEmail,sCPF,sIdentidade: String;
  dtDataNascimento: TDate;
  sConjuge: String;
  nCodFK_MeioCaptacao: Integer;
  sTelefoneResidencial,sTelefoneComercial,sTelefoneCelular: String;
  nCodFK_Estado,nCodFK_Cidade,nCodFK_Bairro,nCodFK_Rua: Integer;
  sEnderecoCEP,sEnderecoComplemento,sHoraLigacao: String;
  tHoraLigacaoInicio,tHoraLigacaoFinal: TTime;

  procedure carregarValores();
  begin
    sNome := Trim(plsEdNome.Text);
    sEmail := Trim(plsEdEmail.Text);
    sCPF := Trim(plsMedCPF.Text);
    sIdentidade := Trim(plsEdIdentidade.Text);
    try
      dtDataNascimento := StrToDate(plsMedDataNascimento.Text);
    except
      dtDataNascimento := 0;
    end;
    sConjuge := Trim(plsEdConjuge.Text);

    if(Self.FoMeioCaptacao.codigo <> NUMERO_INDEFINIDO)then
      nCodFK_MeioCaptacao := Self.FoMeioCaptacao.codigo
    else
      nCodFK_MeioCaptacao := REGISTRO_NULO;

    if(Self.FoFuncoes.retirarCaracteres(plsMedTelefoneResidencial.Text,'()-')<>STRING_INDEFINIDO)then
      sTelefoneResidencial := plsMedTelefoneResidencial.Text
    else
      sTelefoneResidencial := STRING_INDEFINIDO;

    if(Self.FoFuncoes.retirarCaracteres(plsMedTelefoneComercial.Text,'()-')<>STRING_INDEFINIDO)then
      sTelefoneComercial := plsMedTelefoneComercial.Text
    else
      sTelefoneComercial := STRING_INDEFINIDO;

    if(Self.FoFuncoes.retirarCaracteres(plsMedTelefoneCelular.Text,'()-')<>STRING_INDEFINIDO)then
      sTelefoneCelular := plsMedTelefoneComercial.Text
    else
      sTelefoneCelular := STRING_INDEFINIDO;

    if(Self.FoEstado.codigo <> NUMERO_INDEFINIDO)then
      nCodFK_Estado := Self.FoEstado.codigo
    else
      nCodFK_Estado := REGISTRO_NULO;

    if(Self.FoCidade.codigo <> NUMERO_INDEFINIDO)then
      nCodFK_Cidade := Self.FoCidade.codigo
    else
      nCodFK_Cidade := REGISTRO_NULO;

    if(Self.FoBairro.codigo <> NUMERO_INDEFINIDO)then
      nCodFK_Bairro := Self.FoBairro.codigo
    else
      nCodFK_Bairro := REGISTRO_NULO;

    if(Self.FoRua.codigo <> NUMERO_INDEFINIDO)then
      nCodFK_Rua := Self.FoRua.codigo
    else
      nCodFK_Rua := REGISTRO_NULO;

    if(Self.FoFuncoes.retirarCaracteres(plsMedCEP.Text,'-')<>STRING_INDEFINIDO)then
      sEnderecoCEP := plsMedCEP.Text
    else
      sEnderecoCEP := STRING_INDEFINIDO;

    sEnderecoComplemento := Trim(plsMmEnderecoComplemento.Text);
    case plsCbBxPeriodo.ItemIndex of
      0: sHoraLigacao := PESSOA_FISICA_HORARIO_LIGACAO_MANHA;
      1: sHoraLigacao := PESSOA_FISICA_HORARIO_LIGACAO_TARDE;
      2: sHoraLigacao := PESSOA_FISICA_HORARIO_LIGACAO_NOITE;
      3: sHoraLigacao := PESSOA_FISICA_HORARIO_LIGACAO_QUALQUER;
    end;

    if(Self.FoFuncoes.validarHora(plsMedHoraLigacaoInicio.Text))then
      tHoraLigacaoInicio := StrToTime(plsMedHoraLigacaoInicio.Text)
    else
      tHoraLigacaoInicio := NUMERO_INDEFINIDO;

    if(Self.FoFuncoes.validarHora(plsMedHoraLigacaoFinal.Text))then
      tHoraLigacaoFinal := StrToTime(plsMedHoraLigacaoFinal.Text)
    else
      tHoraLigacaoFinal := NUMERO_INDEFINIDO;
  end;

  //limpa par�metro nulos - para o insert e update
  procedure limparParametrosNulos();
  begin
    if(Self.FoFuncoes.verificaCPF_EhVazio(sCPF))then
      zQryDados.ParamByName('cpf').Clear;
    if(dtDataNascimento = NUMERO_INDEFINIDO)then
      zQryDados.ParamByName('dat_nas').Clear;
    if(Self.FoFuncoes.verificaTelefone_EhVazio(sTelefoneResidencial))then
      zQryDados.ParamByName('tel_res').Clear;
    if(Self.FoFuncoes.verificaTelefone_EhVazio(sTelefoneComercial))then
      zQryDados.ParamByName('tel_com').Clear;
    if(Self.FoFuncoes.verificaTelefone_EhVazio(sTelefoneCelular))then
      zQryDados.ParamByName('tel_cel').Clear;
    if(tHoraLigacaoInicio = NUMERO_INDEFINIDO)then
      zQryDados.ParamByName('hor_ini').Clear;
    if(tHoraLigacaoFinal = NUMERO_INDEFINIDO)then
      zQryDados.ParamByName('hor_fin').Clear;
  end;

begin
  bSalvou := False;

  carregarValores();

  if(Self.FiFuncaoRegistro in [FUNCAO_REGISTRO_EDITAR, FUNCAO_REGISTRO_NOVO]) then
  begin
    inherited;
    if (Self.FiFuncaoRegistro = FUNCAO_REGISTRO_EDITAR) then
    begin
      try
        DM.ZConnection.StartTransaction;
        zQryDados.Close;
        zQryDados.SQL.Clear;
        zQryDados.SQL.Add('UPDATE agenc_pessoa_fisica SET nome=:nom,email=:ema,cpf=:cpf, ');
        zQryDados.SQL.Add('identidade=:ide,data_nascimento=:dat_nas,conjuge=:con, ');
        zQryDados.SQL.Add('cod_fk_meio_captacao=:cod_fk_mei_cap,');
        zQryDados.SQL.Add('telefone_residencial=:tel_res,telefone_comercial=:tel_com, ');
        zQryDados.SQL.Add('telefone_celular=:tel_cel,cod_fk_estado=:cod_fk_est, ');
        zQryDados.SQL.Add('cod_fk_cidade=:cod_fk_cid,cod_fk_bairro=:cod_fk_bai, ');
        zQryDados.SQL.Add('cod_fk_rua=:cod_fk_rua,endereco_cep=:end_cep, ');
        zQryDados.SQL.Add('endereco_complemento=:end_com,horario_ligacao=:hor_lig, ');
        zQryDados.SQL.Add('hora_inicio=:hor_ini,hora_final=:hor_fin ');
        zQryDados.SQL.Add('WHERE codigo=:cod');
        zQryDados.ParamByName('nom').AsString := sNome;
        zQryDados.ParamByName('ema').AsString := sEmail;
        zQryDados.ParamByName('cpf').AsString := sCPF;
        zQryDados.ParamByName('ide').AsString := sIdentidade;
        zQryDados.ParamByName('dat_nas').AsDate := dtDataNascimento;
        zQryDados.ParamByName('con').AsString := sConjuge;
        zQryDados.ParamByName('cod_fk_mei_cap').AsInteger := nCodFK_MeioCaptacao;
        zQryDados.ParamByName('tel_res').AsString := sTelefoneResidencial;
        zQryDados.ParamByName('tel_com').AsString := sTelefoneComercial;
        zQryDados.ParamByName('tel_cel').AsString := sTelefoneCelular;
        zQryDados.ParamByName('cod_fk_est').AsInteger := nCodFK_Estado;
        zQryDados.ParamByName('cod_fk_cid').AsInteger := nCodFK_Cidade;
        zQryDados.ParamByName('cod_fk_bai').AsInteger := nCodFK_Bairro;
        zQryDados.ParamByName('cod_fk_rua').AsInteger := nCodFK_Rua;
        zQryDados.ParamByName('end_cep').AsString := sEnderecoCEP;
        zQryDados.ParamByName('end_com').AsString := sEnderecoComplemento;
        zQryDados.ParamByName('hor_lig').AsString := sHoraLigacao;
        zQryDados.ParamByName('hor_ini').AsTime := tHoraLigacaoInicio;
        zQryDados.ParamByName('hor_fin').AsTime := tHoraLigacaoFinal;
        zQryDados.ParamByName('cod').AsInteger := Self.FoPessoaFisica.getCodigo;
        limparParametrosNulos();
        zQryDados.ExecSQL();
        DM.ZConnection.Commit;
        bSalvou := True;
      except
        DM.ZConnection.Rollback;
      end;

    end
    else if (Self.FiFuncaoRegistro = FUNCAO_REGISTRO_NOVO) then
    begin
      try
        DM.ZConnection.StartTransaction;
        zQryDados.Close;
        zQryDados.SQL.Clear;
        zQryDados.SQL.Add('INSERT INTO agenc_pessoa_fisica (nome,email,cpf,');
        zQryDados.SQL.Add('identidade,data_nascimento,conjuge,cod_fk_meio_captacao,');
        zQryDados.SQL.Add('telefone_residencial,telefone_comercial,telefone_celular,');
        zQryDados.SQL.Add('cod_fk_estado,cod_fk_cidade,cod_fk_bairro,cod_fk_rua,');
        zQryDados.SQL.Add('endereco_cep,endereco_complemento,horario_ligacao,');
        zQryDados.SQL.Add('hora_inicio,hora_final) ');
        zQryDados.SQL.Add('VALUES (:nom,:ema,:cpf,:ide,:dat_nas,:con,:cod_fk_mei_cap,');
        zQryDados.SQL.Add(':tel_res,:tel_com,:tel_cel,:cod_fk_est,:cod_fk_cid,:cod_fk_bai,');
        zQryDados.SQL.Add(':cod_fk_rua,:end_cep,:end_com,:hor_lig,:hor_ini,:hor_fin)');
        zQryDados.ParamByName('nom').AsString := sNome;
        zQryDados.ParamByName('ema').AsString := sEmail;
        zQryDados.ParamByName('cpf').AsString := sCPF;
        zQryDados.ParamByName('ide').AsString := sIdentidade;
        zQryDados.ParamByName('dat_nas').AsDate := dtDataNascimento;
        zQryDados.ParamByName('con').AsString := sConjuge;
        zQryDados.ParamByName('cod_fk_mei_cap').AsInteger := nCodFK_MeioCaptacao;
        zQryDados.ParamByName('tel_res').AsString := sTelefoneResidencial;
        zQryDados.ParamByName('tel_com').AsString := sTelefoneComercial;
        zQryDados.ParamByName('tel_cel').AsString := sTelefoneCelular;
        zQryDados.ParamByName('cod_fk_est').AsInteger := nCodFK_Estado;
        zQryDados.ParamByName('cod_fk_cid').AsInteger := nCodFK_Cidade;
        zQryDados.ParamByName('cod_fk_bai').AsInteger := nCodFK_Bairro;
        zQryDados.ParamByName('cod_fk_rua').AsInteger := nCodFK_Rua;
        zQryDados.ParamByName('end_cep').AsString := sEnderecoCEP;
        zQryDados.ParamByName('end_com').AsString := sEnderecoComplemento;
        zQryDados.ParamByName('hor_lig').AsString := sHoraLigacao;
        zQryDados.ParamByName('hor_ini').AsTime := tHoraLigacaoInicio;
        zQryDados.ParamByName('hor_fin').AsTime := tHoraLigacaoFinal;
        limparParametrosNulos();
        zQryDados.ExecSQL();
        DM.ZConnection.Commit;
        bSalvou := True;
      except
        DM.ZConnection.Rollback;
      end;
    end;
  end;

  if(bSalvou)then
    Self.verificarInseriuChamadaTelaExterna();

  if(bSalvou)and(not(Self.FbChamadaExternaInserirRegistro))and
    (not(Self.FbChamadaExternaEditarRegistro))then
      Self.FoPesquisa.passarParametro(PRM_SELECIONAR_TODOS_REGISTROS,null);

  Result := bSalvou;
end;

procedure TfrmCadPessoaFisica.verificarInseriuChamadaTelaExterna();
var
  nCodigo: Integer;
  sNome: String;
  vParametros: Variant;
begin
  nCodigo := NUMERO_INDEFINIDO;
  sNome := STRING_INDEFINIDO;

  if(Self.FbChamadaExternaInserirRegistro)then
  begin
    DM.zQryAgencPessoaFisica.Close;
    DM.zQryAgencPessoaFisica.SQL.Clear;
    DM.zQryAgencPessoaFisica.SQL.Add('SELECT * FROM agenc_pessoa_fisica ORDER BY codigo DESC ROWS 1');
    DM.zQryAgencPessoaFisica.Open;
    if(DM.zQryAgencPessoaFisica.RecordCount = 1)then
      nCodigo := DM.zQryAgencPessoaFisicaCODIGO.AsInteger;

    if(Self.FiTelaExternaChamouInserirRegistro = FORM_SELECIONA_REGISTRO_PESSOA_FISICA)then
    begin
      frmSelecionaRegistroPessoaFisica.passarParametro(PRM_INSERIU_REGISTRO_AO_ESTAR_SELECIONANDO,nCodigo);
      Self.Close;
      Exit;
    end;
  end

  else if(Self.FbChamadaExternaEditarRegistro)then
  begin
    DM.zQryAgencPessoaFisica.Close;
    DM.zQryAgencPessoaFisica.SQL.Clear;
    DM.zQryAgencPessoaFisica.SQL.Add('SELECT * FROM agenc_pessoa_fisica ');
    DM.zQryAgencPessoaFisica.SQL.Add('WHERE codigo=:codigo');
    DM.zQryAgencPessoaFisica.ParamByName('codigo').AsInteger := Self.FoPessoaFisica.getCodigo;
    DM.zQryAgencPessoaFisica.Open;
    if(DM.zQryAgencPessoaFisica.RecordCount = 1)then
    begin
      nCodigo := DM.zQryAgencPessoaFisicaCODIGO.AsInteger;
      sNome := DM.zQryAgencPessoaFisicaNOME.AsString;
    end;

    if(Self.FiTelaExternaChamouEditarRegistro = FORM_CAD_AGENCIAMENTOS)then
    begin
      vParametros := VarArrayCreate([0,2], varVariant);
      vParametros[0] := nCodigo;
      vParametros[1] := sNome;
      vParametros[2] := EDITOU_PESSOA;
      frmCadAgenciamento.passarParametro(PRM_EDITOU_REGISTRO_AGENCIAMENTO_STAND_BY,vParametros);
      Self.Close;
      Exit;
    end;
  end;
end;

function TfrmCadPessoaFisica.excluir(): Boolean;
var
  bDeletou: boolean;
begin
  bDeletou := False;

  try
    DM.ZConnection.StartTransaction;
    zQryDados.Close;
    zQryDados.SQL.Clear;
    zQryDados.SQL.Add('DELETE FROM agenc_pessoa_fisica WHERE codigo=:cod');
    zQryDados.ParamByName('cod').AsInteger := Self.FoPessoaFisica.getCodigo();
    zQryDados.ExecSQL();
    DM.ZConnection.Commit;
    bDeletou := True;
  except
    DM.ZConnection.Rollback;
  end;

  if(bDeletou)then
    Self.FoPesquisa.passarParametro(PRM_SELECIONAR_TODOS_REGISTROS,null);

  Result := bDeletou;
end;

function TfrmCadPessoaFisica.verificarRegistroJaExiste(): boolean;
var
  bRetorno: Boolean;
begin
  bRetorno := False;

  //nome,cpf,estado e cidade iguais
  zQryDados.Close;
  zQryDados.SQL.Clear;
  zQryDados.SQL.Add('SELECT * FROM agenc_pessoa_fisica WHERE nome=:nom AND cpf=:cpf ');
  zQryDados.SQL.Add('AND cod_fk_estado=:cod_fk_est AND cod_fk_cidade=:cod_fk_cid');
  //se estiver editando, pode salvar com os mesmos dados
  if(Self.FoPessoaFisica.getCodigo <> NUMERO_INDEFINIDO)then
  begin
    zQryDados.SQL.Add(' AND codigo <> :cod');
    zQryDados.ParamByName('cod').AsInteger := Self.FoPessoaFisica.getCodigo;
  end;
  zQryDados.ParamByName('nom').AsString := Trim(plsEdNome.Text);
  zQryDados.ParamByName('cpf').AsString := Trim(plsMedCPF.Text);
  zQryDados.ParamByName('cod_fk_est').AsInteger := Self.FoEstado.codigo;
  zQryDados.ParamByName('cod_fk_cid').AsInteger := Self.FoCidade.codigo;
  zQryDados.Open;

  if(zQryDados.RecordCount <> 0)then
  begin
    bRetorno := True;
    MessageDlg('Pessoa F�sica j� cadastrada.', mtWarning, [mbOK], 0);
  end
  else
  begin
    //cpf igual
    if(Self.FoFuncoes.retirarCaracteres(plsMedCPF.Text,'.-')<>STRING_INDEFINIDO)then
    begin
      if(Self.FoFuncoes.validarCPF(plsMedCPF.Text))then
      begin
        zQryDados.Close;
        zQryDados.SQL.Clear;
        zQryDados.SQL.Add('SELECT * FROM agenc_pessoa_fisica WHERE cpf=:cpf ');
        //se estiver editando, pode salvar com os mesmos dados
        if(Self.FoPessoaFisica.getCodigo <> NUMERO_INDEFINIDO)then
        begin
          zQryDados.SQL.Add(' AND codigo <> :cod');
          zQryDados.ParamByName('cod').AsInteger := Self.FoPessoaFisica.getCodigo;
        end;
        zQryDados.ParamByName('cpf').AsString := Trim(plsMedCPF.Text);
        zQryDados.Open;

        if(zQryDados.RecordCount <> 0)then
        begin
          bRetorno := True;
          MessageDlg('Pessoa F�sica com este CPF j� cadastrado.', mtWarning, [mbOK], 0);
        end;
      end;
    end;
  end;

  Result := bRetorno;
end;

function TfrmCadPessoaFisica.verificarPodeDeletar(): boolean;
var
  bPodeDeletar: Boolean;
begin
  bPodeDeletar := True;

  Result := bPodeDeletar;
end;

procedure TfrmCadPessoaFisica.realizouPesquisa(piCodigo: Integer);
begin
  if(cdsDados.Locate('codigo',piCodigo,[]))then
  begin
    visibilidade(OPC_PESQUISOU); //poderia ser na tela pai
  end;
end;

//limpa os campos do endere�o, a partir daquele que alterou
procedure TfrmCadPessoaFisica.limparEndereco(iEnderecoChamou: String);
  procedure limparCidade();
  begin
    plsEdCidade.Clear;
    Self.FoCidade.codigo := NUMERO_INDEFINIDO;
    Self.FoCidade.nome := STRING_INDEFINIDO;
  end;
  procedure limparBairro();
  begin
    plsEdBairro.Clear;
    Self.FoBairro.codigo := NUMERO_INDEFINIDO;
    Self.FoBairro.nome := STRING_INDEFINIDO;
  end;
  procedure limparRua();
  begin
    plsEdRua.Clear;
    Self.FoRua.codigo := NUMERO_INDEFINIDO;
    Self.FoRua.nome := STRING_INDEFINIDO;
    Self.FoRua.cep := STRING_INDEFINIDO;
  end;

begin
  if(Self.FbPodeLimparEndereco)then
  begin
    if(iEnderecoChamou = 'ESTADO')then
    begin
      limparCidade();
      limparBairro();
      limparRua();
    end
    else if(iEnderecoChamou = 'CIDADE')then
    begin
      limparBairro();
      limparRua();
    end
    else if(iEnderecoChamou = 'BAIRRO')then
    begin
      limparRua();
    end;
  end;

  Self.FbPodeLimparEndereco := True;
end;

//valida se o acesso ao endere�o pode ser realizado
function TfrmCadPessoaFisica.validarAcessoEndereco(iEnderecoChamou: String): boolean;
var
  bAcesso: Boolean;
begin
  bAcesso := False;

  if(iEnderecoChamou = 'CIDADE')then
  begin
    if(Self.FoEstado.codigo <> NUMERO_INDEFINIDO)then
      bAcesso := True;
  end
  else if(iEnderecoChamou = 'BAIRRO')then
  begin
    if(Self.FoEstado.codigo <> NUMERO_INDEFINIDO)and(Self.FoCidade.codigo <> NUMERO_INDEFINIDO)then
      bAcesso := True;
  end
  else if(iEnderecoChamou = 'RUA')then
  begin
    if(Self.FoEstado.codigo <> NUMERO_INDEFINIDO)and(Self.FoCidade.codigo <> NUMERO_INDEFINIDO)and
      (Self.FoBairro.codigo <> NUMERO_INDEFINIDO)then
      bAcesso := True;
  end;

  Result := bAcesso;
end;

procedure TfrmCadPessoaFisica.editarRegistroChamadaExterna();

  procedure pesquisarRegistro();
  begin
    cdsDados.Close;
    zQryDados.Close;
    zQryDados.SQL.Clear;
    zQryDados.SQL.Add('SELECT * FROM agenc_pessoa_fisica WHERE codigo=:cod');
    zQryDados.ParamByName('cod').AsInteger := Self.FnCodigoEditar;
    zQryDados.Open;
    cdsDados.Open;
  end;

begin
  pesquisarRegistro();
  if(cdsDados.Active)and(cdsDados.RecordCount>0)then
  begin
    Self.carregarObjeto();
    Self.carregarComponentesApresentacao();
    Self.FiFuncaoRegistro := FUNCAO_REGISTRO_EDITAR;
    tlBtnNovo.Enabled := False;
    tlBtnEditar.Enabled := False;
    tlBtnSalvar.Enabled := True;
    tlBtnExcluir.Enabled := False;
    tlBtnCancelar.Enabled := True;
  end
  else
  begin
    MessageDlg('Erro ao pesquisar por pessoa f�sica ao editar agenciamento stand by.', mtWarning, [mbOK], 0);
  end;
end;

(* fim - procedimentos de controle *)

procedure TfrmCadPessoaFisica.FormCreate(Sender: TObject);
begin
  inherited;
  Self.FoPessoaFisica := TObjPessoaFisica.Create;
  Self.FnCodigoEditar := NUMERO_INDEFINIDO;
  Self.FbPodeLimparEndereco := True;
end;

procedure TfrmCadPessoaFisica.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(Self.FoPessoaFisica);
end;

procedure TfrmCadPessoaFisica.tlBtnNovoClick(Sender: TObject);
begin
  inherited;
  //Self.novo;
end;

procedure TfrmCadPessoaFisica.tlBtnEditarClick(Sender: TObject);
begin
  inherited;
  // visibilidade(OPC_EDITAR);
end;

procedure TfrmCadPessoaFisica.tlBtnSalvarClick(Sender: TObject);
begin
  inherited;
  // Self.salvar();
end;

procedure TfrmCadPessoaFisica.tlBtnExcluirClick(Sender: TObject);
begin
  inherited;
  // Self.excluir();
end;

procedure TfrmCadPessoaFisica.tlBtnCancelarClick(Sender: TObject);
begin
  inherited;
  // visibilidade(OPC_CANCELAR);
end;

procedure TfrmCadPessoaFisica.plsEdCodigoExit(Sender: TObject);
begin
  inherited;
  if(Assigned(Self.FoPesquisa))then
    Self.FoPesquisa.Hide;
end;

procedure TfrmCadPessoaFisica.plsEdNomeExit(Sender: TObject);
begin
  inherited;
  if(Assigned(Self.FoPesquisa))then
    Self.FoPesquisa.Hide;
end;

procedure TfrmCadPessoaFisica.plsMedCPFExit(Sender: TObject);
begin
  inherited;
  if(Assigned(Self.FoPesquisa))then
    Self.FoPesquisa.Hide;
end;

procedure TfrmCadPessoaFisica.plsEdIdentidadeExit(Sender: TObject);
begin
  inherited;
  if(Assigned(Self.FoPesquisa))then
    Self.FoPesquisa.Hide;
end;

procedure TfrmCadPessoaFisica.spBtnBuscaEstadoClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TfrmSelecionaRegistroEstado, frmSelecionaRegistroEstado);
    frmSelecionaRegistroEstado.passarParametro(PRM_TELA_CHAMOU, FORM_CAD_PESSOA_FISICA);
    frmSelecionaRegistroEstado.ShowModal;
  finally
    if(FoEstado.codigo <> NUMERO_INDEFINIDO)then
    begin
      plsEdEstado.Text := FoEstado.nome;
      limparEndereco('ESTADO');
      Self.FoFuncoes.focarComponente(plsEdCidade);
    end;
    FreeAndNil(frmSelecionaRegistroEstado);
  end;
end;

procedure TfrmCadPessoaFisica.spBtnBuscaCidadeClick(Sender: TObject);
begin
  inherited;
  if not(validarAcessoEndereco('CIDADE'))then
    MessageDlg('Um estado deve estar selecionado.', mtInformation, [mbOK], 0)
  else
  begin
    try
      Application.CreateForm(TfrmSelecionaRegistroCidade, frmSelecionaRegistroCidade);
      frmSelecionaRegistroCidade.passarParametro(PRM_TELA_CHAMOU, FORM_CAD_PESSOA_FISICA);
      frmSelecionaRegistroCidade.passarParametro('FK_COD_ESTADO', Self.FoEstado.codigo);
      frmSelecionaRegistroCidade.ShowModal;
    finally
      if(FoCidade.codigo <> NUMERO_INDEFINIDO)then
      begin
        plsEdCidade.Text := FoCidade.nome;
        limparEndereco('CIDADE');
        Self.FoFuncoes.focarComponente(plsEdBairro);
      end;
      FreeAndNil(frmSelecionaRegistroCidade);
    end;
  end;
end;

procedure TfrmCadPessoaFisica.spBtnBuscaBairroClick(Sender: TObject);
begin
  inherited;
  if not(validarAcessoEndereco('BAIRRO'))then
    MessageDlg('Uma cidade deve estar selecionada.', mtInformation, [mbOK], 0)
  else
  begin
    try
      Application.CreateForm(TfrmSelecionaRegistroBairro, frmSelecionaRegistroBairro);
      frmSelecionaRegistroBairro.passarParametro(PRM_TELA_CHAMOU, FORM_CAD_PESSOA_FISICA);
      frmSelecionaRegistroBairro.passarParametro('FK_COD_CIDADE', Self.FoCidade.codigo);
      frmSelecionaRegistroBairro.ShowModal;
    finally
      if(FoBairro.codigo <> NUMERO_INDEFINIDO)then
      begin
        plsEdBairro.Text := FoBairro.nome;
        limparEndereco('BAIRRO');
        Self.FoFuncoes.focarComponente(plsEdRua);
      end;
      FreeAndNil(frmSelecionaRegistroBairro);
    end;
  end;
end;

procedure TfrmCadPessoaFisica.spBtnBuscaRuaClick(Sender: TObject);
begin
  inherited;
  if not(validarAcessoEndereco('RUA'))then
    MessageDlg('Um bairro deve estar selecionado.', mtInformation, [mbOK], 0)
  else
  begin
    try
      Application.CreateForm(TfrmSelecionaRegistroRua, frmSelecionaRegistroRua);
      frmSelecionaRegistroRua.passarParametro(PRM_TELA_CHAMOU, FORM_CAD_PESSOA_FISICA);
      frmSelecionaRegistroRua.passarParametro('FK_COD_BAIRRO', Self.FoBairro.codigo);
      frmSelecionaRegistroRua.ShowModal;
    finally
      if(FoRua.codigo <> NUMERO_INDEFINIDO)then
      begin
        plsEdRua.Text := Self.FoRua.nome;
        plsMedCEP.Text := Self.FoRua.cep;
        Self.FoFuncoes.focarComponente(plsMmEnderecoComplemento);
      end;
      FreeAndNil(frmSelecionaRegistroRua);
    end;
  end;
end;

procedure TfrmCadPessoaFisica.plsEdEstadoClick(Sender: TObject);
begin
  inherited;
  spBtnBuscaEstadoClick(Self);
end;

procedure TfrmCadPessoaFisica.plsEdCidadeClick(Sender: TObject);
begin
  inherited;
  spBtnBuscaCidadeClick(Self);
end;

procedure TfrmCadPessoaFisica.plsEdBairroClick(Sender: TObject);
begin
  inherited;
  spBtnBuscaBairroClick(Self);
end;

procedure TfrmCadPessoaFisica.plsEdRuaClick(Sender: TObject);
begin
  inherited;
  spBtnBuscaRuaClick(Self);
end;

procedure TfrmCadPessoaFisica.plsEdCodigoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  sValor: string;
  vParametros: Variant;
begin
  inherited;
  if(Self.FoFuncoes.verificarCaracterPertenceConjuntoTeclasAceitas(Key,[numeros],False))then
  begin
    if (Self.FbPodePesquisar)and(not(Self.FbPesquisouKeyEnter)) then
    begin
      if(Key=27)then //esc
        begin
          if(Assigned(Self.FoPesquisa))then
            Self.FoPesquisa.Hide;
        end
      else
      begin
        sValor := plsEdCodigo.Text;
        vParametros := VarArrayCreate([0,2],varVariant);
        {vParametros[0] = par�metro do campo da pesquisa
        vParametros[1] = campo da pesquisa
        vParametros[1] = valor da pesquisa
        }
        vParametros[0] := PRM_PESQUISA_CODIGO;
        vParametros[1] := 'CC_CODIGO';
        vParametros[2] := sValor;
        Self.FoPesquisa.passarParametro(PRM_PESQUISAR_REGISTRO, vParametros);
        Self.FoPesquisa.Show;
      end;
    end;
  end;

  Self.FbPesquisouKeyEnter := False;
end;

procedure TfrmCadPessoaFisica.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if(Key=#27)then
    Self.Close;
end;

procedure TfrmCadPessoaFisica.plsEdEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if(Key=#13)then
    spBtnBuscaEstadoClick(Self);
end;

procedure TfrmCadPessoaFisica.plsEdCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if(Key=#13)then
    spBtnBuscaCidadeClick(Self);
end;

procedure TfrmCadPessoaFisica.plsEdBairroKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if(Key=#13)then
    spBtnBuscaBairroClick(Self);
end;

procedure TfrmCadPessoaFisica.plsEdRuaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if(Key=#13)then
    spBtnBuscaRuaClick(Self);
end;

procedure TfrmCadPessoaFisica.plsEdNomeKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  sValor: string;
  vParametros: Variant;
begin
  inherited;
  if(Self.FoFuncoes.verificarCaracterPertenceConjuntoTeclasAceitas(Key,[todas],False))then
  begin
    if (Self.FbPodePesquisar)and(not(Self.FbPesquisouKeyEnter)) then
    begin
      if(Key=27)then //esc
      begin
        if(Assigned(Self.FoPesquisa))then
          Self.FoPesquisa.Hide;
      end
      else
      begin
        sValor := plsEdNome.Text;
        vParametros := VarArrayCreate([0,2],varVariant);
        {vParametros[0] = par�metro do campo da pesquisa
        vParametros[1] = campo da pesquisa
        vParametros[1] = valor da pesquisa
         }
        vParametros[0] := PRM_PESQUISA_NOME;
        vParametros[1] := 'NOME';
        vParametros[2] := sValor;
        Self.FoPesquisa.passarParametro(PRM_PESQUISAR_REGISTRO, vParametros);
        Self.FoPesquisa.Show;
      end;
    end;
  end;

  Self.FbPesquisouKeyEnter := False;
end;

procedure TfrmCadPessoaFisica.plsMedCPFKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  sValor: string;
  vParametros: Variant;
begin
  inherited;
  if(Self.FoFuncoes.verificarCaracterPertenceConjuntoTeclasAceitas(Key,[numeros],False))then
  begin
    if (Self.FbPodePesquisar)and(not(Self.FbPesquisouKeyEnter)) then
    begin
      if(Key=27)then //esc
      begin
        if(Assigned(Self.FoPesquisa))then
          Self.FoPesquisa.Hide;
      end
      else
      begin
        sValor := Self.FoFuncoes.retirarCaracteres(plsMedCPF.Text,'.-');
        sValor := Self.FoFuncoes.formatarCPF(sValor);
        vParametros := VarArrayCreate([0,2],varVariant);
        {vParametros[0] = par�metro do campo da pesquisa
        vParametros[1] = campo da pesquisa
        vParametros[1] = valor da pesquisa
         }
        vParametros[0] := PRM_PESQUISA_CPF;
        vParametros[1] := 'CPF';
        vParametros[2] := sValor;
        Self.FoPesquisa.passarParametro(PRM_PESQUISAR_REGISTRO, vParametros);
        Self.FoPesquisa.Show;
      end;
    end;
  end;

  Self.FbPesquisouKeyEnter := False;
end;

procedure TfrmCadPessoaFisica.plsEdIdentidadeKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  sValor: string;
  vParametros: Variant;
begin
  inherited;
  if(Self.FoFuncoes.verificarCaracterPertenceConjuntoTeclasAceitas(Key,[todas],False))then
  begin
    if (Self.FbPodePesquisar)and(not(Self.FbPesquisouKeyEnter)) then
    begin
      if(Key=27)then //esc
      begin
        if(Assigned(Self.FoPesquisa))then
          Self.FoPesquisa.Hide;
      end
      else
      begin
        sValor := plsEdIdentidade.Text;
        vParametros := VarArrayCreate([0,2],varVariant);
        {vParametros[0] = par�metro do campo da pesquisa
        vParametros[1] = campo da pesquisa
        vParametros[1] = valor da pesquisa
         }
        vParametros[0] := PRM_PESQUISA_IDENTIDADE;
        vParametros[1] := 'IDENTIDADE';
        vParametros[2] := sValor;
        Self.FoPesquisa.passarParametro(PRM_PESQUISAR_REGISTRO, vParametros);
        Self.FoPesquisa.Show;
      end;
    end;
  end;

  Self.FbPesquisouKeyEnter := False;
end;

procedure TfrmCadPessoaFisica.spBtnBuscaMeioCaptacaoClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TfrmSelecionaRegistroMeioCaptacao, frmSelecionaRegistroMeioCaptacao);
    frmSelecionaRegistroMeioCaptacao.passarParametro(PRM_INICIAR_TELA, null);
    frmSelecionaRegistroMeioCaptacao.passarParametro(PRM_TELA_CHAMOU, FORM_CAD_PESSOA_FISICA);
    frmSelecionaRegistroMeioCaptacao.ShowModal;
  finally
    if(Self.FoMeioCaptacao.codigo <> NUMERO_INDEFINIDO)then
    begin
      plsEdMeioCaptacao.Text := Self.FoMeioCaptacao.nome;
      Self.FoFuncoes.focarComponente(plsMedTelefoneResidencial);
    end;
    FreeAndNil(frmSelecionaRegistroMeioCaptacao);
  end;
end;

procedure TfrmCadPessoaFisica.plsEdMeioCaptacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if(Key=#13)then
    spBtnBuscaMeioCaptacaoClick(Self);
end;

procedure TfrmCadPessoaFisica.plsEdMeioCaptacaoClick(Sender: TObject);
begin
  inherited;
  spBtnBuscaMeioCaptacaoClick(Self);
end;

procedure TfrmCadPessoaFisica.FormShow(Sender: TObject);
begin
  if(FbChamadaExternaEditarRegistro)then
  begin
    Self.editarRegistroChamadaExterna();
  end         
  else
    inherited;
end;

end.

