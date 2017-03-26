unit unCadImoveis;

{
  c�digos do campo status:
    1: im�vel cadastrado - aberto
    2: vendido
}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unCadastroBasico, DBClient, Provider, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, AppEvnts, ImgList, ComCtrls, ToolWin,
  StdCtrls, plsMemo, plsComboBox, Buttons, Mask, plsTMaskEdit, plsEdit, unObjImovel,
  ExtCtrls, unConjuntoDadosTipoImovel,
  unConjuntoDadosEstado, unConjuntoDadosCidade, unConjuntoDadosBairro,
  unConjuntoDadosRua;

  type
    TTipoImovel = record
      codigo: Integer;
      nome: string[100];
    end;

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
  TfrmCadImoveis = class(TfrmCadastroBasico)
    lblCodigo: TLabel;
    plsEdCodigo: TPlsEdit;
    lblDescricao: TLabel;
    plsMmDescricao: TPlsMemo;
    grpBxEndereco: TGroupBox;
    lblCEP: TLabel;
    lblComplemento: TLabel;
    plsMedEnderecoCEP: TPlsMaskEdit;
    plsMmEnderecoComplemento: TPlsMemo;
    pnlTipoImovel: TPanel;
    lblTipoImovel: TLabel;
    plsEdTipoImovel: TPlsEdit;
    spBtnBuscaTipoImovel: TSpeedButton;
    pnlSituacaoValor: TPanel;
    plsEdValor: TPlsEdit;
    lblSituacao: TLabel;
    plsCbBxSituacao: TPlsComboBox;
    lblCampoObrigatorio1: TLabel;
    Label1: TLabel;
    lblValor: TLabel;
    zQryDadosCODIGO: TIntegerField;
    zQryDadosDATA_CADASTRO: TDateTimeField;
    zQryDadosSTATUS: TSmallintField;
    zQryDadosCOD_FK_TIPO_IMOVEL: TIntegerField;
    zQryDadosCOD_FK_ESTADO: TIntegerField;
    zQryDadosCOD_FK_CIDADE: TIntegerField;
    zQryDadosCOD_FK_BAIRRO: TIntegerField;
    zQryDadosCOD_FK_RUA: TIntegerField;
    zQryDadosENDERECO_CEP: TStringField;
    zQryDadosENDERECO_COMPLEMENTO: TStringField;
    zQryDadosSITUACAO_DESEJAVEL: TStringField;
    zQryDadosVALOR_IMOVEL: TFloatField;
    zQryDadosDESCRICAO: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDATA_CADASTRO: TDateTimeField;
    cdsDadosSTATUS: TSmallintField;
    cdsDadosCOD_FK_TIPO_IMOVEL: TIntegerField;
    cdsDadosCOD_FK_ESTADO: TIntegerField;
    cdsDadosCOD_FK_CIDADE: TIntegerField;
    cdsDadosCOD_FK_BAIRRO: TIntegerField;
    cdsDadosCOD_FK_RUA: TIntegerField;
    cdsDadosENDERECO_CEP: TStringField;
    cdsDadosENDERECO_COMPLEMENTO: TStringField;
    cdsDadosSITUACAO_DESEJAVEL: TStringField;
    cdsDadosVALOR_IMOVEL: TFloatField;
    cdsDadosDESCRICAO: TStringField;
    pnlStatus: TPanel;
    lblTituloStatus: TLabel;
    lblStatus: TLabel;
    pnlEstado: TPanel;
    spBtnBuscaEstado: TSpeedButton;
    plsEdEstado: TPlsEdit;
    lblCampoObrigatorio2: TLabel;
    lblEstado: TLabel;
    pnlCidade: TPanel;
    spBtnBuscaCidade: TSpeedButton;
    plsEdCidade: TPlsEdit;
    lblCampoObrigatorio3: TLabel;
    lblCidade: TLabel;
    pnlRua: TPanel;
    spBtnBuscaRua: TSpeedButton;
    plsEdRua: TPlsEdit;
    lblRua: TLabel;
    pnlBairro: TPanel;
    lblBairro: TLabel;
    spBtnBuscaBairro: TSpeedButton;
    plsEdBairro: TPlsEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tlBtnNovoClick(Sender: TObject);
    procedure tlBtnEditarClick(Sender: TObject);
    procedure tlBtnSalvarClick(Sender: TObject);
    procedure tlBtnExcluirClick(Sender: TObject);
    procedure tlBtnCancelarClick(Sender: TObject);
    procedure plsEdCodigoExit(Sender: TObject);
    procedure spBtnBuscaTipoImovelClick(Sender: TObject);
    procedure spBtnBuscaEstadoClick(Sender: TObject);
    procedure spBtnBuscaCidadeClick(Sender: TObject);
    procedure spBtnBuscaBairroClick(Sender: TObject);
    procedure spBtnBuscaRuaClick(Sender: TObject);
    procedure plsEdCodigoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure plsEdTipoImovelExit(Sender: TObject);
    procedure plsEdEstadoExit(Sender: TObject);
    procedure plsEdCidadeExit(Sender: TObject);
    procedure plsEdBairroExit(Sender: TObject);
    procedure plsEdRuaExit(Sender: TObject);
    procedure lblDicasClick(Sender: TObject);
    procedure lblDescricaoClick(Sender: TObject);
    procedure lblDescricaoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure plsEdTipoImovelEnter(Sender: TObject);
    procedure plsEdTipoImovelKeyPress(Sender: TObject; var Key: Char);
    procedure plsEdEstadoEnter(Sender: TObject);
    procedure plsEdEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure plsEdCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure plsEdCidadeEnter(Sender: TObject);
    procedure plsEdBairroEnter(Sender: TObject);
    procedure plsEdBairroKeyPress(Sender: TObject; var Key: Char);
    procedure plsEdRuaKeyPress(Sender: TObject; var Key: Char);
    procedure plsEdRuaEnter(Sender: TObject);
    procedure plsMedEnderecoCEPEnter(Sender: TObject);
    procedure plsMedEnderecoCEPKeyPress(Sender: TObject; var Key: Char);
    procedure plsMmEnderecoComplementoKeyPress(Sender: TObject;
      var Key: Char);
    procedure plsMmEnderecoComplementoEnter(Sender: TObject);
    procedure plsCbBxSituacaoKeyPress(Sender: TObject; var Key: Char);
    procedure plsCbBxSituacaoEnter(Sender: TObject);
    procedure plsEdValorEnter(Sender: TObject);
    procedure plsEdValorKeyPress(Sender: TObject; var Key: Char);
    procedure plsMmDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure plsMmDescricaoEnter(Sender: TObject);
  private
    FoImovel: TObjImovel;
    FoConjuntoDadosTipoImovel: TConjuntoDadosTipoImovel;
    FoConjuntoDadosEstado: TConjuntoDadosEstado;
    FoConjuntoDadosCidade: TConjuntoDadosCidade;
    FoConjuntoDadosBairro: TConjuntoDadosBairro;
    FoConjuntoDadosRua: TConjuntoDadosRua;
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
    procedure novo(); override;
    function salvar(): Boolean; override;
    function excluir(): Boolean; override;
    procedure verificarInseriuChamadaTelaExterna(); override;
    procedure limparEndereco(nEnderecoChamou: String); //limpa os campos do endere�o, a partir daquele que alterou
    function validarAcessoEndereco(nEnderecoChamou: String): boolean; //valida se o acesso ao endere�o pode ser realizado
    procedure editarRegistroChamadaExterna();

    procedure AbreTelaSelecaoTipoImovel(pnTpSelecao:Word);
    procedure VerificarTipoImovelExiste();

    procedure AbreTelaSelecaoEstado(pnTpSelecao:Word);
    procedure VerificarEstadoExiste();

    procedure AbreTelaSelecaoCidade(pnTpSelecao:Word);
    procedure VerificarCidadeExiste();

    procedure AbreTelaSelecaoBairro(pnTpSelecao:Word);
    procedure VerificarBairroExiste();

    procedure AbreTelaSelecaoRua(pnTpSelecao:Word);
    procedure VerificarRuaExiste();
  public
    FoTipoImovel: TTipoImovel;
    FoEstado: TEstado;
    FoCidade: TCidade;
    FoBairro: TBairro;
    FoRua: TRua;
    //procedure iniciarTela(poForm: TForm); override;
    procedure passarParametro(pTipo:String; pValores:OleVariant); override;
    procedure realizouPesquisa(piCodigo: Integer); override;
  end;

var
  frmCadImoveis: TfrmCadImoveis;

implementation

uses
  unConstantes, unDM, unSelecionaRegistroEstado, unSelecionaRegistroCidade,
  unSelecionaRegistroBairro, unSelecionaRegistroRua,
  unSelecionaRegistroTipoImovel, unPesquisandoImovel,
  unSelecionaRegistroImovel, unCadAgenciamento, unFuncoes, unVariaveis,
  unSelecionarCaracImovel, unPrincipal;

const
  fnSELECIONAR_TIPO_IMOVEL_NORMAL    = 1;
  fnSELECIONAR_TIPO_IMOVEL_DIGITANDO = 2;

  fnSELECIONAR_ESTADO_NORMAL    = 1;
  fnSELECIONAR_ESTADO_DIGITANDO = 2;

  fnSELECIONAR_CIDADE_NORMAL    = 1;
  fnSELECIONAR_CIDADE_DIGITANDO = 2;

  fnSELECIONAR_BAIRRO_NORMAL    = 1;
  fnSELECIONAR_BAIRRO_DIGITANDO = 2;

  fnSELECIONAR_RUA_NORMAL    = 1;
  fnSELECIONAR_RUA_DIGITANDO = 2;

{$R *.dfm}

{ TfrmCadImoveis }

(* procedimentos de controle *)

procedure TfrmCadImoveis.passarParametro(pTipo:String; pValores:OleVariant);
begin
  inherited;   

  if(pTipo = PRM_CRIA_TELA_PESQUISA)then
  begin
    Application.CreateForm(TfrmPesquisandoImovel, Self.FoPesquisa);
    Self.FoPesquisa.passarParametro(PRM_INICIAR_TELA, null);
    Self.FoPesquisa.iniciarTela(frmCadImoveis);
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
    FbChamadaExternaEditarRegistro := True;
    FiTelaExternaChamouEditarRegistro := pValores;
  end

  else if(pTipo = PRM_CARREGA_REGISTRO_CODIGO)then
  begin
    FnCodigoEditar := pValores;
  end

  else if(pTipo = PRM_NAO_LIMPAR_ENDERECO)then
  begin
    FbPodeLimparEndereco := False;
  end

  else if(pTipo = PRM_SELECIONAR_TODOS_REGISTROS_CONJUNTO_DADOS)then
  begin
    if(pValores[0] = CONJUNTO_DADOS_TIPO_IMOVEL)then
      FoConjuntoDadosTipoImovel.ExecutarSQLSelecao

    else if(pValores[0] = CONJUNTO_DADOS_CIDADE)then
      FoConjuntoDadosCidade.ExecutarSQLSelecao

    else if(pValores[0] = CONJUNTO_DADOS_BAIRRO)then
      FoConjuntoDadosBairro.ExecutarSQLSelecao

    else if(pValores[0] = CONJUNTO_DADOS_RUA)then
      FoConjuntoDadosRua.ExecutarSQLSelecao;
  end;
end;

procedure TfrmCadImoveis.carregarObjeto();
begin
  if ((cdsDados.Active) and (Assigned(Self.FoImovel))) then
  begin
    Self.FoImovel.setCodigo(cdsDadosCODIGO.AsInteger);
    Self.FoImovel.setDataCadastro(cdsDadosDATA_CADASTRO.AsDateTime);
    Self.FoImovel.setCodFK_TipoImovel(cdsDadosCOD_FK_TIPO_IMOVEL.AsInteger);
    Self.FoImovel.setCodFK_Estado(cdsDadosCOD_FK_ESTADO.AsInteger);
    Self.FoImovel.setCodFK_Cidade(cdsDadosCOD_FK_CIDADE.AsInteger);
    Self.FoImovel.setCodFK_Bairro(cdsDadosCOD_FK_BAIRRO.AsInteger);
    Self.FoImovel.setCodFK_Rua(cdsDadosCOD_FK_RUA.AsInteger);
    Self.FoImovel.setEnderecoCEP(cdsDadosENDERECO_CEP.AsString);
    Self.FoImovel.setEnderecoComplemento(cdsDadosENDERECO_COMPLEMENTO.AsString);
    Self.FoImovel.setStatus(cdsDadosSTATUS.AsInteger);
    Self.FoImovel.setSituacaoDesejavel(cdsDadosSITUACAO_DESEJAVEL.AsString);
    Self.FoImovel.setValorImovel(cdsDadosVALOR_IMOVEL.AsCurrency);
    Self.FoImovel.setDescricao(cdsDadosDESCRICAO.AsString);
    Self.FoImovel.setExibeTipoImovel(False);
    Self.FoImovel.setExibeEstado(False);
    Self.FoImovel.setExibeCidade(False);
    Self.FoImovel.setExibeBairro(False);
    Self.FoImovel.setExibeRua(False);
  end
  else
  begin
    FoFuncoes.gravaMensagemSistemaDiversos('procedure TfrmCadImoveis.carregarObjeto();','Acesso Indispon�vel');
  end;
end;

procedure TfrmCadImoveis.carregarComponentesApresentacao();
  function carregarSituacaoDesejavel(psSituacaoDesejavel:String):Integer;
  begin
    if(psSituacaoDesejavel = 'PLANTA')then
      Result := 0
    else if(psSituacaoDesejavel = 'PRONTO PARA MORAR')then
      Result := 1
    else if(psSituacaoDesejavel = 'DE TERCEIROS')then
      Result := 2
    else
      Result := -1;
  end;

begin
  if(Assigned(Self.FoImovel))then
  begin
    if(Self.FoImovel.getCodigo <> NUMERO_INDEFINIDO)then
      plsEdCodigo.Text := IntToStr(Self.FoImovel.getCodigo)
    else
      plsEdCodigo.Clear;

    pnlStatus.Visible := True;
    case Self.FoImovel.getStatus of
      IMOVEL_STATUS_ABERTO: lblStatus.Caption := IMOVEL_STATUS_ABERTO_EXIBE;
      IMOVEL_STATUS_VENDIDO: lblStatus.Caption := IMOVEL_STATUS_VENDIDO_EXIBE;
      else lblStatus.Caption := NAO_DEFINIDO;
    end;

    plsEdTipoImovel.Text := Self.FoImovel.getExibeTipoImovel;
    Self.FoTipoImovel.codigo := Self.FoImovel.getCodFK_TipoImovel;
    Self.FoTipoImovel.nome := Self.FoImovel.getExibeTipoImovel;
    plsEdEstado.Text := Self.FoImovel.getExibeEstado;
    Self.FoEstado.codigo := Self.FoImovel.getCodFK_Estado;
    Self.FoEstado.nome := Self.FoImovel.getExibeEstado;
    plsEdCidade.Text := Self.FoImovel.getExibeCidade;
    Self.FoCidade.codigo := Self.FoImovel.getCodFK_Cidade;
    Self.FoCidade.nome := Self.FoImovel.getExibeCidade;
    plsEdBairro.Text := Self.FoImovel.getExibeBairro;
    Self.FoBairro.codigo := Self.FoImovel.getCodFK_Bairro;
    Self.FoBairro.nome := Self.FoImovel.getExibeBairro;
    plsEdRua.Text := Self.FoImovel.getExibeRua;
    Self.FoRua.codigo := Self.FoImovel.getCodFK_Rua;
    Self.FoRua.nome := Self.FoImovel.getExibeRua;
    plsMedEnderecoCEP.Text := Self.FoImovel.getEnderecoCEP;
    plsMmEnderecoComplemento.Text := Self.FoImovel.getEnderecoComplemento;
    plsCbBxSituacao.ItemIndex := carregarSituacaoDesejavel(Self.FoImovel.getSituacaoDesejavel);
    plsEdValor.Text := FloatToStr(Self.FoImovel.getValorImovel);
    plsEdValor.Text := FoFuncoes.formatarValorMonetario(plsEdValor.Text);

    plsMmDescricao.Text := Self.FoImovel.getDescricao;
  end
  else
  begin
    FoFuncoes.gravaMensagemSistemaDiversos('procedure TfrmCadImoveis.carregarComponentesApresentacao();','Objeto Indispon�vel');
  end;
end;

procedure TfrmCadImoveis.selecionarTodosDados();
begin
  cdsDados.Filter := '';
  cdsDados.Filtered := False;
  cdsDados.Close;
  zQryDados.Filter := '';
  zQryDados.Filtered := False;
  zQryDados.Close;
  zQryDados.SQL.Clear;
  zQryDados.SQL.Add('SELECT * FROM imovel ');
  zQryDados.SQL.Add(FoFuncoes.inserirCondicaoSelectNaoTrazerRegistroNulo());
  zQryDados.SQL.Add('ORDER BY codigo');
  zQryDados.Open;
  cdsDados.Open;
  cdsDados.First;
end;

procedure TfrmCadImoveis.limparObjeto();
begin
  if (Assigned(Self.FoImovel)) then
  begin
    Self.FoImovel.limparObjeto();
  end
  else
  begin
    FoFuncoes.gravaMensagemSistemaDiversos('procedure TfrmCadImoveis.limparObjeto();','Objeto Indispon�vel');
  end;
end;

procedure TfrmCadImoveis.limparTela(poForm: TForm);
var
  n: Integer;
  nTotComponentes: integer;
begin
  inherited;

  nTotComponentes := poForm.ComponentCount;
  try
    for n:=0 to nTotComponentes-1 do
    begin
      try
        if(poForm.Components[n] is TCheckBox)then
        begin
          if((poForm.Components[n] as TCheckBox).CanFocus)then
            (poForm.Components[n] as TCheckBox).Checked := False;
        end;
      except
        Self.FoFuncoes.gravaMensagemSistemaDiversos('procedure TfrmCadImoveis.limparTela(poForm: TForm);', 'Erro');
      end;
    end;

  except
    Self.FoFuncoes.gravaMensagemSistemaDiversos('procedure TfrmCadImoveis.limparTela(poForm: TForm);', 'Erro');
  end;
  lblStatus.Caption := STRING_INDEFINIDO;
end;

function TfrmCadImoveis.verificarHouveAlteracoes(): boolean;
var
  nCodTipoImovel: Integer;
  nCodEstado: Integer;
  nCodCidade: Integer;
  nCodBairro: Integer;
  nCodRua: Integer;
  sEnderecoCEP: String;
  sEnderecoComplemento: String;
  sSituacao: String;
  dValor: Double;
  sDescricao: String;

  bAlteracao: Boolean;
begin
  nCodTipoImovel := Self.FoTipoImovel.codigo;
  nCodEstado := Self.FoEstado.codigo;
  nCodCidade := Self.FoCidade.codigo;
  nCodBairro := Self.FoBairro.codigo;
  nCodRua := Self.FoRua.codigo;
  sEnderecoCEP := Trim(plsMedEnderecoCEP.Text);
  sEnderecoComplemento := Trim(plsMmEnderecoComplemento.Text);
  sSituacao := Trim(plsCbBxSituacao.Text);
  dValor := StrToFloat(plsEdValor.Text);
  sDescricao := trim(plsMmDescricao.Text);

  try
    bAlteracao := Self.FoImovel.verificarDiferencaCadastro(nCodTipoImovel,
    nCodEstado,nCodCidade,nCodBairro,nCodRua,sEnderecoCEP,sEnderecoComplemento,
    sSituacao,dValor,sDescricao);
  except
    bAlteracao := True;
  end;

  Result := bAlteracao;
end;


function TfrmCadImoveis.verificarCamposObrigatorios(): boolean;
var
  bRetorno: Boolean;
  oCompFoco: TWinControl;
  sCampos: string;
begin
  bRetorno := True;
  oCompFoco := nil;
  sCampos := '';

  if(Self.FoTipoImovel.codigo = NUMERO_INDEFINIDO)then
  begin
    sCampos := 'Tipo do Im�vel';
  end;

  if(Self.FoEstado.codigo = NUMERO_INDEFINIDO)then
  begin
    if(sCampos <> '')then
      sCampos := sCampos + ', Estado'
    else
    begin
      sCampos := 'Estado';
    end;
  end;

  if(Self.FoCidade.codigo = NUMERO_INDEFINIDO)then
  begin
    if(sCampos <> '')then
      sCampos := sCampos + ', Cidade'
    else
    begin
      sCampos := 'Cidade';
    end;
  end;

  if(plsCbBxSituacao.Text = STRING_INDEFINIDO)then
  begin
    if(sCampos <> '')then
      sCampos := sCampos + ', Situa��o'
    else
    begin
      sCampos := 'Situa��o';
    end;
    oCompFoco := plsCbBxSituacao;
  end;


  if(sCampos <> '')then
  begin
    MessageDlg('Antes de salvar, verifique os campos: ' + sCampos + '.', mtInformation, [mbOK], 0);
    bRetorno := False;
  end;

  //setar foco no componente que n�o foi validado
  if((not(bRetorno))and(oCompFoco is TWinControl))then
    FoFuncoes.focarComponente(oCompFoco);

  Result := bRetorno;
end;

function TfrmCadImoveis.verificarRegistroJaExiste(): boolean;
var
  nTemSacada,nTemPiscina,nTemSalaoFesta,nTemChurrasqueira: Integer;

  //carrega valores para serem usados no ParamByName do sql
  procedure carregarValores();
  begin

  end;

begin
(*
  carregarValores();

  zQryDados.Close;
  zQryDados.SQL.Clear;
  zQryDados.SQL.Add('SELECT * FROM imovel WHERE cod_fk_tipo_imovel=:cod_fk_tip_imov ');
  zQryDados.SQL.Add('AND cod_fk_estado=:cod_fk_est AND cod_fk_cidade=:cod_fk_cid ');
  zQryDados.SQL.Add('AND cod_fk_bairro=:cod_fk_bai AND cod_fk_rua=:cod_fk_rua ');
  zQryDados.SQL.Add('AND situacao_desejavel=:sit_des');
  //se estiver editando, pode salvar com os mesmos dados
  if(Self.FoImovel.getCodigo <> NUMERO_INDEFINIDO)then
  begin
    zQryDados.SQL.Add(' AND codigo <> :cod');
    zQryDados.ParamByName('cod').AsInteger := Self.FoImovel.getCodigo;
  end;
  zQryDados.ParamByName('cod_fk_tip_imov').AsInteger := Self.FoTipoImovel.codigo;
  zQryDados.ParamByName('cod_fk_est').AsInteger := Self.FoEstado.codigo;
  zQryDados.ParamByName('cod_fk_cid').AsInteger := Self.FoCidade.codigo;
  zQryDados.ParamByName('cod_fk_bai').AsInteger := Self.FoBairro.codigo;
  zQryDados.ParamByName('cod_fk_rua').AsInteger := Self.FoRua.codigo;
  zQryDados.ParamByName('sit_des').AsString := plsCbBxSituacao.Text;
  zQryDados.Open;

  if(zQryDados.RecordCount <> 0)then
  begin
    Result := True;
    MessageDlg('Im�vel j� cadastrado.', mtWarning, [mbOK], 0);
  end
  else
*)
    Result := False;
end;

function TfrmCadImoveis.verificarPodeDeletar(): boolean;
var
  bPodeDeletar: Boolean;
begin
  bPodeDeletar := True;

  Result := bPodeDeletar;
end;

procedure TfrmCadImoveis.visibilidade(pnVisib: Integer);
begin
  inherited;
  case pnVisib of
    OPC_TELA_INICIO: begin
                       plsEdCodigo.Enabled := True;
                       pnlStatus.Visible := False;
                       pnlTipoImovel.Enabled := False;
                       grpBxEndereco.Enabled := False;
                       pnlSituacaoValor.Enabled := False;
                       plsMmDescricao.Enabled := False;
                       plsEdCodigo.SetFocus;
                     end;
    OPC_NOVO:        begin
                       plsEdCodigo.Text := IntToStr(FoFuncoes.RetornarProximoCodigo(TABLE_IMOVEL,True));    
                       plsEdCodigo.Enabled := False;
                       pnlStatus.Visible := False;
                       pnlTipoImovel.Enabled := True;
                       grpBxEndereco.Enabled := True;
                       pnlSituacaoValor.Enabled := True;
                       plsMmDescricao.Enabled := True;
                       plsEdTipoImovel.SetFocus;
                     end;
    OPC_EDITAR:      begin
                       pnlStatus.Visible := True;
                       plsEdCodigo.Enabled := False;
                       pnlTipoImovel.Enabled := True;
                       grpBxEndereco.Enabled := True;
                       pnlSituacaoValor.Enabled := True;
                       plsMmDescricao.Enabled := True;
                       plsEdTipoImovel.SetFocus;
                     end;
    OPC_SALVAR:      begin

                     end;
    OPC_EXCLUIR:     begin

                     end;
    OPC_CANCELAR:    begin

                     end;
    OPC_PESQUISOU:   begin
                       plsEdCodigo.Enabled := True;
                       pnlTipoImovel.Enabled := False;
                       grpBxEndereco.Enabled := False;
                       pnlSituacaoValor.Enabled := False;
                       plsMmDescricao.Enabled := False;
                     end;
  end; //fim - case
end;

procedure TfrmCadImoveis.novo();
begin
  inherited;
  limparObjeto();
  limparTela(frmCadImoveis);
  visibilidade(OPC_NOVO);
end;

function TfrmCadImoveis.salvar(): boolean;
var
  bSalvou: boolean;

  nTipoImovel,nEstado,nCidade,nBairro,nRua,nQtdeDormitorios,nQtdeGarragens: Integer;
  dValor: Currency;
  nTemSacada,nTemPiscina,nTemSalaoFesta,nTemChurrasqueira: Integer;

  //carrega valores para serem usados no ParamByName do sql
  procedure carregarValores();
  begin
    if(Self.FoTipoImovel.codigo <> NUMERO_INDEFINIDO)then
      nTipoImovel := Self.FoTipoImovel.codigo
    else
      nTipoImovel := REGISTRO_NULO;

    if(Self.FoEstado.codigo <> NUMERO_INDEFINIDO)then
      nEstado := Self.FoEstado.codigo
    else
      nEstado := REGISTRO_NULO;

    if(Self.FoCidade.codigo <> NUMERO_INDEFINIDO)then
      nCidade := Self.FoCidade.codigo
    else
      nCidade := REGISTRO_NULO;

    if(Self.FoBairro.codigo <> NUMERO_INDEFINIDO)then
      nBairro := Self.FoBairro.codigo
    else
      nBairro := REGISTRO_NULO;

    if(Self.FoRua.codigo <> NUMERO_INDEFINIDO)then
      nRua := Self.FoRua.codigo
    else
      nRua := REGISTRO_NULO;

    try
      dValor := StrToCurr(Self.FoFuncoes.retirarCaracteres(plsEdValor.Text, '.'));
    except
      dValor := NUMERO_INDEFINIDO;
    end;
  end;

  //limpa par�metro nulos - para o insert e update
  procedure limparParametrosNulos();
  begin
    //vazio
  end;

begin
  bSalvou := False;

  if(Self.FiFuncaoRegistro in [FUNCAO_REGISTRO_EDITAR, FUNCAO_REGISTRO_NOVO]) then
  begin
    inherited;
    carregarValores;
    if (Self.FiFuncaoRegistro = FUNCAO_REGISTRO_EDITAR) then
    begin
      try
        DM.ZConnection.StartTransaction;
        zQryDados.Close;
        zQryDados.SQL.Clear;
        zQryDados.SQL.Add('UPDATE imovel SET cod_fk_tipo_imovel=:cod_fk_ti_im, ');
        zQryDados.SQL.Add('cod_fk_estado=:cod_fk_es,cod_fk_cidade=:cod_fk_ci, ');
        zQryDados.SQL.Add('cod_fk_bairro=:cod_fk_ba,cod_fk_rua=:co_fk_ru, ');
        zQryDados.SQL.Add('endereco_cep=:end_cep,endereco_complemento=:end_com, ');
        zQryDados.SQL.Add('situacao_desejavel=:sit_des,valor_imovel=:val_imo, ');
        zQryDados.SQL.Add('descricao=:des ');
        zQryDados.SQL.Add('WHERE codigo=:cod');
        zQryDados.ParamByName('cod_fk_ti_im').AsInteger := nTipoImovel;
        zQryDados.ParamByName('cod_fk_es').AsInteger := nEstado;
        zQryDados.ParamByName('cod_fk_ci').AsInteger := nCidade;
        zQryDados.ParamByName('cod_fk_ba').AsInteger := nBairro;
        zQryDados.ParamByName('co_fk_ru').AsInteger := nRua;
        zQryDados.ParamByName('end_cep').AsString := plsMedEnderecoCEP.Text;
        zQryDados.ParamByName('end_com').AsString := plsMmEnderecoComplemento.Text;
        zQryDados.ParamByName('sit_des').AsString := plsCbBxSituacao.Text;
        zQryDados.ParamByName('val_imo').AsCurrency := dValor;
        zQryDados.ParamByName('des').AsString := plsMmDescricao.Text;
        zQryDados.ParamByName('cod').AsInteger := Self.FoImovel.getCodigo();
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
        zQryDados.SQL.Add('INSERT INTO imovel (status,cod_fk_tipo_imovel, ');
        zQryDados.SQL.Add('cod_fk_estado,cod_fk_cidade,cod_fk_bairro,cod_fk_rua, ');
        zQryDados.SQL.Add('endereco_cep,endereco_complemento,situacao_desejavel, ');
        zQryDados.SQL.Add('valor_imovel,descricao) ');
        zQryDados.SQL.Add('VALUES (:sta,:cod_fk_ti_im,:cod_fk_es,:cod_fk_ci, ');
        zQryDados.SQL.Add(':cod_fk_ba,:co_fk_ru,:end_cep,:end_com,:sit_des, ');
        zQryDados.SQL.Add(':val_imo,:des)');
        zQryDados.ParamByName('sta').AsInteger := IMOVEL_STATUS_ABERTO;
        zQryDados.ParamByName('cod_fk_ti_im').AsInteger := nTipoImovel;
        zQryDados.ParamByName('cod_fk_es').AsInteger := nEstado;
        zQryDados.ParamByName('cod_fk_ci').AsInteger := nCidade;
        zQryDados.ParamByName('cod_fk_ba').AsInteger := nBairro;
        zQryDados.ParamByName('co_fk_ru').AsInteger := nRua;
        zQryDados.ParamByName('end_cep').AsString := plsMedEnderecoCEP.Text;
        zQryDados.ParamByName('end_com').AsString := plsMmEnderecoComplemento.Text;
        zQryDados.ParamByName('sit_des').AsString := plsCbBxSituacao.Text;
        zQryDados.ParamByName('val_imo').AsCurrency := dValor;
        zQryDados.ParamByName('des').AsString := plsMmDescricao.Text;
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

  if((bSalvou)and(not(FbChamadaExternaInserirRegistro)))and
    (not(Self.FbChamadaExternaEditarRegistro))then
    Self.FoPesquisa.passarParametro(PRM_SELECIONAR_TODOS_REGISTROS,null);

  Result := bSalvou;
end;

procedure TfrmCadImoveis.verificarInseriuChamadaTelaExterna();
var
  nCodigo: Integer;
  sDescricao: String;
  dValor: Currency;
  vParametros: Variant;
begin
  nCodigo := NUMERO_INDEFINIDO;
  sDescricao := STRING_INDEFINIDO;
  dValor := NUMERO_INDEFINIDO;

  if(Self.FbChamadaExternaInserirRegistro)then
  begin
    DM.zQryAux.Close;
    DM.zQryAux.SQL.Clear;
    DM.zQryAux.SQL.Add('SELECT i.codigo,i.valor_imovel,i.descricao,e.sigla,c.nome ');
    DM.zQryAux.SQL.Add('FROM imovel i ');
    DM.zQryAux.SQL.Add('JOIN estado e ON i.cod_fk_estado = e.codigo ');
    DM.zQryAux.SQL.Add('JOIN cidade c ON i.cod_fk_cidade = c.codigo ');
    DM.zQryAux.SQL.Add('ORDER BY i.codigo DESC ROWS 1');
    DM.zQryAux.Open;
    if(DM.zQryAux.RecordCount = 1)then
    begin
      nCodigo := DM.zQryAux.FieldByName('codigo').AsInteger;
      sDescricao := DM.zQryAux.FieldByName('sigla').AsString + ' - ' +
        DM.zQryAux.FieldByName('nome').AsString + ' - ' +
        DM.zQryAux.FieldByName('descricao').AsString;
      dValor := DM.zQryAux.FieldByName('valor_imovel').AsCurrency;
    end;

    if(Self.FiTelaExternaChamouInserirRegistro = FORM_CAD_AGENCIAMENTOS)then
    begin
      vParametros := VarArrayCreate([0,2], varVariant);
      vParametros[0] := nCodigo;
      vParametros[1] := sDescricao;
      vParametros[2] := dValor;
      frmCadAgenciamento.passarParametro(PRM_INSERIU_IMOVEL,vParametros);
      Self.Close;
      Exit;
    end

    else if(Self.FiTelaExternaChamouInserirRegistro = FORM_SELECIONA_REGISTRO_IMOVEL)then
    begin
      frmSelecionaRegistroImovel.passarParametro(PRM_INSERIU_REGISTRO_AO_ESTAR_SELECIONANDO,nCodigo);
      Self.Close;
      Exit;
    end;
  end

  else if(Self.FbChamadaExternaEditarRegistro)then
  begin
    DM.zQryAux.Close;
    DM.zQryAux.SQL.Clear;
    DM.zQryAux.SQL.Add('SELECT i.codigo,i.valor_imovel,i.descricao,e.sigla,c.nome ');
    DM.zQryAux.SQL.Add('FROM imovel i ');
    DM.zQryAux.SQL.Add('JOIN estado e ON i.cod_fk_estado = e.codigo ');
    DM.zQryAux.SQL.Add('JOIN cidade c ON i.cod_fk_cidade = c.codigo ');
    DM.zQryAux.SQL.Add('WHERE i.codigo=:codigo');
    DM.zQryAux.ParamByName('codigo').AsInteger := Self.FoImovel.getCodigo;
    DM.zQryAux.Open;
    if(DM.zQryAux.RecordCount = 1)then
    begin
      nCodigo := DM.zQryAux.FieldByName('codigo').AsInteger;
      sDescricao := DM.zQryAux.FieldByName('sigla').AsString + ' - ' +
        DM.zQryAux.FieldByName('nome').AsString + ' - ' +
        DM.zQryAux.FieldByName('descricao').AsString;
      dValor := DM.zQryAux.FieldByName('valor_imovel').AsCurrency;
    end;

    if(Self.FiTelaExternaChamouEditarRegistro = FORM_CAD_AGENCIAMENTOS)then
    begin
      vParametros := VarArrayCreate([0,3], varVariant);
      vParametros[0] := nCodigo;
      vParametros[1] := sDescricao;
      vParametros[2] := EDITOU_IMOVEL;
      vParametros[3] := dValor;
      frmCadAgenciamento.passarParametro(PRM_EDITOU_REGISTRO_AGENCIAMENTO_STAND_BY,vParametros);
      Self.Close;
      Exit;
    end;
  end;
end;


function TfrmCadImoveis.excluir(): Boolean;
var
  bDeletou: Boolean;
  bPodeDeletar: Boolean;
begin
  bDeletou := False;
  bPodeDeletar := True;

  //verifica se im�vel n�o est� associado a um agenciamento
  DM.zQryAgenciamentos.Close;
  DM.zQryAgenciamentos.SQL.Clear;
  DM.zQryAgenciamentos.SQL.Add('SELECT * FROM agenciamentos WHERE cod_fk_imovel=:cod_fk_im');
  DM.zQryAgenciamentos.ParamByName('cod_fk_im').AsInteger := Self.FoImovel.getCodigo;
  DM.zQryAgenciamentos.Open;
  if(DM.zQryAgenciamentos.RecordCount <> 0)then
  begin
    MessageDlg('Im�vel n�o pode ser deletado, pois existe agenciamento para o mesmo.',
      mtInformation, [mbOK], 0);
    bPodeDeletar := False;
  end;

  //verifica se im�vel n�o est� vendido

  if(bPodeDeletar)then
  begin
    try
      DM.ZConnection.StartTransaction;
      zQryDados.Close;
      zQryDados.SQL.Clear;
      zQryDados.SQL.Add('DELETE FROM imovel WHERE codigo=:cod');
      zQryDados.ParamByName('cod').AsInteger := Self.FoImovel.getCodigo();
      zQryDados.ExecSQL();
      DM.ZConnection.Commit;
      bDeletou := True;
    except
      DM.ZConnection.Rollback;
    end;
  end;

  if(bPodeDeletar = False)then
    Result := True //retorna True pois j� foi exibida mensagem que registro n�o pode ser deletado
  else
    Result := bDeletou;
end;

procedure TfrmCadImoveis.realizouPesquisa(piCodigo: Integer);
begin
  if(cdsDados.Locate('codigo',piCodigo,[]))then
  begin
    visibilidade(OPC_PESQUISOU); //poderia ser na tela pai
  end;
end;

procedure TfrmCadImoveis.limparEndereco(nEnderecoChamou: String);
  procedure limparEstado();
  begin
    plsEdEstado.Clear;
    Self.FoEstado.codigo := NUMERO_INDEFINIDO;
    Self.FoEstado.nome := STRING_INDEFINIDO;
  end;
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
    plsMedEnderecoCEP.Clear;
    Self.FoRua.codigo := NUMERO_INDEFINIDO;
    Self.FoRua.nome := STRING_INDEFINIDO;
    Self.FoRua.cep := STRING_INDEFINIDO;
  end;

begin
  if(Self.FbPodeLimparEndereco)then
  begin
    if(nEnderecoChamou = 'ESTADO')then
    begin
      limparEstado();
      limparCidade();
      limparBairro();
      limparRua();
    end
    else if(nEnderecoChamou = 'CIDADE')then
    begin
      limparCidade();
      limparBairro();
      limparRua();
    end
    else if(nEnderecoChamou = 'BAIRRO')then
    begin
      limparBairro();
      limparRua();
    end
    else if(nEnderecoChamou = 'RUA')then
    begin
      limparRua();
    end;
  end;

  Self.FbPodeLimparEndereco := True;
end;

//valida se o acesso ao endere�o pode ser realizado
function TfrmCadImoveis.validarAcessoEndereco(nEnderecoChamou: String): boolean;
var
  bAcesso: Boolean;
begin
  bAcesso := False;

  if(nEnderecoChamou = 'CIDADE')then
  begin
    if(Self.FoEstado.codigo <> NUMERO_INDEFINIDO)then
      bAcesso := True;
  end
  else if(nEnderecoChamou = 'BAIRRO')then
  begin
    if(Self.FoEstado.codigo <> NUMERO_INDEFINIDO)and(Self.FoCidade.codigo <> NUMERO_INDEFINIDO)then
      bAcesso := True;
  end
  else if(nEnderecoChamou = 'RUA')then
  begin
    if(Self.FoEstado.codigo <> NUMERO_INDEFINIDO)and(Self.FoCidade.codigo <> NUMERO_INDEFINIDO)and
      (Self.FoBairro.codigo <> NUMERO_INDEFINIDO)then
      bAcesso := True;
  end;

  Result := bAcesso;
end;

procedure TfrmCadImoveis.editarRegistroChamadaExterna();

  procedure pesquisarRegistro();
  begin
    cdsDados.Close;
    zQryDados.Close;
    zQryDados.SQL.Clear;
    zQryDados.SQL.Add('SELECT * FROM imovel WHERE codigo=:cod');
    zQryDados.ParamByName('cod').AsInteger := Self.FnCodigoEditar;
    zQryDados.Open;
    cdsDados.Open;
  end;

begin
  pesquisarRegistro;
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
    MessageDlg('Erro ao pesquisar por im�vel ao editar agenciamento stand by.', mtWarning, [mbOK], 0);
  end;
end;


procedure TfrmCadImoveis.AbreTelaSelecaoTipoImovel(pnTpSelecao:Word);
var
  vParametros: Variant;
begin
  vParametros := VarArrayCreate([0,2],varVariant);
  vParametros[0] := PRM_PESQUISA_NOME;
  vParametros[1] := plsEdTipoImovel.Text;
  vParametros[2] := False;

  case pnTpSelecao of

    fnSELECIONAR_TIPO_IMOVEL_NORMAL:
    begin
      try
        Application.CreateForm(TfrmSelecionaRegistroTipoImovel, frmSelecionaRegistroTipoImovel);
        frmSelecionaRegistroTipoImovel.passarParametro(PRM_TELA_CHAMOU,FORM_CAD_IMOVEL);
        frmSelecionaRegistroTipoImovel.passarParametro(PRM_DEFINE_FILTRO_PADRAO_TELA_SELECAO, null);
        if(plsEdTipoImovel.Text <> STRING_INDEFINIDO)then
          frmSelecionaRegistroTipoImovel.passarParametro(PRM_ENVIA_FILTRO_PESQUISA, vParametros);
        frmSelecionaRegistroTipoImovel.passarParametro(PRM_AJUSTAR_LARGURA_GRIDE,null);
        FoFuncoes.AjustarPosicaoFormCadastroSelecaoRegistro(frmPrincipal,
         frmCadImoveis,frmSelecionaRegistroTipoImovel,pnlTipoImovel,ToolBar);
        frmSelecionaRegistroTipoImovel.ShowModal;
      finally
        if(Self.FoTipoImovel.codigo <> NUMERO_INDEFINIDO)then
        begin
          plsEdTipoImovel.Text := Self.FoTipoImovel.nome;
          FoFuncoes.focarComponente(plsEdEstado);
        end;
        FreeAndNil(frmSelecionaRegistroTipoImovel);
      end;
    end;

    fnSELECIONAR_TIPO_IMOVEL_DIGITANDO:
    begin
      try
        Application.CreateForm(TfrmSelecionaRegistroTipoImovel, frmSelecionaRegistroTipoImovel);
        frmSelecionaRegistroTipoImovel.passarParametro(PRM_TELA_CHAMOU,FORM_CAD_IMOVEL);
        frmSelecionaRegistroTipoImovel.passarParametro(PRM_DEFINE_FILTRO_PADRAO_TELA_SELECAO, null);
        frmSelecionaRegistroTipoImovel.passarParametro(PRM_ENVIA_FILTRO_PESQUISA, vParametros);
        frmSelecionaRegistroTipoImovel.passarParametro(PRM_AJUSTAR_LARGURA_GRIDE,null);
        FoFuncoes.AjustarPosicaoFormCadastroSelecaoRegistro(frmPrincipal,
         frmCadImoveis,frmSelecionaRegistroTipoImovel,pnlTipoImovel,ToolBar);
        frmSelecionaRegistroTipoImovel.ShowModal;
      finally
        if(Self.FoTipoImovel.codigo <> NUMERO_INDEFINIDO)then
        begin
          plsEdTipoImovel.Text := Self.FoTipoImovel.nome;
          FoFuncoes.focarComponente(plsEdEstado);
        end;
        FreeAndNil(frmSelecionaRegistroTipoImovel);
      end;
    end;

  end;

end;

procedure TfrmCadImoveis.VerificarTipoImovelExiste();
begin
  if(plsEdTipoImovel.Text <> STRING_INDEFINIDO)then
  begin
    FoConjuntoDadosTipoImovel.SetFiltro('nome ' + ' LIKE ' + QuotedStr('%' + plsEdTipoImovel.Text + '%'));
    FoConjuntoDadosTipoImovel.ExecutarFiltrar();

    if(FoConjuntoDadosTipoImovel.TotalRegistros = 1)then
    begin
      FoTipoImovel.codigo := FoConjuntoDadosTipoImovel.GetCodigo;
      FoTipoImovel.nome := FoConjuntoDadosTipoImovel.GetNome;
      plsEdTipoImovel.Text := FoTipoImovel.nome;
    end
    else if(FoConjuntoDadosTipoImovel.TotalRegistros > 1)then
      AbreTelaSelecaoTipoImovel(fnSELECIONAR_TIPO_IMOVEL_DIGITANDO)
    else
    begin
      MessageDlg('Tipo de Im�vel n�o encontrado.', mtInformation, [mbOK], 0);
      FoFuncoes.focarComponente(plsEdTipoImovel);
    end;
  end;
end;

procedure TfrmCadImoveis.AbreTelaSelecaoEstado(pnTpSelecao:Word);
var
  vParametros: Variant;
begin
  vParametros := VarArrayCreate([0,2],varVariant);
  vParametros[0] := PRM_PESQUISA_NOME;
  vParametros[1] := plsEdEstado.Text;
  vParametros[2] := False;

  case pnTpSelecao of

    fnSELECIONAR_ESTADO_NORMAL:
    begin
      try
        Application.CreateForm(TfrmSelecionaRegistroEstado, frmSelecionaRegistroEstado);
        frmSelecionaRegistroEstado.passarParametro(PRM_TELA_CHAMOU, FORM_CAD_IMOVEL);
        frmSelecionaRegistroEstado.passarParametro(PRM_DEFINE_FILTRO_PADRAO_TELA_SELECAO, null);
        if(plsEdEstado.Text <> STRING_INDEFINIDO)then
          frmSelecionaRegistroEstado.passarParametro(PRM_ENVIA_FILTRO_PESQUISA, vParametros);
        frmSelecionaRegistroEstado.passarParametro(PRM_AJUSTAR_LARGURA_GRIDE,null);
        FoFuncoes.AjustarPosicaoFormCadastroSelecaoRegistro(frmPrincipal,
         frmCadImoveis,frmSelecionaRegistroEstado,pnlEstado,ToolBar,grpBxEndereco);
        frmSelecionaRegistroEstado.ShowModal;
      finally
        if(Self.FoEstado.codigo <> NUMERO_INDEFINIDO)then
        begin
          plsEdEstado.Text := Self.FoEstado.nome;
          limparEndereco('CIDADE');
          Self.FoFuncoes.focarComponente(plsEdCidade);
        end;
        FreeAndNil(frmSelecionaRegistroEstado);
      end;
    end;

    fnSELECIONAR_ESTADO_DIGITANDO:
    begin
      try
        Application.CreateForm(TfrmSelecionaRegistroEstado, frmSelecionaRegistroEstado);
        frmSelecionaRegistroEstado.passarParametro(PRM_TELA_CHAMOU, FORM_CAD_IMOVEL);
        frmSelecionaRegistroEstado.passarParametro(PRM_DEFINE_FILTRO_PADRAO_TELA_SELECAO, null);
        frmSelecionaRegistroEstado.passarParametro(PRM_ENVIA_FILTRO_PESQUISA, vParametros);
        frmSelecionaRegistroEstado.passarParametro(PRM_AJUSTAR_LARGURA_GRIDE,null);
        FoFuncoes.AjustarPosicaoFormCadastroSelecaoRegistro(frmPrincipal,
         frmCadImoveis,frmSelecionaRegistroEstado,pnlEstado,ToolBar,grpBxEndereco);
        frmSelecionaRegistroEstado.ShowModal;
      finally
        if(Self.FoEstado.codigo <> NUMERO_INDEFINIDO)then
        begin
          plsEdEstado.Text := Self.FoEstado.nome;
          limparEndereco('CIDADE');
          Self.FoFuncoes.focarComponente(plsEdCidade);
        end
        else
          plsEdEstado.Clear;
        FreeAndNil(frmSelecionaRegistroEstado);
      end;
    end;
  end;
end;


procedure TfrmCadImoveis.VerificarEstadoExiste();
begin
  if(Trim(plsEdEstado.Text) <> STRING_INDEFINIDO)then
  begin
    FoConjuntoDadosEstado.SetFiltro('nome ' + ' LIKE ' + QuotedStr('%' + plsEdEstado.Text + '%'));
    FoConjuntoDadosEstado.ExecutarFiltrar();

    if(FoConjuntoDadosEstado.TotalRegistros = 1)then
    begin
      FoEstado.codigo := FoConjuntoDadosEstado.GetCodigo;
      FoEstado.nome := FoConjuntoDadosEstado.GetNome;
      plsEdEstado.Text := FoEstado.nome;
    end
    else if(FoConjuntoDadosEstado.TotalRegistros > 1)then
      AbreTelaSelecaoEstado(fnSELECIONAR_ESTADO_DIGITANDO)
    else
    begin
      MessageDlg('Estado n�o encontrado.', mtInformation, [mbOK], 0);
      FoFuncoes.focarComponente(plsEdEstado);
    end;
  end
  else
    limparEndereco('ESTADO');
end;                              

procedure TfrmCadImoveis.AbreTelaSelecaoCidade(pnTpSelecao:Word);
var
  vParametros: Variant;
begin
  vParametros := VarArrayCreate([0,2],varVariant);
  vParametros[0] := PRM_PESQUISA_NOME;
  vParametros[1] := plsEdCidade.Text;
  vParametros[2] := False;

  case pnTpSelecao of

    fnSELECIONAR_CIDADE_NORMAL:
    begin
      try
        Application.CreateForm(TfrmSelecionaRegistroCidade, frmSelecionaRegistroCidade);
        frmSelecionaRegistroCidade.passarParametro(PRM_TELA_CHAMOU, FORM_CAD_IMOVEL);
        frmSelecionaRegistroCidade.passarParametro('FK_COD_ESTADO', Self.FoEstado.codigo);
        frmSelecionaRegistroCidade.passarParametro(PRM_DEFINE_FILTRO_PADRAO_TELA_SELECAO, null);
        frmSelecionaRegistroCidade.passarParametro(PRM_ENVIA_FILTRO_PESQUISA, vParametros);
        frmSelecionaRegistroCidade.passarParametro(PRM_AJUSTAR_LARGURA_GRIDE,null);
        FoFuncoes.AjustarPosicaoFormCadastroSelecaoRegistro(frmPrincipal,
         frmCadImoveis,frmSelecionaRegistroCidade,pnlCidade,ToolBar,grpBxEndereco);
        frmSelecionaRegistroCidade.ShowModal;
      finally
        if(FoCidade.codigo <> NUMERO_INDEFINIDO)then
        begin
          plsEdCidade.Text := FoCidade.nome;
          limparEndereco('BAIRRO');
          Self.FoFuncoes.focarComponente(plsEdBairro);
        end;
        FreeAndNil(frmSelecionaRegistroCidade);
      end;
    end;

    fnSELECIONAR_CIDADE_DIGITANDO:
    begin
      try
        Application.CreateForm(TfrmSelecionaRegistroCidade, frmSelecionaRegistroCidade);
        frmSelecionaRegistroCidade.passarParametro(PRM_TELA_CHAMOU, FORM_CAD_IMOVEL);
        frmSelecionaRegistroCidade.passarParametro('FK_COD_ESTADO', Self.FoEstado.codigo);
        frmSelecionaRegistroCidade.passarParametro(PRM_DEFINE_FILTRO_PADRAO_TELA_SELECAO, null);
        frmSelecionaRegistroCidade.passarParametro(PRM_ENVIA_FILTRO_PESQUISA, vParametros);
        frmSelecionaRegistroCidade.passarParametro(PRM_AJUSTAR_LARGURA_GRIDE,null);
        FoFuncoes.AjustarPosicaoFormCadastroSelecaoRegistro(frmPrincipal,
         frmCadImoveis,frmSelecionaRegistroCidade,pnlCidade,ToolBar,grpBxEndereco);
        frmSelecionaRegistroCidade.ShowModal;
      finally
        if(Self.FoCidade.codigo <> NUMERO_INDEFINIDO)then
        begin
          plsEdCidade.Text := Self.FoCidade.nome;
          limparEndereco('BAIRRO');
          Self.FoFuncoes.focarComponente(plsEdBairro);
        end
        else
          plsEdCidade.Clear;
        FreeAndNil(frmSelecionaRegistroCidade);
      end;
    end;

  end;

end;


procedure TfrmCadImoveis.VerificarCidadeExiste();
var
  sFiltro: String;
begin
  sFiltro := '(nome ' + ' LIKE ' + QuotedStr('%' + plsEdCidade.Text + '%') + ')';
  sFiltro := sFiltro + ' AND cod_fk_estado = ' + QuotedStr(IntToStr(FoEstado.codigo));
  if(plsEdCidade.Text <> STRING_INDEFINIDO)then
  begin
    FoConjuntoDadosCidade.SetFiltro(sFiltro);
    FoConjuntoDadosCidade.ExecutarFiltrar();

    if(FoConjuntoDadosCidade.TotalRegistros = 1)then
    begin
      FoCidade.codigo := FoConjuntoDadosCidade.GetCodigo;
      FoCidade.nome := FoConjuntoDadosCidade.GetNome;
      plsEdCidade.Text := FoCidade.nome;
    end
    else if(FoConjuntoDadosCidade.TotalRegistros > 1)then
      AbreTelaSelecaoCidade(fnSELECIONAR_CIDADE_DIGITANDO)
    else
    begin
      MessageDlg('Cidade n�o encontrada.', mtInformation, [mbOK], 0);
      FoFuncoes.focarComponente(plsEdCidade);
    end;
  end
  else
    limparEndereco('CIDADE');
end;


procedure TfrmCadImoveis.AbreTelaSelecaoBairro(pnTpSelecao:Word);
var
  vParametros: Variant;
begin
  vParametros := VarArrayCreate([0,2],varVariant);
  vParametros[0] := PRM_PESQUISA_NOME;
  vParametros[1] := plsEdBairro.Text;
  vParametros[2] := False;

  case pnTpSelecao of

    fnSELECIONAR_BAIRRO_NORMAL:
    begin
      try
        Application.CreateForm(TfrmSelecionaRegistroBairro, frmSelecionaRegistroBairro);
        frmSelecionaRegistroBairro.passarParametro(PRM_TELA_CHAMOU, FORM_CAD_IMOVEL);
        frmSelecionaRegistroBairro.passarParametro('FK_COD_CIDADE', Self.FoCidade.codigo);
        frmSelecionaRegistroBairro.passarParametro(PRM_DEFINE_FILTRO_PADRAO_TELA_SELECAO, null);
        if(plsEdBairro.Text <> STRING_INDEFINIDO)then
          frmSelecionaRegistroBairro.passarParametro(PRM_ENVIA_FILTRO_PESQUISA, vParametros);
        frmSelecionaRegistroBairro.passarParametro(PRM_AJUSTAR_LARGURA_GRIDE,null);
        FoFuncoes.AjustarPosicaoFormCadastroSelecaoRegistro(frmPrincipal,
         frmCadImoveis,frmSelecionaRegistroBairro,pnlBairro,ToolBar,grpBxEndereco);
        frmSelecionaRegistroBairro.ShowModal;
      finally
        if(FoBairro.codigo <> NUMERO_INDEFINIDO)then
        begin
          plsEdBairro.Text := FoBairro.nome;
          limparEndereco('RUA');
          Self.FoFuncoes.focarComponente(plsEdRua);
        end;
        FreeAndNil(frmSelecionaRegistroBairro);
      end;
    end;

    fnSELECIONAR_BAIRRO_DIGITANDO:
    begin
      try
        Application.CreateForm(TfrmSelecionaRegistroBairro, frmSelecionaRegistroBairro);
        frmSelecionaRegistroBairro.passarParametro(PRM_TELA_CHAMOU, FORM_CAD_IMOVEL);
        frmSelecionaRegistroBairro.passarParametro('FK_COD_CIDADE', Self.FoCidade.codigo);
        frmSelecionaRegistroBairro.passarParametro(PRM_DEFINE_FILTRO_PADRAO_TELA_SELECAO, null);
        frmSelecionaRegistroBairro.passarParametro(PRM_ENVIA_FILTRO_PESQUISA, vParametros);
        frmSelecionaRegistroBairro.passarParametro(PRM_AJUSTAR_LARGURA_GRIDE,null);
        FoFuncoes.AjustarPosicaoFormCadastroSelecaoRegistro(frmPrincipal,
         frmCadImoveis,frmSelecionaRegistroBairro,pnlBairro,ToolBar,grpBxEndereco);
        frmSelecionaRegistroBairro.ShowModal;
      finally
        if(Self.FoBairro.codigo <> NUMERO_INDEFINIDO)then
        begin
          plsEdBairro.Text := Self.FoBairro.nome;
          limparEndereco('RUA');
          Self.FoFuncoes.focarComponente(plsEdRua);
        end
        else
          plsEdBairro.Clear;
        FreeAndNil(frmSelecionaRegistroBairro);
      end;
    end;
  end;
end;

procedure TfrmCadImoveis.VerificarBairroExiste;
var
  sFiltro: String;
begin
  sFiltro := '(nome ' + ' LIKE ' + QuotedStr('%' + plsEdBairro.Text + '%') + ')';
  sFiltro := sFiltro + ' AND cod_fk_cidade = ' + QuotedStr(IntToStr(FoCidade.codigo));
  if(plsEdBairro.Text <> STRING_INDEFINIDO)then
  begin
    FoConjuntoDadosBairro.SetFiltro(sFiltro);
    FoConjuntoDadosBairro.ExecutarFiltrar;

    if(FoConjuntoDadosBairro.TotalRegistros = 1)then
    begin
      FoBairro.codigo := FoConjuntoDadosBairro.GetCodigo;
      FoBairro.nome := FoConjuntoDadosBairro.GetNome;
      plsEdBairro.Text := FoBairro.nome;
    end
    else if(FoConjuntoDadosBairro.TotalRegistros > 1)then
      AbreTelaSelecaoBairro(fnSELECIONAR_BAIRRO_DIGITANDO)
    else
    begin
      MessageDlg('Bairro n�o encontrado.', mtInformation, [mbOK], 0);
      FoFuncoes.focarComponente(plsEdBairro);
    end;
  end
  else
    limparEndereco('BAIRRO');
end;


procedure TfrmCadImoveis.AbreTelaSelecaoRua(pnTpSelecao:Word);
var
  vParametros: Variant;
begin
  vParametros := VarArrayCreate([0,2],varVariant);
  vParametros[0] := PRM_PESQUISA_NOME;
  vParametros[1] := plsEdRua.Text;
  vParametros[2] := False;

  case pnTpSelecao of

    fnSELECIONAR_RUA_NORMAL:
    begin
      try
        Application.CreateForm(TfrmSelecionaRegistroRua, frmSelecionaRegistroRua);
        frmSelecionaRegistroRua.passarParametro(PRM_TELA_CHAMOU, FORM_CAD_IMOVEL);
        frmSelecionaRegistroRua.passarParametro('FK_COD_BAIRRO', Self.FoBairro.codigo);
        frmSelecionaRegistroRua.passarParametro(PRM_DEFINE_FILTRO_PADRAO_TELA_SELECAO, null);
        if(plsEdRua.Text <> STRING_INDEFINIDO)then
          frmSelecionaRegistroRua.passarParametro(PRM_ENVIA_FILTRO_PESQUISA, vParametros);
        frmSelecionaRegistroRua.passarParametro(PRM_AJUSTAR_LARGURA_GRIDE,null);
        FoFuncoes.AjustarPosicaoFormCadastroSelecaoRegistro(frmPrincipal,
         frmCadImoveis,frmSelecionaRegistroRua,pnlRua,ToolBar,grpBxEndereco);
        frmSelecionaRegistroRua.ShowModal;
      finally
        if(FoRua.codigo <> NUMERO_INDEFINIDO)then
        begin
          plsEdRua.Text := Self.FoRua.nome;
          plsMedEnderecoCEP.Text := Self.FoRua.cep;
          Self.FoFuncoes.focarComponente(plsMmEnderecoComplemento);
        end;
        FreeAndNil(frmSelecionaRegistroRua);
      end;
    end;

    fnSELECIONAR_RUA_DIGITANDO:
    begin
      try
        Application.CreateForm(TfrmSelecionaRegistroRua, frmSelecionaRegistroRua);
        frmSelecionaRegistroRua.passarParametro(PRM_TELA_CHAMOU, FORM_CAD_IMOVEL);
        frmSelecionaRegistroRua.passarParametro('FK_COD_BAIRRO', Self.FoBairro.codigo);
        frmSelecionaRegistroRua.passarParametro(PRM_DEFINE_FILTRO_PADRAO_TELA_SELECAO, null);
        frmSelecionaRegistroRua.passarParametro(PRM_ENVIA_FILTRO_PESQUISA, vParametros);
        frmSelecionaRegistroRua.passarParametro(PRM_AJUSTAR_LARGURA_GRIDE,null);
        FoFuncoes.AjustarPosicaoFormCadastroSelecaoRegistro(frmPrincipal,
         frmCadImoveis,frmSelecionaRegistroRua,pnlRua,ToolBar,grpBxEndereco);
        frmSelecionaRegistroRua.ShowModal;
      finally
        if(FoRua.codigo <> NUMERO_INDEFINIDO)then
        begin
          plsEdRua.Text := Self.FoRua.nome;
          plsMedEnderecoCEP.Text := Self.FoRua.cep;
          Self.FoFuncoes.focarComponente(plsMmEnderecoComplemento);
        end
        else
          plsEdRua.Clear;
        FreeAndNil(frmSelecionaRegistroRua);
      end;
    end;

  end;

end;

procedure TfrmCadImoveis.VerificarRuaExiste();
var
  sFiltro: String;
begin
  sFiltro := '(nome ' + ' LIKE ' + QuotedStr('%' + plsEdRua.Text + '%') + ')';
  sFiltro := sFiltro + ' AND cod_fk_bairro = ' + QuotedStr(IntToStr(FoBairro.codigo));

  if(plsEdRua.Text <> STRING_INDEFINIDO)then
  begin
    FoConjuntoDadosRua.SetFiltro(sFiltro);
    FoConjuntoDadosRua.ExecutarFiltrar();

    if(FoConjuntoDadosRua.TotalRegistros = 1)then
    begin
      FoRua.codigo := FoConjuntoDadosRua.GetCodigo;
      FoRua.nome := FoConjuntoDadosRua.GetNome;
      FoRua.cep := FoConjuntoDadosRua.GetCEP;
      plsEdRua.Text := FoRua.nome;
      plsMedEnderecoCEP.Text := FoRua.cep;
    end
    else if(FoConjuntoDadosRua.TotalRegistros > 1)then
      AbreTelaSelecaoRua(fnSELECIONAR_RUA_DIGITANDO)
    else
    begin
      MessageDlg('Rua n�o encontrada.', mtInformation, [mbOK], 0);
      FoFuncoes.focarComponente(plsEdRua);
    end;
  end
  else
    limparEndereco('RUA');
end;

(* fim - procedimentos de controle *)


procedure TfrmCadImoveis.FormCreate(Sender: TObject);
begin
  inherited;
  Self.FoImovel := TObjImovel.Create;
  Self.FnCodigoEditar := NUMERO_INDEFINIDO;
  Self.FbPodeLimparEndereco := True;
  FoConjuntoDadosTipoImovel := TConjuntoDadosTipoImovel.CriaObjeto;
  FoConjuntoDadosEstado := TConjuntoDadosEstado.CriaObjeto;
  FoConjuntoDadosCidade := TConjuntoDadosCidade.CriaObjeto;
  FoConjuntoDadosBairro := TConjuntoDadosBairro.CriaObjeto;
  FoConjuntoDadosRua := TConjuntoDadosRua.CriaObjeto;
end;

procedure TfrmCadImoveis.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(Self.FoImovel);
  FreeAndNil(FoConjuntoDadosTipoImovel);
  FreeAndNil(FoConjuntoDadosEstado);
  FreeAndNil(FoConjuntoDadosCidade);
  FreeAndNil(FoConjuntoDadosBairro);
  FreeAndNil(FoConjuntoDadosRua);
  if(Assigned(frmSelecionarCaracImovel))then
    FreeAndNil(frmSelecionarCaracImovel);
end;

procedure TfrmCadImoveis.tlBtnNovoClick(Sender: TObject);
begin
  inherited;
  //Self.novo();
end;

procedure TfrmCadImoveis.tlBtnEditarClick(Sender: TObject);
begin
  inherited;
  // visibilidade(OPC_EDITAR);
end;

procedure TfrmCadImoveis.tlBtnSalvarClick(Sender: TObject);
begin
  inherited;
  // Self.salvar();
end;

procedure TfrmCadImoveis.tlBtnExcluirClick(Sender: TObject);
begin
  inherited;
  // Self.excluir();
end;

procedure TfrmCadImoveis.tlBtnCancelarClick(Sender: TObject);
begin
  inherited;
  // visibilidade(OPC_CANCELAR);
end;

procedure TfrmCadImoveis.plsEdCodigoExit(Sender: TObject);
begin
  inherited;
  if(Assigned(Self.FoPesquisa))then
    Self.FoPesquisa.Hide;
end;

procedure TfrmCadImoveis.spBtnBuscaTipoImovelClick(Sender: TObject);
begin
  inherited;
  AbreTelaSelecaoTipoImovel(fnSELECIONAR_TIPO_IMOVEL_NORMAL);
end;

procedure TfrmCadImoveis.spBtnBuscaEstadoClick(Sender: TObject);
begin
  inherited;
  AbreTelaSelecaoEstado(fnSELECIONAR_ESTADO_NORMAL);
end;

procedure TfrmCadImoveis.spBtnBuscaCidadeClick(Sender: TObject);
begin
  inherited;
  if not(validarAcessoEndereco('CIDADE'))then
    MessageDlg('Um estado deve estar selecionado.', mtInformation, [mbOK], 0)
  else
    AbreTelaSelecaoCidade(fnSELECIONAR_CIDADE_NORMAL);
end;

procedure TfrmCadImoveis.spBtnBuscaBairroClick(Sender: TObject);
begin
  inherited;
  if not(validarAcessoEndereco('BAIRRO'))then
  begin
    MessageDlg('Uma cidade deve estar selecionada.', mtInformation, [mbOK], 0);
    FoFuncoes.focarComponente(plsEdCidade);
  end
  else
    AbreTelaSelecaoBairro(fnSELECIONAR_BAIRRO_NORMAL);
end;

procedure TfrmCadImoveis.spBtnBuscaRuaClick(Sender: TObject);
begin
  inherited;
  if not(validarAcessoEndereco('RUA'))then
    MessageDlg('Um bairro deve estar selecionado.', mtInformation, [mbOK], 0)
  else
    AbreTelaSelecaoRua(fnSELECIONAR_RUA_NORMAL);
end;

procedure TfrmCadImoveis.plsEdCodigoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TfrmCadImoveis.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if(Key=#27)then
    Self.Close;
end;

procedure TfrmCadImoveis.FormShow(Sender: TObject);
begin
  if(FbChamadaExternaEditarRegistro)then
  begin
    Self.editarRegistroChamadaExterna();
  end
  else
    inherited;
end;

procedure TfrmCadImoveis.plsEdTipoImovelExit(Sender: TObject);
begin
  inherited;
  VerificarTipoImovelExiste();
end;

procedure TfrmCadImoveis.plsEdEstadoExit(Sender: TObject);
begin
  inherited;
  VerificarEstadoExiste;
end;

procedure TfrmCadImoveis.plsEdCidadeExit(Sender: TObject);
begin
  inherited;
  if not(validarAcessoEndereco('CIDADE'))then
  begin
    if(Trim(plsEdCidade.Text) <> STRING_INDEFINIDO)then
    begin
      MessageDlg('Um estado deve estar selecionado.', mtInformation, [mbOK], 0);
      plsEdCidade.Clear;
      FoFuncoes.focarComponente(plsEdEstado);
    end;
  end
  else
    VerificarCidadeExiste();
end;

procedure TfrmCadImoveis.plsEdBairroExit(Sender: TObject);
begin
  inherited;
  if not(validarAcessoEndereco('BAIRRO'))then
  begin
    if(Trim(plsEdBairro.Text) <> STRING_INDEFINIDO)then
    begin
      MessageDlg('Uma cidade deve estar selecionada.', mtInformation, [mbOK], 0);
      plsEdBairro.Clear;
      FoFuncoes.focarComponente(plsEdCidade);
    end;
  end
  else
    VerificarBairroExiste;
end;

procedure TfrmCadImoveis.plsEdRuaExit(Sender: TObject);
begin
  inherited;
  if not(validarAcessoEndereco('RUA'))then
  begin
    if(Trim(plsEdRua.Text) <> STRING_INDEFINIDO)then
    begin
      MessageDlg('Um bairro deve estar selecionado.', mtInformation, [mbOK], 0);
      plsEdRua.Clear;
      FoFuncoes.focarComponente(plsEdBairro);
    end;
  end
  else
    VerificarRuaExiste();
end;

procedure TfrmCadImoveis.lblDicasClick(Sender: TObject);
begin
  inherited;
  FoFuncoes.CriarTelaDicas(FORM_CAD_IMOVEL);
end;

procedure TfrmCadImoveis.lblDescricaoClick(Sender: TObject);
var
  vParametros: OleVariant;
begin
  vParametros := VarArrayCreate([0,0], varVariant);
  vParametros[0] := nRECEBER_CARAC_CAD_IMOVEIS_DESCRICAO;
  
  Application.CreateForm(TfrmSelecionarCaracImovel, frmSelecionarCaracImovel);
  frmSelecionarCaracImovel.passarParametro(PRM_DEFINE_QUEM_RECEBE_CARACTERISTICAS_IMOVEL, vParametros);
  frmSelecionarCaracImovel.Show;
end;

procedure TfrmCadImoveis.lblDescricaoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'Descri��o do Im�vel');
end;

procedure TfrmCadImoveis.plsEdTipoImovelEnter(Sender: TObject);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'Tipo de Im�vel');
end;

procedure TfrmCadImoveis.plsEdTipoImovelKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'Tipo de Im�vel');
end;

procedure TfrmCadImoveis.plsEdEstadoEnter(Sender: TObject);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'Estado do Im�vel');
end;

procedure TfrmCadImoveis.plsEdEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'Estado do Im�vel');
end;

procedure TfrmCadImoveis.plsEdCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'Cidade do Im�vel');
end;

procedure TfrmCadImoveis.plsEdCidadeEnter(Sender: TObject);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'Cidade do Im�vel');
end;

procedure TfrmCadImoveis.plsEdBairroEnter(Sender: TObject);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'Bairro do Im�vel');
end;

procedure TfrmCadImoveis.plsEdBairroKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'Bairro do Im�vel');
end;

procedure TfrmCadImoveis.plsEdRuaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'Rua do Im�vel');
end;

procedure TfrmCadImoveis.plsEdRuaEnter(Sender: TObject);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'Rua do Im�vel');
end;

procedure TfrmCadImoveis.plsMedEnderecoCEPEnter(Sender: TObject);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'CEP da Rua do Im�vel');
end;

procedure TfrmCadImoveis.plsMedEnderecoCEPKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'CEP da Rua do Im�vel');
end;

procedure TfrmCadImoveis.plsMmEnderecoComplementoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'Complemento do Endere�o');
end;

procedure TfrmCadImoveis.plsMmEnderecoComplementoEnter(Sender: TObject);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'Complemento do Endere�o');
end;

procedure TfrmCadImoveis.plsCbBxSituacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'Situa��o do Im�vel',False);
end;

procedure TfrmCadImoveis.plsCbBxSituacaoEnter(Sender: TObject);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'Situa��o do Im�vel',False);
end;

procedure TfrmCadImoveis.plsEdValorEnter(Sender: TObject);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'Valor do Im�vel');
end;

procedure TfrmCadImoveis.plsEdValorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'Valor do Im�vel');
end;

procedure TfrmCadImoveis.plsMmDescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'Descri��o do Im�vel',False);
end;

procedure TfrmCadImoveis.plsMmDescricaoEnter(Sender: TObject);
begin
  inherited;
  MostrarHintCampos(STRING_INDEFINIDO,'Descri��o do Im�vel',False);
end;

end.
