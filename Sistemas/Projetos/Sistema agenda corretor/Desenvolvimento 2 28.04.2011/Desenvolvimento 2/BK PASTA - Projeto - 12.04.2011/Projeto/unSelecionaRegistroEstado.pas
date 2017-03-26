unit unSelecionaRegistroEstado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unSelecionaRegistro, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Menus, Grids, DBGrids, StdCtrls, plsEdit, plsComboBox,
  Provider, DBClient, Buttons, ExtCtrls;

type
  TfrmSelecionaRegistroEstado = class(TfrmSelecionaRegistro)
    cdsSelecionarRegistroCODIGO: TIntegerField;
    cdsSelecionarRegistroNOME: TStringField;
    cdsSelecionarRegistroSIGLA: TStringField;
    cdsSelecionarRegistroCC_CODIGO: TStringField;
    zqrySelecionarRegistroCODIGO: TIntegerField;
    zqrySelecionarRegistroNOME: TStringField;
    zqrySelecionarRegistroSIGLA: TStringField;
    zqrySelecionarRegistroCC_CODIGO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure plsCbBxCampoPesquisarChange(Sender: TObject);
    procedure cdsSelecionarRegistroAfterScroll(DataSet: TDataSet);
    procedure plsEdValorPesquisarChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    FiCodigo: integer;
    FsNome: string;
    FsCampoPesquisa: string;
    FbSelecionarTodos: Boolean;
    //pog - devido ao estar pesquisando por um registro inexistente, e abrir esta tela, a mensagem era apresentada duas vezes 
    FbMostraMensagemNaoEncontrouRegistro: Boolean;
  public
    procedure passarParametro(pTipo: String; pParametros: OleVariant); override;
    procedure selecionarTodosRegistros(); override;
    //procedure popularCampoInteiroTipoString(); override;
    procedure selecionouRegistro(); override;
    procedure filtrarPesquisa(); override;
    procedure configurarCaracteresAceitosPesquisa(); override;
    procedure ConfigurarCampoPesquisa(); override;
    //seleciona todos os registros do conjunto de dados da tela pai
    procedure SelecionarTodosRegistrosConjuntoDadosTelaPai();
  end;

var
  frmSelecionaRegistroEstado: TfrmSelecionaRegistroEstado;

implementation

uses unConstantes, unCadCidade, unCadCliente, unCadPessoaFisica,
  unCadImoveis, unCadPessoaJuridica, unCadClientePessoaJuridica;

{$R *.dfm}

{ TfrmSelecionaRegistroCliente }

{***** Minhas Procedures - inicio *****}

procedure TfrmSelecionaRegistroEstado.passarParametro(pTipo: String; pParametros: OleVariant);
begin
  inherited;

  (* sistema n�o permite inserir estado
  if(pTipo = PRM_INSERIU_REGISTRO_AO_ESTAR_SELECIONANDO)then
  begin
    Self.selecionarTodosRegistros();
    SelecionarTodosRegistrosConjuntoDadosTelaPai();
    if(MessageDlg('Selecionar o meio de capta��o que foi cadastrado?',mtConfirmation,[mbYes,mbNo],0)=mrYes)then
    begin
      sCodMeioCaptacaoNovo := pValores;
      cdsSelecionarRegistro.Locate('CODIGO', sCodMeioCaptacaoNovo, []);
      dbGrdDadosDblClick(Self);
    end;
  end*)

  if(pTipo = PRM_DEFINE_FILTRO_PADRAO_TELA_SELECAO)then
  begin
    plsCbBxCampoPesquisar.ItemIndex := 1;
    FsCampoPesquisa := 'NOME';
    ConfigurarCampoPesquisa();
  end

  else if(pTipo = PRM_ENVIA_FILTRO_PESQUISA)then
  //pParametros[0]: campo do filtro
  //pParametros[1]: valor do filtro
  //pParametros[2]: FbSelecionarTodos - pode selecionar todos os registros
  begin
    plsEdValorPesquisar.Text := VarToStr(pParametros[1]);
    if(pParametros[0] = PRM_PESQUISA_NOME)then
    begin
      plsCbBxCampoPesquisar.ItemIndex := 1;
      FsCampoPesquisa := 'NOME';
      plsEdValorPesquisar.plsCaracteresAceitos := todos;
      FbMostraMensagemNaoEncontrouRegistro := False;
      filtrarPesquisa();
      FbMostraMensagemNaoEncontrouRegistro := True;
    end;
    FbSelecionarTodos := pParametros[2];
  end;
end;


procedure TfrmSelecionaRegistroEstado.filtrarPesquisa();
begin
  if((Self.FsCampoPesquisa = 'NOME')or(Self.FsCampoPesquisa = 'SIGLA')or
   (Self.FsCampoPesquisa = 'CC_CODIGO')) then
  begin
    cdsSelecionarRegistro.Filter := Self.FsCampoPesquisa + ' LIKE ' + QuotedStr('%' + plsEdValorPesquisar.Text + '%');
    cdsSelecionarRegistro.Filtered := true;
  end;

  if(cdsSelecionarRegistro.RecordCount=0)then
  begin
    if(FbMostraMensagemNaoEncontrouRegistro)then
      MessageDlg('Nenhum estado encontrado.',mtInformation,[mbOK],0);
    cdsSelecionarRegistro.Filter := STRING_INDEFINIDO;
    cdsSelecionarRegistro.Filtered := true;
    plsEdValorPesquisar.Clear;
  end;
end;

procedure TfrmSelecionaRegistroEstado.selecionarTodosRegistros();
begin
  if(FbSelecionarTodos)then
  begin
    cdsSelecionarRegistro.Filter := '';
    cdsSelecionarRegistro.Filtered := False;
    cdsSelecionarRegistro.Close;

    zQrySelecionarRegistro.Close;
    zQrySelecionarRegistro.SQL.Clear;
    zQrySelecionarRegistro.SQL.Add('SELECT codigo, nome, sigla, CAST(codigo AS VARCHAR(10))AS cc_codigo ');
    zQrySelecionarRegistro.SQL.Add('FROM estado ');
    zQrySelecionarRegistro.SQL.Add(FoFuncoes.inserirCondicaoSelectNaoTrazerRegistroNulo());
    //zQrySelecionarRegistro.SQL.Add('ORDER BY sigla');
    zQrySelecionarRegistro.SQL.Add('ORDER BY codigo');
    zQrySelecionarRegistro.Open;
    cdsSelecionarRegistro.Open;
    cdsSelecionarRegistro.First;
  end;

  FbSelecionarTodos := True;

  inherited;
end;

{
procedure TfrmSelecionaRegistroEstado.popularCampoInteiroTipoString();
begin
  cdsSelecionarRegistro.First;
  while(not(cdsSelecionarRegistro.Eof))do
  begin
    cdsSelecionarRegistro.Edit;
    cdsSelecionarRegistro.FieldByName('CC_CODIGO').AsString := cdsSelecionarRegistro.FieldByName('CODIGO').AsString;
    cdsSelecionarRegistro.Post;
    cdsSelecionarRegistro.Next;
  end;
  cdsSelecionarRegistro.Active := True;
end;
}

procedure TfrmSelecionaRegistroEstado.selecionouRegistro();
begin

  if(cdsSelecionarRegistro.Active)then
  begin
    if(Self.FiTelaChamou = FORM_CAD_CIDADE)then //TfrmCadCidade
    begin
      frmCadCidade.FoEstado.codigo := FiCodigo;
      frmCadCidade.FoEstado.nome := FsNome;
    end
    else if(Self.FiTelaChamou = FORM_CAD_CLIENTE)then //TfrmCadCliente
    begin
      frmCadCliente.FoEstado.codigo := FiCodigo;
      frmCadCliente.FoEstado.nome := FsNome;
    end
    else if(Self.FiTelaChamou = FORM_CAD_CLIENTE_PESSOA_JURIDICA)then //TfrmCadClientePessoaJuridica
    begin
      frmCadClientePessoaJuridica.FoEstado.codigo := FiCodigo;
      frmCadClientePessoaJuridica.FoEstado.nome := FsNome;
    end
    else if(Self.FiTelaChamou = FORM_CAD_PESSOA_FISICA)then //TfrmCadPessoaFisica
    begin
      frmCadPessoaFisica.FoEstado.codigo := FiCodigo;
      frmCadPessoaFisica.FoEstado.nome := FsNome;
    end
    else if(Self.FiTelaChamou = FORM_CAD_PESSOA_JURIDICA)then //TfrmCadPessoaJuridica
    begin
      frmCadPessoaJuridica.FoEstado.codigo := FiCodigo;
      frmCadPessoaJuridica.FoEstado.nome := FsNome;
    end
    else if(Self.FiTelaChamou = FORM_CAD_IMOVEL)then //TfrmCadImoveis
    begin
      frmCadImoveis.FoEstado.codigo := FiCodigo;
      frmCadImoveis.FoEstado.nome := FsNome;
    end;
  end;

  inherited;
end;

procedure TfrmSelecionaRegistroEstado.configurarCaracteresAceitosPesquisa();
begin
  if((Self.FsCampoPesquisa = 'NOME')or(Self.FsCampoPesquisa = 'SIGLA'))then
    plsEdValorPesquisar.plsCaracteresAceitos := todos
  else if(Self.FsCampoPesquisa = 'CC_CODIGO') then
    plsEdValorPesquisar.plsCaracteresAceitos := numeros;
end;

procedure TfrmSelecionaRegistroEstado.ConfigurarCampoPesquisa();
begin
  plsEdValorPesquisar.Clear;
  FoFuncoes.focarComponente(plsEdValorPesquisar);

  if(plsCbBxCampoPesquisar.ItemIndex = 0)then //c�digo
    plsEdValorPesquisar.plsCaracteresAceitos := numeros
  else if(plsCbBxCampoPesquisar.ItemIndex IN [1,2])then //nome ou sigla
    plsEdValorPesquisar.plsCaracteresAceitos := todos;
end;

//seleciona todos os registros do conjunto de dados da tela pai
procedure TfrmSelecionaRegistroEstado.SelecionarTodosRegistrosConjuntoDadosTelaPai();
var
  vParametros: Variant;
begin
  vParametros := VarArrayCreate([0,0],varVariant);
  vParametros[0] := CONJUNTO_DADOS_ESTADO;

  if(Self.FiTelaChamou = FORM_CAD_CLIENTE)then //TfrmCadCliente
    frmCadCliente.passarParametro(PRM_SELECIONAR_TODOS_REGISTROS_CONJUNTO_DADOS, vParametros)

  else if(Self.FiTelaChamou = FORM_CAD_CLIENTE_PESSOA_JURIDICA)then //TfrmCadClientePessoaJuridica
    frmCadClientePessoaJuridica.passarParametro(PRM_SELECIONAR_TODOS_REGISTROS_CONJUNTO_DADOS, vParametros)

  else if(Self.FiTelaChamou = FORM_CAD_PESSOA_FISICA)then //TfrmCadPessoaFisica
    frmCadPessoaFisica.passarParametro(PRM_SELECIONAR_TODOS_REGISTROS_CONJUNTO_DADOS, vParametros)

  else if(Self.FiTelaChamou = FORM_CAD_PESSOA_JURIDICA)then //TfrmCadPessoaJuridica
    frmCadPessoaJuridica.passarParametro(PRM_SELECIONAR_TODOS_REGISTROS_CONJUNTO_DADOS, vParametros);
end;

{***** Minhas Procedures - fim *****}

procedure TfrmSelecionaRegistroEstado.FormCreate(Sender: TObject);
begin
  inherited;
  Self.FiCodigo := NUMERO_INDEFINIDO;
  Self.FsNome := STRING_INDEFINIDO;
  FbSelecionarTodos := True;
  FbMostraMensagemNaoEncontrouRegistro := True;
  selecionarTodosRegistros();
end;

procedure TfrmSelecionaRegistroEstado.plsCbBxCampoPesquisarChange(
  Sender: TObject);
begin
  inherited;

    Self.FsCampoPesquisa := STRING_INDEFINIDO; //default
  case plsCbBxCampoPesquisar.ItemIndex of
    0: Self.FsCampoPesquisa := 'CC_CODIGO';
    1: Self.FsCampoPesquisa := 'NOME';
    2: Self.FsCampoPesquisa := 'SIGLA';
  end;

  ConfigurarCampoPesquisa();
end;

procedure TfrmSelecionaRegistroEstado.cdsSelecionarRegistroAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  Self.FiCodigo := cdsSelecionarRegistroCODIGO.AsInteger;
  Self.FsNome := cdsSelecionarRegistroNOME.AsString;
end;

procedure TfrmSelecionaRegistroEstado.plsEdValorPesquisarChange(
  Sender: TObject);
begin
  inherited;

  if ((Self.FsCampoPesquisa = 'CC_CODIGO') or (Self.FsCampoPesquisa = 'NOME')
    or (Self.FsCampoPesquisa = 'SIGLA'))then
  begin
    cdsSelecionarRegistro.Filter := Self.FsCampoPesquisa + ' LIKE ' + QuotedStr('%' + plsEdValorPesquisar.Text + '%');
    cdsSelecionarRegistro.Filtered := True;
    if(cdsSelecionarRegistro.RecordCount=0)then
    begin
      MessageDlg('Nenhum estado encontrado.',mtInformation,[mbOK],0);
      selecionarTodosRegistros();
      FoFuncoes.focarComponente(plsEdValorPesquisar);
    end;
  end
  else
  //retira os filtro
  begin
    cdsSelecionarRegistro.Filter := STRING_INDEFINIDO;
    cdsSelecionarRegistro.Filtered := False;
  end;
end;

procedure TfrmSelecionaRegistroEstado.FormKeyPress(Sender: TObject;
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

end.

