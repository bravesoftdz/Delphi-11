unit unSelecionaRegistro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBClient, Provider, Grids, DBGrids, StdCtrls,
  plsEdit, plsComboBox, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Buttons, ExtCtrls, unFuncoes;

type
  TfrmSelecionaRegistro = class(TForm)
    dbGrdDados: TDBGrid;
    dsSelecionarRegistro: TDataSource;
    zqrySelecionarRegistro: TZQuery;
    dspSelecionarRegistro: TDataSetProvider;
    cdsSelecionarRegistro: TClientDataSet;
    pnlTopo: TPanel;
    grpBxPesquisar: TGroupBox;
    plsEdValorPesquisar: TPlsEdit;
    plsCbBxCampoPesquisar: TPlsComboBox;
    btBtnNovo: TBitBtn;
    procedure ppMnSelecionarRegistroClick(Sender: TObject);
    procedure ppMnMostrarTodosRegistrosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbGrdDadosDblClick(Sender: TObject);
    procedure btBtnNovoClick(Sender: TObject);
    procedure plsCbBxCampoPesquisarChange(Sender: TObject);
    procedure dbGrdDadosTitleClick(Column: TColumn);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  protected
    FiTelaChamou: Integer;
    FoFuncoes: TFuncoes;
    FnTopo: Integer; //13/04/2011

    procedure passarParametro(pTipo: String; pParametros: OleVariant); dynamic;
    procedure selecionarTodosRegistros(); dynamic;
    procedure formatarValores(); dynamic; //formata valores do cdsSelecionarRegistro que necessitam ser formatados
    procedure limparFiltroPesquisa();
    procedure filtrarPesquisa(); dynamic; abstract;//filtra pesquisa com o que for digitando
    procedure selecionouRegistro(); dynamic;
    procedure configurarCaracteresAceitosPesquisa(); dynamic; abstract; //configura os caracteres aceitos no campo de pesquisa
    //procedure popularCampoInteiroTipoString(); dynamic; abstract; //popula os campo do tipo inteiro, para um campo calculado do tipo string
    procedure inserirNovoRegistro(); dynamic; abstract; //insere um novo registro
    procedure ConfigurarCampoPesquisa(); dynamic; abstract; //configura o campo de pesquisa - caracteres aceito, foco, valor inicial
  public
    //procedure passarParametro(piTelaChamou: Integer);
  end;

var
  frmSelecionaRegistro: TfrmSelecionaRegistro;

implementation

uses unDM, unConstantes;

{$R *.dfm}

{ TfrmSelecionaRegistro }

(* procedimentos de controle *)

procedure TfrmSelecionaRegistro.selecionarTodosRegistros();
begin
//  Self.popularCampoInteiroTipoString();
  formatarValores();
end;

procedure TfrmSelecionaRegistro.formatarValores();
begin
end;

procedure TfrmSelecionaRegistro.selecionouRegistro();
begin
  Self.Close;
end;

//procedure TfrmSelecionaRegistro.passarParametro(piTelaChamou: Integer);
procedure TfrmSelecionaRegistro.passarParametro(pTipo: String; pParametros: OleVariant);
begin
  if(pTipo = PRM_TELA_CHAMOU)then
    Self.FiTelaChamou := pParametros

  else if(pTipo = PRM_AJUSTAR_LARGURA_GRIDE)then
    FoFuncoes.AjustarLarguraColunasTDBGrid(dbGrdDados)

  else if(pTipo = PRM_DEFINIR_TOP_FORM_SELECAO_REGISTRO)then
  begin
    if(VarIsNumeric(pParametros))then
      FnTopo := pParametros;
  end

  else if(pTipo = PRM_VISIBLE_FALSE_BOTAO_NOVO_FORM_SELECAO)then
  begin
    btBtnNovo.Visible := False;
    grpBxPesquisar.Align := alClient;
  end;
end;

procedure TfrmSelecionaRegistro.limparFiltroPesquisa();
begin
  cdsSelecionarRegistro.Filter := STRING_INDEFINIDO;
  cdsSelecionarRegistro.Filtered := True;
end;

(* fim - procedimentos de controle *)

procedure TfrmSelecionaRegistro.ppMnSelecionarRegistroClick(
  Sender: TObject);
begin
  selecionouRegistro();
end;

procedure TfrmSelecionaRegistro.ppMnMostrarTodosRegistrosClick(
  Sender: TObject);
begin
  selecionarTodosRegistros();
end;

procedure TfrmSelecionaRegistro.FormShow(Sender: TObject);
begin
  Self.ActiveControl := dbGrdDados;
  Self.selecionarTodosRegistros();
end;

procedure TfrmSelecionaRegistro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_F5) then
    selecionouRegistro();

  if (ssCtrl in Shift) and (chr(Key) in ['n', 'N']) then
  begin
    if(btBtnNovo.Visible)and(btBtnNovo.Enabled)then
      btBtnNovoClick(btBtnNovo);
  end;
end;

procedure TfrmSelecionaRegistro.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key=#13)then
  begin
    if((cdsSelecionarRegistro.Active)and(cdsSelecionarRegistro.RecordCount>0))then
      selecionouRegistro();
  end

  else if(Key=#27)then
    Close;
end;

procedure TfrmSelecionaRegistro.dbGrdDadosDblClick(Sender: TObject);
begin
  selecionouRegistro();
end;

procedure TfrmSelecionaRegistro.btBtnNovoClick(Sender: TObject);
begin
  InserirNovoRegistro;
end;

procedure TfrmSelecionaRegistro.plsCbBxCampoPesquisarChange(
  Sender: TObject);
begin
  Self.limparFiltroPesquisa();
end;

procedure TfrmSelecionaRegistro.dbGrdDadosTitleClick(Column: TColumn);
begin
  FoFuncoes.CriarIndiceOrdenarDadosColuna(cdsSelecionarRegistro,Column);
end;

procedure TfrmSelecionaRegistro.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FoFuncoes);
end;

procedure TfrmSelecionaRegistro.FormCreate(Sender: TObject);
begin
  FoFuncoes := TFuncoes.Create;
  FnTopo := NUMERO_INDEFINIDO;
end;

end.
