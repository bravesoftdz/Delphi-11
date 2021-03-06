(*
tela est� ok para implementa��o dos m�todos/padr�es
*)

unit unSelecionaRegistroTipoImovel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unSelecionaRegistro, DBClient, Provider, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls, plsComboBox,
  plsEdit, Buttons, ExtCtrls;

type
  TfrmSelecionaRegistroTipoImovel = class(TfrmSelecionaRegistro)
    zqrySelecionarRegistroCODIGO: TIntegerField;
    zqrySelecionarRegistroNOME: TStringField;
    zqrySelecionarRegistroCC_CODIGO: TStringField;
    cdsSelecionarRegistroCODIGO: TIntegerField;
    cdsSelecionarRegistroNOME: TStringField;
    cdsSelecionarRegistroCC_CODIGO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure plsCbBxCampoPesquisarChange(Sender: TObject);
    procedure cdsSelecionarRegistroAfterScroll(DataSet: TDataSet);
    procedure plsEdValorPesquisarChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
    procedure selecionouRegistro(); override;
    procedure filtrarPesquisa(); override;
    procedure configurarCaracteresAceitosPesquisa(); override;

    procedure inserirNovoRegistro(); override;
    procedure ConfigurarCampoPesquisa(); override;
    //seleciona todos os registros do conjunto de dados da tela pai
    procedure SelecionarTodosRegistrosConjuntoDadosTelaPai();
  end;

var
  frmSelecionaRegistroTipoImovel: TfrmSelecionaRegistroTipoImovel;

implementation

uses unConstantes, unCadImoveis, unCadImovelInteresse, unCadTipoImovel;

{$R *.dfm}

{ TfrmSelecionaRegistroTipoImovel }

{***** Minhas Procedures - inicio *****}

procedure TfrmSelecionaRegistroTipoImovel.passarParametro(pTipo: String; pParametros: OleVariant);
var
  sCodTipoImovelNovo: String;
begin
  inherited;

  if(pTipo = PRM_INSERIU_REGISTRO_AO_ESTAR_SELECIONANDO)then
  begin
    Self.selecionarTodosRegistros();
    SelecionarTodosRegistrosConjuntoDadosTelaPai();
    if(MessageDlg('Selecionar o tipo de im�vel que foi cadastrado?',mtConfirmation,[mbYes,mbNo],0)=mrYes)then
    begin
      sCodTipoImovelNovo := pParametros;
      cdsSelecionarRegistro.Locate('CODIGO', sCodTipoImovelNovo, []);
      dbGrdDadosDblClick(Self);
    end;
  end

  else if(pTipo = PRM_DEFINE_FILTRO_PADRAO_TELA_SELECAO)then
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
    FbMostraMensagemNaoEncontrouRegistro := False;
    if(pParametros[0] = PRM_PESQUISA_NOME)then
      filtrarPesquisa();
    FbMostraMensagemNaoEncontrouRegistro := True;
    FbSelecionarTodos := pParametros[2];
  end;
end;

procedure TfrmSelecionaRegistroTipoImovel.filtrarPesquisa();
begin
  if((Self.FsCampoPesquisa = 'NOME')or(Self.FsCampoPesquisa = 'CC_CODIGO')) then
  begin
    cdsSelecionarRegistro.Filter := Self.FsCampoPesquisa + ' LIKE ' + QuotedStr('%' + plsEdValorPesquisar.Text + '%');
    cdsSelecionarRegistro.Filtered := true;
  end;

  if(cdsSelecionarRegistro.RecordCount=0)then
  begin
    if(FbMostraMensagemNaoEncontrouRegistro)then
      MessageDlg('Nenhum tipo de im�vel encontrado.',mtInformation,[mbOK],0);
    cdsSelecionarRegistro.Filter := STRING_INDEFINIDO;
    cdsSelecionarRegistro.Filtered := true;
    plsEdValorPesquisar.Clear;
  end;
end;

procedure TfrmSelecionaRegistroTipoImovel.selecionarTodosRegistros();
begin
  if(FbSelecionarTodos)then
  begin
    cdsSelecionarRegistro.Filter := '';
    cdsSelecionarRegistro.Filtered := False;
    cdsSelecionarRegistro.Close;

    zQrySelecionarRegistro.Close;
    zQrySelecionarRegistro.SQL.Clear;
    zQrySelecionarRegistro.SQL.Add('SELECT codigo, nome, CAST(codigo AS VARCHAR(10)) AS cc_codigo ');
    zQrySelecionarRegistro.SQL.Add('FROM tipo_imovel ');
    zQrySelecionarRegistro.SQL.Add(FoFuncoes.inserirCondicaoSelectNaoTrazerRegistroNulo());
    zQrySelecionarRegistro.SQL.Add('ORDER BY nome');
    zQrySelecionarRegistro.Open;
    cdsSelecionarRegistro.Open;
    cdsSelecionarRegistro.First;
  end;

  FbSelecionarTodos := True;
end;

procedure TfrmSelecionaRegistroTipoImovel.selecionouRegistro();
begin

  if(cdsSelecionarRegistro.Active)then
  begin
    if(Self.FiTelaChamou = FORM_CAD_IMOVEL)then //TfrmCadImoveis
    begin
      frmCadImoveis.FoTipoImovel.codigo := FiCodigo;
      frmCadImoveis.FoTipoImovel.nome := FsNome;
    end
    else if(Self.FiTelaChamou = FORM_CAD_IMOVEL_INTERESSE)then //TfrmCadImovelInteresse
    begin
      frmCadImovelInteresse.FoTipoImovel.codigo := FiCodigo;
      frmCadImovelInteresse.FoTipoImovel.nome := FsNome;
    end;
  end;

  inherited;
end;

procedure TfrmSelecionaRegistroTipoImovel.configurarCaracteresAceitosPesquisa();
begin
  if(Self.FsCampoPesquisa = 'NOME')then
    plsEdValorPesquisar.plsCaracteresAceitos := todos
  else if(Self.FsCampoPesquisa = 'CC_CODIGO')then
    plsEdValorPesquisar.plsCaracteresAceitos := numeros;
end;

procedure TfrmSelecionaRegistroTipoImovel.inserirNovoRegistro();
begin
  try
    Application.CreateForm(TfrmCadTipoImovel,frmCadTipoImovel);
    frmCadTipoImovel.iniciarTela(frmCadTipoImovel);
    frmCadTipoImovel.passarParametro(PRM_INSERE_REGISTRO_AO_ESTAR_SELECIONANDO, FORM_SELECIONA_REGISTRO_TIPO_IMOVEL);
    frmCadTipoImovel.ShowModal;
  finally
    FreeAndNil(frmCadTipoImovel);
  end;
end;

procedure TfrmSelecionaRegistroTipoImovel.ConfigurarCampoPesquisa();
begin
  plsEdValorPesquisar.Clear;
  FoFuncoes.focarComponente(plsEdValorPesquisar);

  if(plsCbBxCampoPesquisar.ItemIndex = 0)then //c�digo
    plsEdValorPesquisar.plsCaracteresAceitos := numeros
  else if(plsCbBxCampoPesquisar.ItemIndex = 1)then //nome
    plsEdValorPesquisar.plsCaracteresAceitos := todos;
end;

//seleciona todos os registros do conjunto de dados da tela pai
procedure TfrmSelecionaRegistroTipoImovel.SelecionarTodosRegistrosConjuntoDadosTelaPai();
var
  vParametros: Variant;
begin
  vParametros := VarArrayCreate([0,0],varVariant);
  vParametros[0] := CONJUNTO_DADOS_TIPO_IMOVEL;

  if(Self.FiTelaChamou = FORM_CAD_IMOVEL_INTERESSE)then //TfrmCadImovelInteresse
    frmCadImovelInteresse.passarParametro(PRM_SELECIONAR_TODOS_REGISTROS_CONJUNTO_DADOS, vParametros);
end;

{***** Minhas Procedures - fim *****}

procedure TfrmSelecionaRegistroTipoImovel.FormCreate(Sender: TObject);
begin
  inherited;
  Self.FiCodigo := NUMERO_INDEFINIDO;
  Self.FsNome := STRING_INDEFINIDO;
  FbSelecionarTodos := True;
  FbMostraMensagemNaoEncontrouRegistro := True;
  selecionarTodosRegistros();
end;

procedure TfrmSelecionaRegistroTipoImovel.plsCbBxCampoPesquisarChange(
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

procedure TfrmSelecionaRegistroTipoImovel.cdsSelecionarRegistroAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  Self.FiCodigo := cdsSelecionarRegistroCODIGO.AsInteger;
  Self.FsNome := cdsSelecionarRegistroNOME.AsString;
end;

procedure TfrmSelecionaRegistroTipoImovel.plsEdValorPesquisarChange(
  Sender: TObject);
begin
  inherited;
  if ((Self.FsCampoPesquisa = 'CC_CODIGO')or(Self.FsCampoPesquisa = 'NOME'))then
  begin
    cdsSelecionarRegistro.Filter := Self.FsCampoPesquisa + ' LIKE ' + QuotedStr('%' + plsEdValorPesquisar.Text + '%');
    cdsSelecionarRegistro.Filtered := True;
    if(cdsSelecionarRegistro.RecordCount=0)then
    begin
      MessageDlg('Nenhum tipo de im�vel encontrado.',mtInformation,[mbOK],0);
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

procedure TfrmSelecionaRegistroTipoImovel.FormShow(Sender: TObject);
begin
  inherited;
  FoFuncoes.focarComponente(plsEdValorPesquisar);
end;

end.
