unit unCadBairro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unCadastroBasico, DBClient, Provider, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, AppEvnts, ImgList, ComCtrls, ToolWin,
  StdCtrls, Buttons, plsEdit, Mask, plsTMaskEdit, unObjBairro, ExtCtrls,
  unConjuntoDadosCidade;

  type
    TCidade = record
      codigo: Integer;
      nome: string[100];
    end;

  type
  TfrmCadBairro = class(TfrmCadastroBasico)
    lblCodigo: TLabel;
    Label1: TLabel;
    plsEdCodigo: TPlsEdit;
    Label2: TLabel;
    plsEdNome: TPlsEdit;
    zQryDadosCODIGO: TIntegerField;
    zQryDadosDATA_CADASTRO: TDateTimeField;
    zQryDadosCOD_FK_CIDADE: TIntegerField;
    zQryDadosNOME: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDATA_CADASTRO: TDateTimeField;
    cdsDadosCOD_FK_CIDADE: TIntegerField;
    cdsDadosNOME: TStringField;
    pnlCidade: TPanel;
    lblCidade: TLabel;
    plsEdCidade: TPlsEdit;
    spBtnBuscaCidade: TSpeedButton;
    lblCampoObrigatorio2: TLabel;
    lblCampoObrigatorio1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tlBtnCancelarClick(Sender: TObject);
    procedure tlBtnNovoClick(Sender: TObject);
    procedure tlBtnSalvarClick(Sender: TObject);
    procedure spBtnBuscaCidadeClick(Sender: TObject);
    procedure plsEdNomeExit(Sender: TObject);
    procedure tlBtnEditarClick(Sender: TObject);
    procedure tlBtnExcluirClick(Sender: TObject);
    procedure plsEdCodigoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure plsEdCodigoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure plsEdNomeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure plsEdCidadeExit(Sender: TObject);
  private
    FoBairro: TObjBairro;
    FoConjuntoDadosCidade: TConjuntoDadosCidade;

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
    procedure AbreTelaSelecaoCidade(pnTpSelecao:Word);
    procedure VerificarCidadeExiste();
  public
    FoCidade: TCidade;
    FoCidadeAux: TCidade;

    procedure iniciarTela(poForm: TForm); override;
    procedure passarParametro(pTipo:String; pValores:OleVariant); override;
    procedure realizouPesquisa(piCodigo: Integer); override;
  end;

var
  frmCadBairro: TfrmCadBairro;

implementation

uses unConstantes, unPesquisandoBairro, unDM, unSelecionaRegistroCidade,
  unVariaveis, unSelecionaRegistroBairro;

const
  fnSELECIONAR_CIDADE_NORMAL    = 1;
  fnSELECIONAR_CIDADE_DIGITANDO = 2;

{$R *.dfm}

{ TfrmCadBairro }

(* procedimentos de controle *)

procedure TfrmCadBairro.iniciarTela(poForm: TForm);
begin
  inherited;
  Application.CreateForm(TfrmPesquisandoBairro, Self.FoPesquisa);
  Self.FoPesquisa.iniciarTela(frmCadBairro);
  if(Assigned(Self.FoPesquisa))then
    Self.FoPesquisa.Hide;

  //objeto auxiliar para armazenar estado da cidade que ser� inserida - FbChamadaExternaInserirRegistro=True 
  Self.FoCidadeAux.codigo := NUMERO_INDEFINIDO;
  Self.FoCidadeAux.nome := STRING_INDEFINIDO;
end;

procedure TfrmCadBairro.passarParametro(pTipo:String; pValores:OleVariant);
var
  nCodFK_Cidade: Integer;
begin
  inherited;

  if(pTipo = PRM_INSERE_REGISTRO_AO_ESTAR_SELECIONANDO)then
  begin
    Self.FbChamadaExternaInserirRegistro := True;
    Self.FiTelaExternaChamouInserirRegistro := pValores;
  end

  else if(pTipo = PRM_DEFINE_CIDADE_BAIRRO_INSERINDO)then
  begin
    if(VarIsNumeric(pValores))then
    begin
      nCodFK_Cidade := pValores;
      if(nCodFK_Cidade <> NUMERO_INDEFINIDO)then
      begin
        DM.zQryCidade.Close;
        DM.zQryCidade.SQL.Clear;
        DM.zQryCidade.SQL.Add('SELECT * FROM cidade WHERE codigo = :cid');
        DM.zQryCidade.ParamByName('cid').AsInteger := nCodFK_Cidade;
        DM.zQryCidade.Open;
        if(DM.zQryCidade.RecordCount=1)then
        begin
          Self.FoCidadeAux.codigo := DM.zQryCidadeCODIGO.AsInteger;
          Self.FoCidadeAux.nome := DM.zQryCidadeNOME.AsString;
        end;
      end;
    end;
  end;
end;

procedure TfrmCadBairro.limparObjeto();
begin
  if (Assigned(Self.FoBairro)) then
  begin
    Self.FoBairro.setCodigo(NUMERO_INDEFINIDO);
    Self.FoBairro.setFkCidade(NUMERO_INDEFINIDO);
    Self.FoBairro.setNome(STRING_INDEFINIDO);
  end
end;

procedure TfrmCadBairro.limparTela(poForm: TForm);
begin
  inherited;
  Self.FoCidade.codigo := NUMERO_INDEFINIDO;
  Self.FoCidade.nome := STRING_INDEFINIDO;
end;

procedure TfrmCadBairro.carregarObjeto();
begin
  if ((cdsDados.Active) and (Assigned(Self.FoBairro))) then
  begin
    Self.FoBairro.setCodigo(cdsDadosCODIGO.AsInteger);
    Self.FoBairro.setFkCidade(cdsDadosCOD_FK_CIDADE.AsInteger);
    Self.FoBairro.setNome(cdsDadosNOME.AsString);
    Self.FoBairro.setExibeCidade();
  end
  else
  begin
    FoFuncoes.gravaMensagemSistemaDiversos('procedure TfrmCadBairro.carregarObjeto();','Acesso Indispon�vel');
  end;
end;

procedure TfrmCadBairro.carregarComponentesApresentacao();
begin
  if(Assigned(Self.FoBairro))then
  begin
    if(Self.FoBairro.getCodigo <> NUMERO_INDEFINIDO)then
      plsEdCodigo.Text := IntToStr(Self.FoBairro.getCodigo)
    else
      plsEdCodigo.Clear;
    plsEdCidade.Text := Self.FoBairro.getExibeCidade;
    Self.FoCidade.codigo := Self.FoBairro.getFkCidade;
    Self.FoCidade.nome := Self.FoBairro.getExibeCidade;
    plsEdNome.Text := Self.FoBairro.getNome;
  end;
end;

procedure TfrmCadBairro.selecionarTodosDados();
begin
  cdsDados.Filter := '';
  cdsDados.Filtered := False;
  cdsDados.Close;
  zQryDados.Filter := '';
  zQryDados.Filtered := False;
  zQryDados.Close;
  zQryDados.SQL.Clear;
  zQryDados.SQL.Add('SELECT * FROM bairro ');
  zQryDados.SQL.Add(FoFuncoes.inserirCondicaoSelectNaoTrazerRegistroNulo());
  zQryDados.SQL.Add('ORDER BY nome');
  zQryDados.Open;
  cdsDados.Open;
  cdsDados.First;
end;

function TfrmCadBairro.verificarHouveAlteracoes(): boolean;
var
  iCidade: Integer;
  sNome: String;
  bAlteracao: Boolean;
begin
  iCidade := Self.FoCidade.codigo;
  sNome := Trim(plsEdNome.Text);
  try
    bAlteracao := Self.FoBairro.verificarDiferencaCadastro(iCidade, sNome);
  except
    bAlteracao := True;
  end;

  Result := bAlteracao;
end;

function TfrmCadBairro.verificarCamposObrigatorios(): boolean;
var
  bRetorno: Boolean;
  compFoco: TWinControl;
  campos: string;
  sAux: string;
begin
  bRetorno := True;
  compFoco := nil;
  campos := '';
  sAux := '';

  if(Self.FoCidade.codigo = NUMERO_INDEFINIDO)then
  begin
    campos := 'Cidade';
    //compFoco := plsEdEstado;
  end;

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

  if(campos <> '')then
  begin
    MessageDlg('Antes de salvar, verifique os campos: ' + campos + '.', mtInformation, [mbOK], 0);
    bRetorno := False;
  end;

  //setar foco no componente que n�o foi validado
  if((not(bRetorno))and(compFoco is TWinControl))then
    FoFuncoes.focarComponente(compFoco);

  Result := bRetorno;
end;

function TfrmCadBairro.verificarRegistroJaExiste(): boolean;
begin
  zQryDados.Close;
  zQryDados.SQL.Clear;
  zQryDados.SQL.Add('SELECT * FROM bairro WHERE cod_fk_cidade=:cod_fk_cid AND nome=:nom');
  //se estiver editando, pode salvar com os mesmos dados
  if(Self.FoBairro.getCodigo <> NUMERO_INDEFINIDO)then
  begin
    zQryDados.SQL.Add(' AND codigo <> :cod');
    zQryDados.ParamByName('cod').AsInteger := Self.FoBairro.getCodigo;
  end;     
  zQryDados.ParamByName('cod_fk_cid').AsInteger := Self.FoCidade.codigo;
  zQryDados.ParamByName('nom').AsString := Trim(plsEdNome.Text);
  zQryDados.Open;
  if(zQryDados.RecordCount <> 0)then
  begin
    Result := True;
    MessageDlg('Bairro j� cadastrado.', mtWarning, [mbOK], 0);
  end
  else
    Result := False;
end;

function TfrmCadBairro.verificarPodeDeletar(): boolean;
var
  bPodeDeletar: Boolean;
begin
  bPodeDeletar := True;

  //verifica se bairro n�o est� associado a uma rua
  DM.zQryRua.Close;
  DM.zQryRua.SQL.Clear;
  DM.zQryRua.SQL.Add('SELECT * FROM rua WHERE cod_fk_bairro=:cod_fk_bai');
  DM.zQryRua.ParamByName('cod_fk_bai').AsInteger := Self.FoBairro.getCodigo;
  DM.zQryRua.Open;
  if(DM.zQryRua.RecordCount <> 0)then
  begin
    MessageDlg('Bairro n�o pode ser deletado, pois existe uma rua deste bairro.',
      mtInformation, [mbOK], 0);
    bPodeDeletar := False;
  end;

  //verifica se bairro n�o est� associado a um cliente pessoa f�sica
  if(bPodeDeletar)then
  begin
    DM.zQryClientePessoaFisica.Close;
    DM.zQryClientePessoaFisica.SQL.Clear;
    DM.zQryClientePessoaFisica.SQL.Add('SELECT * FROM cliente_pessoa_fisica WHERE cod_fk_bairro=:cod_fk_bai');
    DM.zQryClientePessoaFisica.ParamByName('cod_fk_bai').AsInteger := Self.FoBairro.getCodigo;
    DM.zQryClientePessoaFisica.Open;
    if(DM.zQryClientePessoaFisica.RecordCount <> 0)then
    begin
      MessageDlg('Bairro n�o pode ser deletado, pois existe um cliente deste bairro.',
        mtInformation, [mbOK], 0);
      bPodeDeletar := False;
    end;
  end;

  //verifica se bairro n�o est� associado a um cliente pessoa jur�dica
  if(bPodeDeletar)then
  begin
    DM.zQryClientePessoaJuridica.Close;
    DM.zQryClientePessoaJuridica.SQL.Clear;
    DM.zQryClientePessoaJuridica.SQL.Add('SELECT * FROM cliente_pessoa_juridica WHERE cod_fk_bairro=:cod_fk_bai');
    DM.zQryClientePessoaJuridica.ParamByName('cod_fk_bai').AsInteger := Self.FoBairro.getCodigo;
    DM.zQryClientePessoaJuridica.Open;
    if(DM.zQryClientePessoaJuridica.RecordCount <> 0)then
    begin
      MessageDlg('Bairro n�o pode ser deletado, pois existe um cliente deste bairro.',
        mtInformation, [mbOK], 0);
      bPodeDeletar := False;
    end;
  end;

  //verifica se bairro n�o est� associado a um imovel
  if(bPodeDeletar)then
  begin
    DM.zQryImovel.Close;
    DM.zQryImovel.SQL.Clear;
    DM.zQryImovel.SQL.Add('SELECT * FROM imovel WHERE cod_fk_bairro=:cod_fk_bai');
    DM.zQryImovel.ParamByName('cod_fk_bai').AsInteger := Self.FoBairro.getCodigo;
    DM.zQryImovel.Open;
    if(DM.zQryImovel.RecordCount <> 0)then
    begin
      MessageDlg('Bairro n�o pode ser deletado, pois existe um im�vel deste bairro.',
        mtInformation, [mbOK], 0);
      bPodeDeletar := False;
    end;
  end;

  //verifica se bairro n�o est� associado a um  agenciamento pessoa_fisica
  if(bPodeDeletar)then
  begin
    DM.zQryAgencPessoaFisica.Close;
    DM.zQryAgencPessoaFisica.SQL.Clear;
    DM.zQryAgencPessoaFisica.SQL.Add('SELECT * FROM agenc_pessoa_fisica WHERE cod_fk_bairro=:cod_fk_bai');
    DM.zQryAgencPessoaFisica.ParamByName('cod_fk_bai').AsInteger := Self.FoBairro.getCodigo;
    DM.zQryAgencPessoaFisica.Open;
    if(DM.zQryAgencPessoaFisica.RecordCount <> 0)then
    begin
      MessageDlg('Bairro n�o pode ser deletado, pois existe um agenciador deste bairro.',
        mtInformation, [mbOK], 0);
      bPodeDeletar := False;
    end;
  end;

  //verifica se cidade n�o est� associado a um agenciamento pessoa_juridica
  if(bPodeDeletar)then
  begin
    DM.zQryAgencPessoaJuridica.Close;
    DM.zQryAgencPessoaJuridica.SQL.Clear;
    DM.zQryAgencPessoaJuridica.SQL.Add('SELECT * FROM agenc_pessoa_juridica WHERE cod_fk_bairro=:cod_fk_bai');
    DM.zQryAgencPessoaJuridica.ParamByName('cod_fk_bai').AsInteger := Self.FoBairro.getCodigo;
    DM.zQryAgencPessoaJuridica.Open;
    if(DM.zQryAgencPessoaJuridica.RecordCount <> 0)then
    begin
      MessageDlg('Bairro n�o pode ser deletado, pois existe um agenciador deste bairro.',
        mtInformation, [mbOK], 0);
      bPodeDeletar := False;
    end;
  end;

  Result := bPodeDeletar;
end;

procedure TfrmCadBairro.visibilidade(pnVisib: Integer);
begin
  inherited;
  case pnVisib of
    OPC_TELA_INICIO: begin
                       plsEdCodigo.Enabled := True;
                       pnlCidade.Enabled := False;
                       plsEdNome.Enabled := True;
                       plsEdCodigo.SetFocus;
                     end;
    OPC_NOVO:        begin
                       plsEdCodigo.Enabled := False;
                       pnlCidade.Enabled := True;
                       plsEdNome.Enabled := True;
                       plsEdCidade.SetFocus;
                     end;
    OPC_EDITAR:      begin
                       plsEdCodigo.Enabled := False;
                       pnlCidade.Enabled := True;
                       plsEdNome.Enabled := True;
                       plsEdCidade.SetFocus;
                     end;
    OPC_SALVAR:      begin

                     end;
    OPC_EXCLUIR:     begin

                     end;
    OPC_CANCELAR:    begin

                     end;
    OPC_PESQUISOU:   begin
                       plsEdCodigo.Enabled := True;
                       pnlCidade.Enabled := False;
                       plsEdNome.Enabled := True;
                     end;
  end; //fim - case

end;

procedure TfrmCadBairro.novo();
begin
  inherited;
  limparObjeto();
  limparTela(frmCadBairro);
  visibilidade(OPC_NOVO);
end;  

function TfrmCadBairro.salvar(): boolean;
var
  bSalvou: boolean;
begin
  bSalvou := False;

  if(Self.FiFuncaoRegistro in [FUNCAO_REGISTRO_EDITAR, FUNCAO_REGISTRO_NOVO]) then
  begin
    inherited;
    if (Self.FiFuncaoRegistro = FUNCAO_REGISTRO_EDITAR) then
    begin
      try
        DM.ZConnection.StartTransaction;
        zQryDados.Close;
        zQryDados.SQL.Clear;
        zQryDados.SQL.Add('UPDATE bairro SET cod_fk_cidade=:cod_fk_cid,nome=:nom ');
        zQryDados.SQL.Add('WHERE codigo=:cod');
        zQryDados.ParamByName('cod_fk_cid').AsInteger := Self.FoCidade.codigo;
        zQryDados.ParamByName('nom').AsString := Trim(plsEdNome.Text);
        zQryDados.ParamByName('cod').AsInteger := Self.FoBairro.getCodigo();
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
        zQryDados.SQL.Add('INSERT INTO bairro (cod_fk_cidade, nome) ');
        zQryDados.SQL.Add('VALUES (:cod_fk_cid, :nom)');
        zQryDados.ParamByName('cod_fk_cid').AsInteger := Self.FoCidade.codigo;
        zQryDados.ParamByName('nom').AsString := Trim(plsEdNome.Text);
        zQryDados.ExecSQL();
        DM.ZConnection.Commit;
        bSalvou := True;
        Self.verificarInseriuChamadaTelaExterna();        
      except
        DM.ZConnection.Rollback;
      end;
    end;
  end;

  if((bSalvou)and(not(FbChamadaExternaInserirRegistro)))then
    Self.FoPesquisa.passarParametro(PRM_SELECIONAR_TODOS_REGISTROS,null);

  Result := bSalvou;
end;

function TfrmCadBairro.excluir(): Boolean;
var
  bDeletou: boolean;
begin
  bDeletou := False;

  try
    DM.ZConnection.StartTransaction;
    zQryDados.Close;
    zQryDados.SQL.Clear;
    zQryDados.SQL.Add('DELETE FROM bairro WHERE codigo=:cod');
    zQryDados.ParamByName('cod').AsInteger := Self.FoBairro.getCodigo();
    zQryDados.ExecSQL();
    DM.ZConnection.Commit;
    bDeletou := True;
  except
    DM.ZConnection.Rollback;
  end;

  Result := bDeletou;
end;

procedure TfrmCadBairro.verificarInseriuChamadaTelaExterna();
var
  nCodigo: Integer;
begin
  DM.zQryBairro.Close;
  DM.zQryBairro.SQL.Clear;
  DM.zQryBairro.SQL.Add('SELECT * FROM bairro ORDER BY codigo DESC ROWS 1');
  DM.zQryBairro.Open;
  if(DM.zQryBairro.RecordCount = 1)then
    nCodigo := DM.zQryBairroCODIGO.AsInteger
  else
    nCodigo := NUMERO_INDEFINIDO;

  if(Self.FbChamadaExternaInserirRegistro)then
  begin
    if(Self.FiTelaExternaChamouInserirRegistro = FORM_SELECIONA_REGISTRO_BAIRRO)then
    begin
      frmSelecionaRegistroBairro.passarParametro(PRM_INSERIU_REGISTRO_AO_ESTAR_SELECIONANDO,nCodigo);
      Self.Close;
      Exit;
    end;
  end;
end;

procedure TfrmCadBairro.realizouPesquisa(piCodigo: Integer);
begin
  if(cdsDados.Locate('codigo',piCodigo,[]))then
  begin
    visibilidade(OPC_PESQUISOU); //poderia ser na tela pai
  end;
end;


procedure TfrmCadBairro.AbreTelaSelecaoCidade(pnTpSelecao:Word);
var
  vParametros: Variant;
begin
  case pnTpSelecao of

    fnSELECIONAR_CIDADE_NORMAL:
    begin
      try
        Application.CreateForm(TfrmSelecionaRegistroCidade, frmSelecionaRegistroCidade);
        frmSelecionaRegistroCidade.passarParametro(PRM_TELA_CHAMOU,FORM_CAD_BAIRRO);
        frmSelecionaRegistroCidade.ShowModal;
      finally
        if(Self.FoCidade.codigo <> NUMERO_INDEFINIDO)then
        begin
          plsEdCidade.Text := Self.FoCidade.nome;
          Self.FoFuncoes.focarComponente(plsEdNome);
        end;
        FreeAndNil(frmSelecionaRegistroCidade);
      end;
    end;

    fnSELECIONAR_CIDADE_DIGITANDO:
    begin
      try
        Application.CreateForm(TfrmSelecionaRegistroCidade, frmSelecionaRegistroCidade);
        frmSelecionaRegistroCidade.passarParametro(PRM_TELA_CHAMOU, FORM_CAD_BAIRRO);
        vParametros := VarArrayCreate([0,2],varVariant);
        vParametros[0] := PRM_PESQUISA_NOME;
        vParametros[1] := plsEdCidade.Text;
        vParametros[2] := False;
        frmSelecionaRegistroCidade.passarParametro(PRM_ENVIA_FILTRO_PESQUISA, vParametros);
        frmSelecionaRegistroCidade.ShowModal;
      finally
        if(Self.FoCidade.codigo <> NUMERO_INDEFINIDO)then
        begin
          plsEdCidade.Text := Self.FoCidade.nome;
          Self.FoFuncoes.focarComponente(plsEdNome);
        end
        else
          plsEdCidade.Clear;
        FreeAndNil(frmSelecionaRegistroCidade);
      end;
    end;

  end;

end;

procedure TfrmCadBairro.VerificarCidadeExiste();
begin
  if(plsEdCidade.Text <> STRING_INDEFINIDO)then
  begin
    FoConjuntoDadosCidade.SetFiltro('nome ' + ' LIKE ' + QuotedStr('%' + plsEdCidade.Text + '%'));
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
  end;
end;

(* fim - procedimentos de controle *)

procedure TfrmCadBairro.FormCreate(Sender: TObject);
begin
  inherited;
  Self.FoBairro := TObjBairro.Create;
  FoConjuntoDadosCidade := TConjuntoDadosCidade.CriaObjeto;  
end;

procedure TfrmCadBairro.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(Self.FoBairro);
  FreeAndNil(FoConjuntoDadosCidade);
end;

procedure TfrmCadBairro.tlBtnNovoClick(Sender: TObject);
begin
  inherited;
  //Self.novo;
end;

procedure TfrmCadBairro.tlBtnEditarClick(Sender: TObject);
begin
  inherited;
  // visibilidade(OPC_EDITAR);
end;

procedure TfrmCadBairro.tlBtnSalvarClick(Sender: TObject);
begin
  inherited;
  // Self.salvar();
end;

procedure TfrmCadBairro.tlBtnExcluirClick(Sender: TObject);
begin
  inherited;
  // Self.excluir();
end;

procedure TfrmCadBairro.tlBtnCancelarClick(Sender: TObject);
begin
  inherited;
  // visibilidade(OPC_CANCELAR);
end;

procedure TfrmCadBairro.plsEdCodigoExit(Sender: TObject);
begin
  inherited;
  if(Assigned(Self.FoPesquisa))then
    Self.FoPesquisa.Hide;

  if(FiFuncaoRegistro = FUNCAO_REGISTRO_NENHUM)and(plsEdCodigo.Text = STRING_INDEFINIDO)
  and(FnCampoPesquisou = CAMPO_PESQUISOU_POR_CODIGO)then
  begin
    limparObjeto();
    limparTela(Self);
  end;
end;

procedure TfrmCadBairro.plsEdNomeExit(Sender: TObject);
begin
  inherited;
  if(Assigned(Self.FoPesquisa))then
    Self.FoPesquisa.Hide;

  if(FiFuncaoRegistro = FUNCAO_REGISTRO_NENHUM)and(plsEdNome.Text = STRING_INDEFINIDO)
  and(FnCampoPesquisou = CAMPO_PESQUISOU_POR_NOME)then
  begin
    limparObjeto();
    limparTela(Self);
  end;
end;

procedure TfrmCadBairro.spBtnBuscaCidadeClick(Sender: TObject);
begin
  inherited;
  AbreTelaSelecaoCidade(fnSELECIONAR_CIDADE_NORMAL);
end;

procedure TfrmCadBairro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if(Key=#27)then
    Self.Close;
end;

procedure TfrmCadBairro.plsEdCodigoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  sValor: string;
begin
  inherited;
  if (Key in[48,49,50,51,52,53,54,55,56,57,8])then //48..57 = n�meros - 8 = backspace
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
        FnCampoPesquisou := CAMPO_PESQUISOU_POR_CODIGO;      
        sValor := plsEdCodigo.Text;
        Self.FoPesquisa.atualizarPesquisando('CC_CODIGO', 'C�digo:', sValor, cdsDados);
        Self.FoPesquisa.Show;
      end;
    end;
  end;

  Self.FbPesquisouKeyEnter := False;
end;

procedure TfrmCadBairro.plsEdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  sValor: string;
begin
  inherited;
  if (Self.FbPodePesquisar)and(not(Self.FbPesquisouKeyEnter)) then
  begin
    if(Key=27)then
    begin
      if(Assigned(Self.FoPesquisa))then
        Self.FoPesquisa.Hide;
    end
    else
    begin
      if(Self.FoFuncoes.verificarCaracterPertenceConjuntoTeclasAceitas(Key,[alfanumericas]))then
      begin
        sValor := plsEdNome.Text;
        if(sValor <> STRING_INDEFINIDO)then
        begin
          FnCampoPesquisou := CAMPO_PESQUISOU_POR_NOME;        
          sValor := UpperCase(sValor);
          Self.FoPesquisa.atualizarPesquisando('NOME', 'Nome:', sValor, cdsDados);
          Self.FoPesquisa.Show;
        end;
      end;
    end;
  end;

  Self.FbPesquisouKeyEnter := False;
end;

procedure TfrmCadBairro.FormShow(Sender: TObject);
begin
  inherited;
  //caso for pra inserir com uma cidade definida
  if(Self.FoCidadeAux.codigo <> NUMERO_INDEFINIDO)then
  begin
    Self.FoCidade.codigo := Self.FoCidadeAux.codigo;
    Self.FoCidade.nome := Self.FoCidadeAux.nome;
    plsEdCidade.Text := Self.FoCidade.nome;
    pnlCidade.Enabled := False;
    Self.FoFuncoes.focarComponente(plsEdNome);
  end;
end;

procedure TfrmCadBairro.plsEdCidadeExit(Sender: TObject);
begin
  inherited;
  VerificarCidadeExiste();
end;

end.
