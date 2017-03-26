unit unSelecionaRegistroCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unSelecionaRegistro, DBClient, Provider, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls, plsComboBox,
  plsEdit, unFuncoes, Buttons, ExtCtrls;

type
  TfrmSelecionaRegistroCidade = class(TfrmSelecionaRegistro)
    zqrySelecionarRegistroCODIGO: TIntegerField;
    zqrySelecionarRegistroNOME: TStringField;
    zqrySelecionarRegistroCC_CODIGO: TStringField;
    zqrySelecionarRegistroSIGLA: TStringField;
    cdsSelecionarRegistroCODIGO: TIntegerField;
    cdsSelecionarRegistroNOME: TStringField;
    cdsSelecionarRegistroCC_CODIGO: TStringField;
    cdsSelecionarRegistroSIGLA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure plsCbBxCampoPesquisarChange(Sender: TObject);
    procedure cdsSelecionarRegistroAfterScroll(DataSet: TDataSet);
    procedure plsEdValorPesquisarChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    FiCodigo: integer;
    FiFkCodEstado: integer;
    FsNome: string;
    FoFuncoes: TFuncoes;
    FsCampoPesquisa: string;
  public
    procedure passarParametro(pTipo:String; pValores:OleVariant); override;
    procedure selecionarTodosRegistros(); override;
    procedure selecionouRegistro(); override;
    procedure filtrarPesquisa(); override;
    procedure configurarCaracteresAceitosPesquisa(); override;
    procedure inserirNovoRegistro(); override;
    procedure ConfigurarCampoPesquisa(); override;
    //seleciona todos os registros do conjunto de dados da tela pai
    procedure SelecionarTodosRegistrosConjuntoDadosTelaPai();
  end;

var
  frmSelecionaRegistroCidade: TfrmSelecionaRegistroCidade;

implementation

uses unCadBairro, unConstantes, unCadCliente, unCadPessoaFisica,
  unCadImoveis, unCadCidade, unCadPessoaJuridica,
  unCadClientePessoaJuridica;

{$R *.dfm}

{ TfrmSelecionaRegistroCidade }

{***** Minhas Procedures - inicio *****}

procedure TfrmSelecionaRegistroCidade.passarParametro(pTipo:String; pValores:OleVariant);
var
  sCodCidadeNova: String;
begin
  inherited;
  if(pTipo = 'FK_COD_ESTADO')then
  begin
    if(VarIsNumeric(pValores))then
      Self.FiFkCodEstado := pValores;
  end

  else if(pTipo = PRM_INSERIU_REGISTRO_AO_ESTAR_SELECIONANDO)then
  begin
    Self.selecionarTodosRegistros();
    SelecionarTodosRegistrosConjuntoDadosTelaPai();
    if(MessageDlg('Selecionar a cidade que foi cadastrada?',mtConfirmation,[mbYes,mbNo],0)=mrYes)then
    begin
      sCodCidadeNova := pValores;
      cdsSelecionarRegistro.Locate('CODIGO', sCodCidadeNova, []);
      dbGrdDadosDblClick(Self);
    end;
  end

  else if(pTipo = PRM_DEFINE_FILTRO_PADRAO_TELA_SELECAO)then
  begin
    plsCbBxCampoPesquisar.ItemIndex := 1;
    FsCampoPesquisa := 'NOME';
    ConfigurarCampoPesquisa();
  end;
end;

procedure TfrmSelecionaRegistroCidade.filtrarPesquisa();
begin
  if((Self.FsCampoPesquisa = 'NOME')or(Self.FsCampoPesquisa = 'CC_CODIGO')) then
  begin
    cdsSelecionarRegistro.Filter := Self.FsCampoPesquisa + ' LIKE ' + QuotedStr('%' + plsEdValorPesquisar.Text + '%');
    cdsSelecionarRegistro.Filtered := true;
  end;

  if(cdsSelecionarRegistro.RecordCount=0)then
  begin
    MessageDlg('Nenhum registro encontrado.',mtInformation,[mbOK],0);
    cdsSelecionarRegistro.Filter := STRING_INDEFINIDO;
    cdsSelecionarRegistro.Filtered := true;
    plsEdValorPesquisar.Clear;
  end;
end;

procedure TfrmSelecionaRegistroCidade.selecionarTodosRegistros();
begin
  cdsSelecionarRegistro.Filter := '';
  cdsSelecionarRegistro.Filtered := False;
  cdsSelecionarRegistro.Close;

  zQrySelecionarRegistro.Close;
  zQrySelecionarRegistro.SQL.Clear;
  zQrySelecionarRegistro.SQL.Add('SELECT c.codigo, c.nome, CAST(c.codigo AS VARCHAR(10)) AS cc_codigo,e.sigla ');
  zQrySelecionarRegistro.SQL.Add('FROM cidade c ');
  zQrySelecionarRegistro.SQL.Add('JOIN estado e ON c.cod_fk_estado = e.codigo ');
  zQrySelecionarRegistro.SQL.Add(FoFuncoes.inserirCondicaoSelectNaoTrazerRegistroNulo('c'));
  if(Self.FiFkCodEstado <> NUMERO_INDEFINIDO)then
  begin
    zQrySelecionarRegistro.SQL.Add('AND c.cod_fk_estado=:fkEst ');
    zQrySelecionarRegistro.ParamByName('fkEst').AsInteger := Self.FiFkCodEstado;
  end;
  zqrySelecionarRegistro.SQL.Add('ORDER BY c.nome ');
  zQrySelecionarRegistro.Open;
  cdsSelecionarRegistro.Open;
  cdsSelecionarRegistro.First;
end;

procedure TfrmSelecionaRegistroCidade.selecionouRegistro();
begin

  if(cdsSelecionarRegistro.Active)then
  begin
    if(Self.FiTelaChamou = FORM_CAD_BAIRRO)then //TfrmCadBairro
    begin
      frmCadBairro.FoCidade.codigo := FiCodigo;
      frmCadBairro.FoCidade.nome := FsNome;
    end
    else if(Self.FiTelaChamou = FORM_CAD_CLIENTE)then //TfrmCadCliente
    begin
      frmCadCliente.FoCidade.codigo := FiCodigo;
      frmCadCliente.FoCidade.nome := FsNome;
    end
    else if(Self.FiTelaChamou = FORM_CAD_CLIENTE_PESSOA_JURIDICA)then //TfrmCadClientePessoaJuridica
    begin
      frmCadClientePessoaJuridica.FoCidade.codigo := FiCodigo;
      frmCadClientePessoaJuridica.FoCidade.nome := FsNome;
    end
    else if(Self.FiTelaChamou = FORM_CAD_PESSOA_FISICA)then //TfrmCadPessoaFisica
    begin
      frmCadPessoaFisica.FoCidade.codigo := FiCodigo;
      frmCadPessoaFisica.FoCidade.nome := FsNome;
    end
    else if(Self.FiTelaChamou = FORM_CAD_PESSOA_JURIDICA)then //TfrmCadPessoaJuridica
    begin
      frmCadPessoaJuridica.FoCidade.codigo := FiCodigo;
      frmCadPessoaJuridica.FoCidade.nome := FsNome;
    end
    else if(Self.FiTelaChamou = FORM_CAD_IMOVEL)then //TfrmCadImoveis
    begin
      frmCadImoveis.FoCidade.codigo := FiCodigo;
      frmCadImoveis.FoCidade.nome := FsNome;
    end;
  end;

  inherited;
end;

procedure TfrmSelecionaRegistroCidade.configurarCaracteresAceitosPesquisa();
begin
  if(Self.FsCampoPesquisa = 'NOME')then
    plsEdValorPesquisar.plsCaracteresAceitos := todos
  else if(Self.FsCampoPesquisa = 'CC_CODIGO') then
    plsEdValorPesquisar.plsCaracteresAceitos := numeros;
end;

procedure TfrmSelecionaRegistroCidade.inserirNovoRegistro();
begin
  try
    Application.CreateForm(TfrmCadCidade,frmCadCidade);
    frmCadCidade.iniciarTela(frmCadCidade);
    frmCadCidade.passarParametro(PRM_INSERE_REGISTRO_AO_ESTAR_SELECIONANDO, FORM_SELECIONA_REGISTRO_CIDADE);
    frmCadCidade.passarParametro(PRM_DEFINE_ESTADO_CIDADE_INSERINDO, Self.FiFkCodEstado);
    frmCadCidade.ShowModal;
  finally
    FreeAndNil(frmCadCidade);
  end;
end;

procedure TfrmSelecionaRegistroCidade.ConfigurarCampoPesquisa();
begin
  plsEdValorPesquisar.Clear;
  FoFuncoes.focarComponente(plsEdValorPesquisar);

  if(plsCbBxCampoPesquisar.ItemIndex = 0)then //c�digo
    plsEdValorPesquisar.plsCaracteresAceitos := numeros
  else if(plsCbBxCampoPesquisar.ItemIndex = 1)then //nome
    plsEdValorPesquisar.plsCaracteresAceitos := todos;
end;

//seleciona todos os registros do conjunto de dados da tela pai
procedure TfrmSelecionaRegistroCidade.SelecionarTodosRegistrosConjuntoDadosTelaPai();
begin
  if(Self.FiTelaChamou = FORM_CAD_BAIRRO)then //TfrmCadBairro
  begin
    frmCadBairro.passarParametro(PRM_SELECIONAR_TODOS_REGISTROS_CONJUNTO_DADOS, null);
  end;
end;

{***** Minhas Procedures - fim *****}

procedure TfrmSelecionaRegistroCidade.FormCreate(Sender: TObject);
begin
  inherited;
  Self.FiCodigo := NUMERO_INDEFINIDO;
  Self.FsNome := STRING_INDEFINIDO;
  Self.FiFkCodEstado := NUMERO_INDEFINIDO;
  Self.FoFuncoes := TFuncoes.Create;
  selecionarTodosRegistros();
end;

procedure TfrmSelecionaRegistroCidade.plsCbBxCampoPesquisarChange(
  Sender: TObject);
begin
  inherited;
  Self.FsCampoPesquisa := STRING_INDEFINIDO; //default
  case plsCbBxCampoPesquisar.ItemIndex of
    0: Self.FsCampoPesquisa := 'CC_CODIGO';
    1: Self.FsCampoPesquisa := 'NOME';
  end;

  ConfigurarCampoPesquisa();
end;

procedure TfrmSelecionaRegistroCidade.cdsSelecionarRegistroAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  Self.FiCodigo := cdsSelecionarRegistroCODIGO.AsInteger;
  Self.FsNome := cdsSelecionarRegistroNOME.AsString;
end;

procedure TfrmSelecionaRegistroCidade.plsEdValorPesquisarChange(
  Sender: TObject);
begin
  inherited;
  if ((Self.FsCampoPesquisa = 'CC_CODIGO')or(Self.FsCampoPesquisa = 'NOME'))then
  begin
    cdsSelecionarRegistro.Filter := Self.FsCampoPesquisa + ' LIKE ' + QuotedStr('%' + plsEdValorPesquisar.Text + '%');
    cdsSelecionarRegistro.Filtered := True;
    if(cdsSelecionarRegistro.RecordCount=0)then
    begin
      MessageDlg('Nenhuma cidade encontrado.',mtInformation,[mbOK],0);
      selecionarTodosRegistros();
      plsEdValorPesquisar.Clear;
    end;
  end
  else
  //retira os filtro
  begin
    cdsSelecionarRegistro.Filter := STRING_INDEFINIDO;
    cdsSelecionarRegistro.Filtered := False;
  end;
end;

procedure TfrmSelecionaRegistroCidade.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FoFuncoes);
end;

procedure TfrmSelecionaRegistroCidade.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  //apertou 'ESC', ent�o n�o limpa o endere�o
  if(Key=#27)then
  begin
    if(Self.FiTelaChamou = FORM_CAD_CLIENTE)then //TfrmCadCliente
      frmCadCliente.passarParametro(PRM_NAO_LIMPAR_ENDERECO, null)

    else if(Self.FiTelaChamou = FORM_CAD_PESSOA_FISICA)then //TfrmCadPessoaFisica
      frmCadPessoaFisica.passarParametro(PRM_NAO_LIMPAR_ENDERECO, null)

    else if(Self.FiTelaChamou = FORM_CAD_PESSOA_JURIDICA)then //TfrmCadPessoaJuridica
      frmCadPessoaJuridica.passarParametro(PRM_NAO_LIMPAR_ENDERECO, null)

    else if(Self.FiTelaChamou = FORM_CAD_IMOVEL)then //TfrmCadImoveis
      frmCadImoveis.passarParametro(PRM_NAO_LIMPAR_ENDERECO, null);
  end;

  inherited;
end;

procedure TfrmSelecionaRegistroCidade.FormShow(Sender: TObject);
begin
  inherited;
  FoFuncoes.focarComponente(plsEdValorPesquisar);
end;

end.
