unit unSelecionarCaracBemNegociavel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Provider,
  DBClient, StdCtrls, Buttons, ExtCtrls, plsComboBox, unFuncoes;

type
  TfrmSelecionarCaracBemNegociavel = class(TForm)
    pnlSelecionar: TPanel;
    cdsCaracteristicas: TClientDataSet;
    dspCaracteristicas: TDataSetProvider;
    zQryCaracteristicas: TZQuery;
    zQryCaracteristicasCODIGO_GRUPO: TIntegerField;
    zQryCaracteristicasNOME_GRUPO: TStringField;
    zQryCaracteristicasCODIGO_SUB_GRUPO: TIntegerField;
    zQryCaracteristicasNOME_SUB_GRUPO: TStringField;
    cdsCaracteristicasCODIGO_GRUPO: TIntegerField;
    cdsCaracteristicasNOME_GRUPO: TStringField;
    cdsCaracteristicasCODIGO_SUB_GRUPO: TIntegerField;
    cdsCaracteristicasNOME_SUB_GRUPO: TStringField;
    btBtnSelecionar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btBtnSelecionarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
  private
    FnTopGrupo: Integer;
    FnLeftGrupo: Integer;
    FnLeftSubGrupo: Integer;
    FnGrupo: Integer; //total de grupo - gera o name do label do grupo
    FoTPlsComboBox: TPlsComboBox; //combo box que recebe os sub-grupos
    FsCaracateristicas: String; //caracter�sticas selecionadas para o im�vel
    FoReceberCarac: Integer; //quem recebe caracter�sticas do im�vel aqui selecionadas
    FoFuncoes: TFuncoes;

    function GetProximoGrupo: Integer;
    procedure SetProximoTopLeft;
    procedure MontarExecutarSelect;
    procedure CriarGrupo(psNomeGrupo: String);
    procedure SelecionarGrupoSubGrupo(Sender: TObject);
    procedure AdicionarSubGrupo(psNomeSubGrupo: String);
    procedure SetCaracteristicasTelaReceber;
  public
    procedure passarParametro(pTipo:String; pValores:OleVariant);
  end;

var
  frmSelecionarCaracBemNegociavel: TfrmSelecionarCaracBemNegociavel;

implementation

uses unDM, unConstantes, unCadAgenciamento, unCadImovelInteresse;

const
  nTAG_INICIO = 500; //tag do label e comboBox. .tag = nTAG_INICIO + FnGrupo

  nRECEBER_CARAC_CAD_AGENCIACMENTO_VISTA_DESCRICAO = 1; //frmCadAgenciamento.plsMmVistaBemDescricao
  nRECEBER_CARAC_CAD_AGENCIACMENTO_FINANCIAMENTO_DESCRICAO = 2; //frmCadAgenciamento.plsMmFinanciamentoBemDescricao

  nRECEBER_CARAC_CAD_IMOVEL_INTERESSE_VISTA_DESCRICAO = 3; //frmCadImovelInteresse.plsMmVistaBemDescricao
  nRECEBER_CARAC_CAD_IMOVEL_INTERESSE_FINANCIAMENTO_DESCRICAO = 4; //frmCadImovelInteresse.plsMmFinanciamentoBemDescricao

{$R *.dfm}

procedure TfrmSelecionarCaracBemNegociavel.passarParametro(pTipo:String; pValores:OleVariant);
begin
  if(pTipo = PRM_DEFINE_QUEM_RECEBE_CARACTERISTICAS_BEM_NEGOCIAVEL)then
  begin
    FoReceberCarac := pValores[0];
  end;
end;

function TfrmSelecionarCaracBemNegociavel.GetProximoGrupo: Integer;
begin
  Inc(FnGrupo);
  Result := FnGrupo;
end;

procedure TfrmSelecionarCaracBemNegociavel.SetProximoTopLeft;
begin
  if(FnGrupo mod 10 = 0)then
  begin
    FnTopGrupo := 40;
    FnLeftGrupo := FnLeftGrupo + 270;
    FnLeftSubGrupo := FnLeftGrupo + 100;
    frmSelecionarCaracBemNegociavel.Width := 565;
  end
  else
    Inc(FnTopGrupo,30);
end;

procedure TfrmSelecionarCaracBemNegociavel.MontarExecutarSelect;
var
  sGrupo,sSubGrupo: String;
begin
  sGrupo := STRING_INDEFINIDO;
  sSubGrupo := STRING_INDEFINIDO;

  zQryCaracteristicas.Close;
  zQryCaracteristicas.SQL.Clear;
  zQryCaracteristicas.SQL.Add('SELECT g.codigo AS codigo_grupo,g.nome AS nome_grupo, ');
  zQryCaracteristicas.SQL.Add('s.codigo AS codigo_sub_grupo,s.nome AS nome_sub_grupo ');
  zQryCaracteristicas.SQL.Add('FROM grupo_bem_negociavel g ');
  zQryCaracteristicas.SQL.Add('JOIN sub_grupo_bem_negociavel s ON g.codigo = s.cod_fk_grupo ');
  zQryCaracteristicas.SQL.Add(FoFuncoes.inserirCondicaoSelectNaoTrazerRegistroNulo('g'));
  zQryCaracteristicas.SQL.Add('ORDER BY g.nome');
  zQryCaracteristicas.Open;
  cdsCaracteristicas.Open;
  if(cdsCaracteristicas.Active)and(cdsCaracteristicas.RecordCount > NUMERO_INDEFINIDO)then
  begin
    cdsCaracteristicas.First;
    while not(cdsCaracteristicas.Eof)do
    begin
      //inicia um novo grupo
      if(sGrupo <> cdsCaracteristicasNOME_GRUPO.AsString)then
      begin
        CriarGrupo(cdsCaracteristicasNOME_GRUPO.AsString);
        AdicionarSubGrupo(STRING_INDEFINIDO); //1� op��o - em branco
      end;

      AdicionarSubGrupo(cdsCaracteristicasNOME_SUB_GRUPO.AsString);
      sGrupo := cdsCaracteristicasNOME_GRUPO.AsString;
      sSubGrupo := cdsCaracteristicasNOME_SUB_GRUPO.AsString;
      cdsCaracteristicas.Next;
    end;
  end;
end;


procedure TfrmSelecionarCaracBemNegociavel.CriarGrupo(psNomeGrupo: String);
var
  oLabel: TLabel;
  oPlsComboBox: TPlsComboBox;
  n: Integer;
begin
  n := GetProximoGrupo;
  //criando o grupo
  oLabel := TLabel.Create(Self);
  oLabel.Top := FnTopGrupo;
  oLabel.Left := FnLeftGrupo;
  oLabel.Parent := frmSelecionarCaracBemNegociavel;
  oLabel.Caption := psNomeGrupo;
  oLabel.Name := 'lblGrupo' + IntToStr(n);
  oLabel.Enabled := True;
  oLabel.Visible := True;
  oLabel.Font.Name := 'MS Sans Serif';
  oLabel.Font.Size := 8;
  oLabel.Font.Style := [];
  oLabel.Tag := nTAG_INICIO + n;

  //criando  o sub-grupo
  oPlsComboBox := TPlsComboBox.Create(Self);
  oPlsComboBox.Top := FnTopGrupo-6;
  oPlsComboBox.Left := FnLeftSubGrupo;
  oPlsComboBox.Parent := frmSelecionarCaracBemNegociavel;
  oPlsComboBox.Name := 'plsCbBxSubGrupo' + IntToStr(n);
  oPlsComboBox.Enabled := True;
  oPlsComboBox.Visible := True;
  oPlsComboBox.Font.Name := 'MS Sans Serif';
  oPlsComboBox.Font.Size := 8;
  oPlsComboBox.Font.Style := [];
  oPlsComboBox.plsCorPerdeFoco := clWindow;
  oPlsComboBox.plsCorRecebeFoco := clSilver;
  oPlsComboBox.Style := csDropDownList;
  oPlsComboBox.Tag := nTAG_INICIO + n;
  oPlsComboBox.OnChange := SelecionarGrupoSubGrupo;
  FoTPlsComboBox := oPlsComboBox;

  SetProximoTopLeft;
end;

procedure TfrmSelecionarCaracBemNegociavel.SelecionarGrupoSubGrupo(Sender: TObject);
  var
  i: Integer;
  sGrupo,sSubGrupo: String;
  sCaracteristica: String;

  //retorna nome do grupo(label), que possui o mesmo tag do sub-grupo
  function GetNomeGrupo(pnTagSubGrupo:Integer): String;
  var
    sNomeGrupo: String;
    x: Integer;
  begin
    sNomeGrupo := STRING_INDEFINIDO;
    for x:=0 to frmSelecionarCaracBemNegociavel.ComponentCount-1 do
    begin
      if(frmSelecionarCaracBemNegociavel.Components[x] is TLabel)and
      ((frmSelecionarCaracBemNegociavel.Components[x] as TLabel).Tag = pnTagSubGrupo)then
      begin
        sNomeGrupo := (frmSelecionarCaracBemNegociavel.Components[x] as TLabel).Caption;
        Break;
      end;
    end;
    Result := sNomeGrupo;
  end;

  //adiciona caracter�stica a descri��o do im�vel
  procedure AdicionarCaracteristica(psCaracteristica: string);
  begin
    if(FsCaracateristicas = STRING_INDEFINIDO)then
      FsCaracateristicas := psCaracteristica
    else
      FsCaracateristicas := FsCaracateristicas + '; ' + psCaracteristica;
  end;

begin
  FsCaracateristicas := STRING_INDEFINIDO;
  for i:=0 to frmSelecionarCaracBemNegociavel.ComponentCount-1 do
  begin
    if(frmSelecionarCaracBemNegociavel.Components[i] is TPlsComboBox)and
      ((frmSelecionarCaracBemNegociavel.Components[i] as TPlsComboBox).ItemIndex > 0)then //-1=nenhum selecionado; 0=em branco
    begin
      sGrupo := GetNomeGrupo((frmSelecionarCaracBemNegociavel.Components[i] as TPlsComboBox).Tag);
      sSubGrupo := (frmSelecionarCaracBemNegociavel.Components[i] as TPlsComboBox).Text;
      sCaracteristica := sGrupo + '-' + sSubGrupo;
      AdicionarCaracteristica(sCaracteristica);
    end;
  end;

  SetCaracteristicasTelaReceber;
end;

procedure TfrmSelecionarCaracBemNegociavel.AdicionarSubGrupo(psNomeSubGrupo: String);
begin
  FoTPlsComboBox.Items.Add(psNomeSubGrupo);
end;

procedure TfrmSelecionarCaracBemNegociavel.SetCaracteristicasTelaReceber;
begin
  if(FoReceberCarac = nRECEBER_CARAC_CAD_AGENCIACMENTO_VISTA_DESCRICAO)then
    frmCadAgenciamento.plsMmVistaBemDescricao.Text := FsCaracateristicas
  else if(FoReceberCarac = nRECEBER_CARAC_CAD_AGENCIACMENTO_FINANCIAMENTO_DESCRICAO)then
    frmCadAgenciamento.plsMmFinanciamentoBemDescricao.Text := FsCaracateristicas

  else if(FoReceberCarac = nRECEBER_CARAC_CAD_IMOVEL_INTERESSE_VISTA_DESCRICAO)then
    frmCadImovelInteresse.plsMmVistaBemDescricao.Text := FsCaracateristicas
  else if(FoReceberCarac = nRECEBER_CARAC_CAD_IMOVEL_INTERESSE_FINANCIAMENTO_DESCRICAO)then
    frmCadImovelInteresse.plsMmFinanciamentoBemDescricao.Text := FsCaracateristicas;
end;

procedure TfrmSelecionarCaracBemNegociavel.FormCreate(Sender: TObject);
begin
  FnTopGrupo := 40;
  FnLeftGrupo := 10;
  FnLeftSubGrupo := 110;
  FnGrupo := 0;
  FoTPlsComboBox := nil;
  MontarExecutarSelect;
  FoFuncoes := TFuncoes.Create;
end;

procedure TfrmSelecionarCaracBemNegociavel.btBtnSelecionarClick(
  Sender: TObject);
begin
  SelecionarGrupoSubGrupo(Self);
  Self.Close;
end;

procedure TfrmSelecionarCaracBemNegociavel.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key=#27)then
    Self.Close;
end;

procedure TfrmSelecionarCaracBemNegociavel.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FoFuncoes);
end;

end.
