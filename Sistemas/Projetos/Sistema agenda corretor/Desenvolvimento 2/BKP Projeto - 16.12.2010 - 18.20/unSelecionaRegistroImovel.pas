unit unSelecionaRegistroImovel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unSelecionaRegistro, DBClient, Provider, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls, plsComboBox,
  plsEdit, unFuncoes, Buttons, ExtCtrls;

type
  TfrmSelecionaRegistroImovel = class(TfrmSelecionaRegistro)
    plsCbBxValorPesquisa: TPlsComboBox;
    zqrySelecionarRegistroCODIGO: TIntegerField;
    zqrySelecionarRegistroSTATUS: TSmallintField;
    zqrySelecionarRegistroCOD_FK_TIPO_IMOVEL: TIntegerField;
    zqrySelecionarRegistroCOD_FK_ESTADO: TIntegerField;
    zqrySelecionarRegistroCOD_FK_CIDADE: TIntegerField;
    zqrySelecionarRegistroSITUACAO_DESEJAVEL: TStringField;
    zqrySelecionarRegistroVALOR_IMOVEL: TFloatField;
    zqrySelecionarRegistroNOME_TIPO_IMOVEL: TStringField;
    zqrySelecionarRegistroSIGLA_ESTADO: TStringField;
    zqrySelecionarRegistroNOME_CIDADE: TStringField;
    zqrySelecionarRegistroCC_CODIGO: TStringField;
    zqrySelecionarRegistroCC_VALOR_IMOVEL: TStringField;
    cdsSelecionarRegistroCODIGO: TIntegerField;
    cdsSelecionarRegistroSTATUS: TSmallintField;
    cdsSelecionarRegistroCOD_FK_TIPO_IMOVEL: TIntegerField;
    cdsSelecionarRegistroCOD_FK_ESTADO: TIntegerField;
    cdsSelecionarRegistroCOD_FK_CIDADE: TIntegerField;
    cdsSelecionarRegistroSITUACAO_DESEJAVEL: TStringField;
    cdsSelecionarRegistroVALOR_IMOVEL: TFloatField;
    cdsSelecionarRegistroNOME_TIPO_IMOVEL: TStringField;
    cdsSelecionarRegistroSIGLA_ESTADO: TStringField;
    cdsSelecionarRegistroNOME_CIDADE: TStringField;
    cdsSelecionarRegistroCC_CODIGO: TStringField;
    cdsSelecionarRegistroCC_VALOR_IMOVEL: TStringField;
    procedure plsCbBxValorPesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure plsEdValorPesquisarChange(Sender: TObject);
    procedure plsCbBxCampoPesquisarChange(Sender: TObject);
    procedure cdsSelecionarRegistroAfterScroll(DataSet: TDataSet);
  private
    FoFuncoes: TFuncoes;
    FiCodigo: integer;
    FsNome: string;
    FsCampoPesquisa: string;
    FsFiltro: string;
  public
    procedure passarParametro(pTipo:String; pValores:OleVariant); override;
  protected
    procedure selecionarTodosRegistros(); override;
    procedure formatarValores(); override;
    procedure mostrarCampoValorPesquisa(psCampo: String);
    procedure popularComboBoxValorPesquisa(psCampo: String);
    procedure filtrarPesquisa(); override;
    procedure selecionouRegistro(); override;
    procedure configurarCaracteresAceitosPesquisa(); override;
    procedure popularCampoInteiroTipoString(); override;
    procedure inserirNovoRegistro(); override;
  end;

var
  frmSelecionaRegistroImovel: TfrmSelecionaRegistroImovel;

const
  pCONST_CAMPO_TEXTO = 'sCampoTexto';
  pCONST_SITUACAO_DESEJAVEL = 'sSituacaoDesejavel';
  pCONST_SIM_NAO = 'sSimNao';

implementation

uses unConstantes, unDM, unCadAgenciamento, unCadImoveis, unCadVenda;

{$R *.dfm}

{ TfrmSelecionaRegistroImovel }

(* procedimentos de controle *)

procedure TfrmSelecionaRegistroImovel.passarParametro(pTipo:String; pValores:OleVariant);
var
  sCodImovelNovo: String;
begin
  inherited;

  if(pTipo = PRM_INICIAR_TELA)then
  begin
    selecionarTodosRegistros();
    plsCbBxCampoPesquisar.ItemIndex := 0;
    plsCbBxValorPesquisa.Visible := False;
    plsEdValorPesquisar.Visible := True;
    Self.FsCampoPesquisa := 'CC_CODIGO';
  end

  else if(pTipo = PRM_PESQUISAR_REGISTRO)then
  begin
    {pValores[0] = par�metro do campo da pesquisa
    pValores[1] = campo da pesquisa
    pValores[1] = valor da pesquisa
    }
    if (pValores[0] = PRM_PESQUISA_CODIGO)then
    begin
      Self.FsCampoPesquisa := pValores[1];
      plsCbBxCampoPesquisar.ItemIndex := 0;
      plsEdValorPesquisar.Text := pValores[2];
      filtrarPesquisa();
      mostrarCampoValorPesquisa(pCONST_CAMPO_TEXTO);
      plsEdValorPesquisar.Text := pValores[2];
      Self.configurarCaracteresAceitosPesquisa();
    end;
  end

  else if(pTipo = PRM_SELECIONAR_TODOS_REGISTROS)then
    Self.selecionarTodosRegistros()

  else if(pTipo = PRM_INSERIU_REGISTRO_AO_ESTAR_SELECIONANDO)then
  begin
    Self.selecionarTodosRegistros();
    if(MessageDlg('Selecionar o im�vel que foi cadastrado?',mtConfirmation,[mbYes,mbNo],0)=mrYes)then
    begin
      sCodImovelNovo := pValores;
      cdsSelecionarRegistro.Locate('CODIGO', sCodImovelNovo, []);
      dbGrdDadosDblClick(Self);
    end;
  end

  else if(pTipo = PRM_DEFINE_FILTRO)then
  begin
    Self.FsFiltro := pValores;
  end;
end;

procedure TfrmSelecionaRegistroImovel.filtrarPesquisa();
var
  sVlrPesquisa: String;
begin
  if((Self.FsCampoPesquisa = 'CC_CODIGO')or(Self.FsCampoPesquisa = 'NOME_TIPO_IMOVEL')or
  (Self.FsCampoPesquisa = 'SIGLA_ESTADO')or(Self.FsCampoPesquisa = 'NOME_CIDADE'))then
  begin
    if(plsEdValorPesquisar.Text <> STRING_INDEFINIDO)then
    begin
      cdsSelecionarRegistro.Filter := Self.FsCampoPesquisa + ' LIKE ' + QuotedStr('%' + plsEdValorPesquisar.Text + '%');
      cdsSelecionarRegistro.Filtered := True;

      if(cdsSelecionarRegistro.RecordCount=0)then
      begin
        MessageDlg('Nenhum registro encontrado.',mtInformation,[mbOK],0);
        cdsSelecionarRegistro.Filter := STRING_INDEFINIDO;
        cdsSelecionarRegistro.Filtered := True;
        plsEdValorPesquisar.Clear;
      end;
    end
    else
      limparFiltroPesquisa();    
  end
  else if(Self.FsCampoPesquisa = 'SITUACAO_DESEJAVEL')then
  begin
    if(plsCbBxValorPesquisa.ItemIndex <> -1)then
    begin
      cdsSelecionarRegistro.Filter := Self.FsCampoPesquisa + ' LIKE ' + QuotedStr('%' + plsCbBxValorPesquisa.Text + '%');
      cdsSelecionarRegistro.Filtered := True;
      if(cdsSelecionarRegistro.RecordCount=0)then
      begin
        MessageDlg('Nenhum registro encontrado.',mtInformation,[mbOK],0);
        cdsSelecionarRegistro.Filter := STRING_INDEFINIDO;
        cdsSelecionarRegistro.Filtered := True;
        plsCbBxValorPesquisa.ItemIndex := -1;
      end;
    end;
  end
  else if(Self.FsCampoPesquisa = 'CC_VALOR_IMOVEL')then
  begin
    if(plsEdValorPesquisar.Text <> STRING_INDEFINIDO)then
    begin
      sVlrPesquisa := Self.FoFuncoes.retirarCaracteres(plsEdValorPesquisar.Text,',.');
      cdsSelecionarRegistro.Filter := Self.FsCampoPesquisa + ' LIKE ''%' + sVlrPesquisa + '%''';
      cdsSelecionarRegistro.Filtered := True;

      if(cdsSelecionarRegistro.RecordCount=0)then
      begin
        MessageDlg('Nenhum registro encontrado.',mtInformation,[mbOK],0);
        cdsSelecionarRegistro.Filter := STRING_INDEFINIDO;
        cdsSelecionarRegistro.Filtered := True;
        plsEdValorPesquisar.Clear;
      end;
    end;
  end
end;

procedure TfrmSelecionaRegistroImovel.selecionouRegistro();
begin
  if(cdsSelecionarRegistro.Active)then
  begin
    if(Self.FiTelaChamou = FORM_CAD_AGENCIAMENTOS)then //TfrmCadAgenciamento
    begin
      frmCadAgenciamento.FoImovel.codigo := FiCodigo;
      frmCadAgenciamento.FoImovel.nome := FsNome;
    end

    else if(Self.FiTelaChamou = FORM_CAD_VENDAS)then //TfrmCadVenda
    begin
      frmCadVenda.FoImovel.codigo := FiCodigo;
      frmCadVenda.FoImovel.nome := FsNome;
    end;
  end;

  inherited;
end;

procedure TfrmSelecionaRegistroImovel.configurarCaracteresAceitosPesquisa();
begin
  if((Self.FsCampoPesquisa = 'NOME_TIPO_IMOVEL')or(Self.FsCampoPesquisa = 'NOME_TIPO_IMOVEL')or
  (Self.FsCampoPesquisa = 'SIGLA_ESTADO')or(Self.FsCampoPesquisa = 'NOME_CIDADE'))then
    plsEdValorPesquisar.plsCaracteresAceitos := todos;

  if(Self.FsCampoPesquisa = 'CC_CODIGO')then
    plsEdValorPesquisar.plsCaracteresAceitos := numeros;

  if(Self.FsCampoPesquisa = 'CC_VALOR_IMOVEL') then
    plsEdValorPesquisar.plsCaracteresAceitos := monetario;
end;

procedure TfrmSelecionaRegistroImovel.selecionarTodosRegistros();
  function inserirColunas(): String;
  var
    sql: String;
  begin
    sql := 'SELECT i.codigo,i.status,i.cod_fk_tipo_imovel,i.cod_fk_estado,';
    sql := sql + 'i.cod_fk_cidade,i.situacao_desejavel,i.valor_imovel,';
    sql := sql + 't_i.nome as nome_tipo_imovel,e.sigla as sigla_estado,c.nome as nome_cidade,';
    sql := sql + 'CAST(i.codigo AS VARCHAR(10))AS cc_codigo,';
    sql := sql + 'CAST(i.valor_imovel AS VARCHAR(20))AS cc_valor_imovel ';
    Result := sql;
  end;

  function inserirTabelas(): String;
  var
    sql: String;
  begin
    sql := sql + 'FROM imovel i ';
    Result := sql;
  end;

  function inserirCondicoes(): String;
  var
    sql: String;
  begin
    //JOIN poderia ser trocado por WHERE, para inserir table no inserirTabelas()
    sql := 'JOIN tipo_imovel t_i ON i.cod_fk_tipo_imovel=t_i.codigo ';
    sql := sql + 'JOIN estado e ON i.cod_fk_estado=e.codigo ';
    sql := sql + 'JOIN cidade c ON i.cod_fk_cidade=c.codigo ';
    sql := sql + Self.FoFuncoes.inserirCondicaoSelectNaoTrazerRegistroNulo('i');
    if(Self.FsFiltro <> STRING_INDEFINIDO)then
      sql := sql + 'AND ' + Self.FsFiltro;
    Result := sql;
  end;

begin
  cdsSelecionarRegistro.DisableControls;
  cdsSelecionarRegistro.Close;
  zqrySelecionarRegistro.Close;
  zqrySelecionarRegistro.SQL.Clear;
  zqrySelecionarRegistro.SQL.Add(inserirColunas);
  zqrySelecionarRegistro.SQL.Add(inserirTabelas);
  zqrySelecionarRegistro.SQL.Add(inserirCondicoes);
  zqrySelecionarRegistro.Open;
  cdsSelecionarRegistro.Open;
  Self.formatarValores();
  cdsSelecionarRegistro.EnableControls;
end;

procedure TfrmSelecionaRegistroImovel.formatarValores();
var
  sValorMonetario: String;
begin
  if((cdsSelecionarRegistro.Active)and(cdsSelecionarRegistro.RecordCount>0))then
  begin
    cdsSelecionarRegistro.First;
    while(not(cdsSelecionarRegistro.Eof))do
    begin
      sValorMonetario :=  cdsSelecionarRegistroCC_VALOR_IMOVEL.AsString;
      sValorMonetario := StringReplace(sValorMonetario, '.', ',', [rfReplaceAll, rfIgnoreCase]);

      cdsSelecionarRegistro.Edit;
      cdsSelecionarRegistroCC_VALOR_IMOVEL.AsString := Self.FoFuncoes.formatarValorMonetario(sValorMonetario);
      cdsSelecionarRegistro.Post;
      cdsSelecionarRegistro.Next;
    end;
  end;
end;

procedure TfrmSelecionaRegistroImovel.mostrarCampoValorPesquisa(psCampo: String);
begin
  if(psCampo = pCONST_CAMPO_TEXTO)then
  begin
    plsEdValorPesquisar.Visible := True;
    plsCbBxValorPesquisa.Visible := False;
    plsEdValorPesquisar.Clear;
  end
  else if(psCampo = pCONST_SITUACAO_DESEJAVEL)then
  begin
    plsEdValorPesquisar.Visible := False;
    plsCbBxValorPesquisa.Visible := True;
    //popularComboBoxValorPesquisa(psCampo);
    plsCbBxValorPesquisa.ItemIndex := -1;
  end;
(*
  else if(psCampo = pCONST_SIM_NAO)then
  begin
    plsEdValorPesquisar.Visible := False;
    plsCbBxValorPesquisa.Visible := True;
    popularComboBoxValorPesquisa(psCampo);
    plsCbBxValorPesquisa.ItemIndex := -1;
  end;
*)
end;

procedure TfrmSelecionaRegistroImovel.popularComboBoxValorPesquisa(psCampo: String);
begin
(*
  plsCbBxValorPesquisa.Items.Clear;
  if(psCampo = pCONST_SITUACAO_DESEJAVEL)then
  begin
    plsCbBxValorPesquisa.Items.Add('PLANTA');
    plsCbBxValorPesquisa.Items.Add('PRONTO PARA MORAR');
    plsCbBxValorPesquisa.Items.Add('DE TERCEIROS');
  end
  else if(psCampo = pCONST_SIM_NAO)then
  begin
    plsCbBxValorPesquisa.Items.Add('N�O');
    plsCbBxValorPesquisa.Items.Add('SIM');
  end;
*)
  //plsCbBxValorPesquisa
end;

procedure TfrmSelecionaRegistroImovel.popularCampoInteiroTipoString();
begin
end;

procedure TfrmSelecionaRegistroImovel.inserirNovoRegistro();
begin
  try
    Application.CreateForm(TfrmCadImoveis,frmCadImoveis);
    frmCadImoveis.iniciarTela(frmCadImoveis);
    frmCadImoveis.passarParametro(PRM_INSERE_REGISTRO_AO_ESTAR_SELECIONANDO, FORM_SELECIONA_REGISTRO_IMOVEL);
    frmCadImoveis.ShowModal;
  finally
    frmCadImoveis.Free;
  end;
end;

(* fim - procedimentos de controle *)

procedure TfrmSelecionaRegistroImovel.plsCbBxValorPesquisaChange(
  Sender: TObject);
begin
  inherited;
  filtrarPesquisa();
end;

(*procedure TfrmSelecionaRegistroImovel.plsCbBxValorPesquisaChange(
  Sender: TObject);
begin
  inherited;
  filtrarPesquisa();
end;
  *)
procedure TfrmSelecionaRegistroImovel.FormCreate(Sender: TObject);
begin
  inherited;
  Self.FoFuncoes := TFuncoes.Create;
  Self.FsFiltro := STRING_INDEFINIDO;
end;

procedure TfrmSelecionaRegistroImovel.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(Self.FoFuncoes);
end;


procedure TfrmSelecionaRegistroImovel.plsEdValorPesquisarChange(
  Sender: TObject);
begin
  inherited;
  filtrarPesquisa();
end;

procedure TfrmSelecionaRegistroImovel.plsCbBxCampoPesquisarChange(
  Sender: TObject);
begin
  inherited;
  case plsCbBxCampoPesquisar.ItemIndex of
    0:
    begin
      Self.FsCampoPesquisa := 'CC_CODIGO';
      mostrarCampoValorPesquisa(pCONST_CAMPO_TEXTO);
      plsEdValorPesquisar.SetFocus;
    end;
    1:
    begin
      Self.FsCampoPesquisa := 'SITUACAO_DESEJAVEL';
      mostrarCampoValorPesquisa(pCONST_SITUACAO_DESEJAVEL);
      plsCbBxValorPesquisa.SetFocus;
    end;
    2:
    begin
      Self.FsCampoPesquisa := 'CC_VALOR_IMOVEL';
      mostrarCampoValorPesquisa(pCONST_CAMPO_TEXTO);
      plsEdValorPesquisar.SetFocus;
    end;
    3:
    begin
      Self.FsCampoPesquisa := 'NOME_TIPO_IMOVEL';
      mostrarCampoValorPesquisa(pCONST_CAMPO_TEXTO);
      plsEdValorPesquisar.SetFocus;
    end;
    4:
    begin
      Self.FsCampoPesquisa := 'SIGLA_ESTADO';
      mostrarCampoValorPesquisa(pCONST_CAMPO_TEXTO);
      plsEdValorPesquisar.SetFocus;
    end;
    5:
    begin
      Self.FsCampoPesquisa := 'NOME_CIDADE';
      mostrarCampoValorPesquisa(pCONST_CAMPO_TEXTO);
      plsEdValorPesquisar.SetFocus;
    end;
  end;
  configurarCaracteresAceitosPesquisa();
end;

procedure TfrmSelecionaRegistroImovel.cdsSelecionarRegistroAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  Self.FiCodigo := cdsSelecionarRegistroCODIGO.AsInteger;
  Self.FsNome := cdsSelecionarRegistroNOME_CIDADE.AsString + ' - ' +
   cdsSelecionarRegistroSIGLA_ESTADO.AsString;
   if(cdsSelecionarRegistroVALOR_IMOVEL.AsString <> STRING_INDEFINIDO)then
   begin
     Self.FsNome := Self.FsNome + ' - Valor: ' +
     Self.FoFuncoes.formatarValorMonetario(cdsSelecionarRegistroVALOR_IMOVEL.AsString);
   end;
end;

end.


