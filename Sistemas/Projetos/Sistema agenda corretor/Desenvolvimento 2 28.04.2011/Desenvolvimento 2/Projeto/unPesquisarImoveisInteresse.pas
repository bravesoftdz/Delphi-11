unit unPesquisarImoveisInteresse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unPesquisa, DB, DBClient, Provider, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  Mask, plsTMaskEdit, plsComboBox, plsEdit, Menus, plsMemo,
  unConjuntoDadosTipoImovel, unConjuntoDadosRegiaoLocalidade;

  type
    TTipoImovel = record
      codigo: Integer;
      nome: string[100];
    end;

  type
    TRegiaoLocalidade = record
      codigo: Integer;
      nome: string[50];
    end;     

type
  TfrmPesquisarImoveisInteresse = class(TfrmPesquisar)
    lblCodigo: TLabel;
    plsEdCodigo: TPlsEdit;
    lblFinalidade: TLabel;
    plsCbBxFinalidade: TPlsComboBox;
    lblSituacao: TLabel;
    plsCbBxSituacao: TPlsComboBox;
    plsCbBxCondicaoPagamento: TPlsComboBox;
    lblCondicaoPagamento: TLabel;
    grpBxDataCaptacao: TGroupBox;
    lblEntreDataCaptacao: TLabel;
    plsMedDataCaptacaoInicio: TPlsMaskEdit;
    plsMedDataCaptacaoFinal: TPlsMaskEdit;
    grpBxValorImovel: TGroupBox;
    lblEntreValorImovel: TLabel;
    plsEdValorImovelInicio: TPlsEdit;
    plsEdValorImovelFim: TPlsEdit;
    ppMnDivisao: TMenuItem;
    ppMnDarBaixa: TMenuItem;
    lblStatus: TLabel;
    plsCbBxStatus: TPlsComboBox;
    mnItDetalhar: TMenuItem;
    rdGrpTipoPessoa: TRadioGroup;
    grpBxNomePessoa: TGroupBox;
    plsEdNomePessoa: TPlsEdit;
    pnlTipoImovel: TPanel;
    lblTipoImovel: TLabel;
    spBtnBuscaTipoImovel: TSpeedButton;
    plsEdTipoImovel: TPlsEdit;
    lblCaracteristica: TLabel;
    plsMmCaracteristica: TPlsMemo;
    pnlRegiaoLocalidade: TPanel;
    lblRegiaoLocalidade: TLabel;
    spBtnBuscaRegiaoLocalidade: TSpeedButton;
    plsEdRegiaoLocalidade: TPlsEdit;
    lblFiltrosUsados: TLabel;
    lblNomeFiltrosUsados: TLabel;
    zQryDadosCODIGO_IMOVEL_INTERESSE: TIntegerField;
    zQryDadosATIVO: TStringField;
    zQryDadosDATA_CAPTACAO: TDateField;
    zQryDadosFINALIDADE_IMOVEL: TStringField;
    zQryDadosIMOVEL_DESEJAVEL: TStringField;
    zQryDadosCC_VALOR_IMOVEL: TStringField;
    zQryDadosCONDICAO_PAGAMENTO: TStringField;
    zQryDadosCC_PGTO_VISTA_CACH: TStringField;
    zQryDadosCC_PGTO_VISTA_VALOR_BEM: TStringField;
    zQryDadosPGTO_VISTA_DESCRICAO_BEM: TStringField;
    zQryDadosCC_PGTO_FINCTO_CACH_FINANCIADO: TStringField;
    zQryDadosCC_PGTO_FINCTO_CACH: TStringField;
    zQryDadosCC_PGTO_FINCTO_VALOR_BEM: TStringField;
    zQryDadosPGTO_FINCTO_DESCRICAO_BEM: TStringField;
    zQryDadosOBSERVACAO: TStringField;
    zQryDadosDATA_BAIXA: TDateTimeField;
    zQryDadosCARACTERISTICAS: TStringField;
    zQryDadosNOME_TIPO_IMOVEL: TStringField;
    zQryDadosTIPO_PESSOA: TStringField;
    zQryDadosNOME_CLIENTE: TStringField;
    cdsDadosCODIGO_IMOVEL_INTERESSE: TIntegerField;
    cdsDadosATIVO: TStringField;
    cdsDadosDATA_CAPTACAO: TDateField;
    cdsDadosFINALIDADE_IMOVEL: TStringField;
    cdsDadosIMOVEL_DESEJAVEL: TStringField;
    cdsDadosCC_VALOR_IMOVEL: TStringField;
    cdsDadosCONDICAO_PAGAMENTO: TStringField;
    cdsDadosCC_PGTO_VISTA_CACH: TStringField;
    cdsDadosCC_PGTO_VISTA_VALOR_BEM: TStringField;
    cdsDadosPGTO_VISTA_DESCRICAO_BEM: TStringField;
    cdsDadosCC_PGTO_FINCTO_CACH_FINANCIADO: TStringField;
    cdsDadosCC_PGTO_FINCTO_CACH: TStringField;
    cdsDadosCC_PGTO_FINCTO_VALOR_BEM: TStringField;
    cdsDadosPGTO_FINCTO_DESCRICAO_BEM: TStringField;
    cdsDadosOBSERVACAO: TStringField;
    cdsDadosDATA_BAIXA: TDateTimeField;
    cdsDadosCARACTERISTICAS: TStringField;
    cdsDadosNOME_TIPO_IMOVEL: TStringField;
    cdsDadosTIPO_PESSOA: TStringField;
    cdsDadosNOME_CLIENTE: TStringField;
    lblTotalRegistros: TLabel;
    procedure ppMnDarBaixaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnItDetalharClick(Sender: TObject);
    procedure dbGrdDadosPesquisaDblClick(Sender: TObject);
    procedure spBtnBuscaTipoImovelClick(Sender: TObject);
    procedure plsEdTipoImovelExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure spBtnBuscaRegiaoLocalidadeClick(Sender: TObject);
    procedure plsEdRegiaoLocalidadeExit(Sender: TObject);
    procedure lblCaracteristicaClick(Sender: TObject);
  private
    FoConjuntoDadosTipoImovel: TConjuntoDadosTipoImovel;
    FoConjuntoDadosRegiaoLocalidade: TConjuntoDadosRegiaoLocalidade;

    procedure BaixarImovelInteresse();
    procedure DetalharImovelInteresse(pnCodImovelInteresse:Integer);

    procedure AbreTelaSelecaoTipoImovel(pnTpSelecao:Word);
    procedure VerificarTipoImovelExiste;

    procedure AbreTelaSelecaoRegiaoLocalidade(pnTpSelecao:Word);
    procedure VerificarRegiaoLocalidadeExiste;
  public
    FoTipoImovel: TTipoImovel;
    FoRegiaoLocalidade: TRegiaoLocalidade;

    procedure PassarParametro(pTipo:String; pValores:OleVariant); override;
  protected
    procedure SelecionarTodosDados; override;
    procedure Pesquisar; override;
    procedure FormatarValores; override;
    procedure LimparTela; override;
  end;

var
  frmPesquisarImoveisInteresse: TfrmPesquisarImoveisInteresse;

implementation

uses
  unConstantes, unDM, unExibeDadosImoveisInteresse,
  unSelecionaRegistroTipoImovel, unPrincipal,
  unSelecionaRegistroRegiaoLocalidade, unSelecionarCaracImovel;

const
  fnSELECIONAR_TIPO_IMOVEL_NORMAL    = 1;
  fnSELECIONAR_TIPO_IMOVEL_DIGITANDO = 2;

  fnSELECIONAR_REGIAO_LOCALIDADE_NORMAL = 1;
  fnSELECIONAR_REGIAO_LOCALIDADE_DIGITANDO = 2;

{$R *.dfm}

(* procedimentos de controle *)

procedure TfrmPesquisarImoveisInteresse.PassarParametro(pTipo:String; pValores:OleVariant);
begin
end;

procedure TfrmPesquisarImoveisInteresse.LimparTela;
begin
  inherited;
  FoTipoImovel.codigo := NUMERO_INDEFINIDO;
  FoTipoImovel.nome := STRING_INDEFINIDO;
  FoRegiaoLocalidade.codigo := NUMERO_INDEFINIDO;
  FoRegiaoLocalidade.nome := STRING_INDEFINIDO;
end;

procedure TfrmPesquisarImoveisInteresse.SelecionarTodosDados();
begin
  cdsDados.Close;
  zQryDados.Close;
  zQryDados.SQL.Clear;
  zQryDados.SQL.Add('SELECT i.codigo AS CODIGO_IMOVEL_INTERESSE,i.ativo,i.data_captacao,');
  zQryDados.SQL.Add('i.finalidade_imovel,i.imovel_desejavel,');
  zQryDados.SQL.Add('CAST(i.valor_imovel AS VARCHAR(20)) AS CC_VALOR_IMOVEL,i.condicao_pagamento,');
  zQryDados.SQL.Add('CAST(i.pgto_vista_cach AS VARCHAR(20)) AS CC_PGTO_VISTA_CACH,');
  zQryDados.SQL.Add('CAST(i.pgto_vista_valor_bem AS VARCHAR(20)) AS CC_PGTO_VISTA_VALOR_BEM,');
  zQryDados.SQL.Add('i.pgto_vista_descricao_bem,');
  zQryDados.SQL.Add('CAST(i.pgto_fincto_cach_financiado AS VARCHAR(20)) AS CC_PGTO_FINCTO_CACH_FINANCIADO,');
  zQryDados.SQL.Add('CAST(i.pgto_fincto_cach AS VARCHAR(20)) AS CC_PGTO_FINCTO_CACH,');
  zQryDados.SQL.Add('CAST(i.pgto_fincto_valor_bem AS VARCHAR(20)) AS CC_PGTO_FINCTO_VALOR_BEM,');
  zQryDados.SQL.Add('i.pgto_fincto_descricao_bem,');
  zQryDados.SQL.Add('i.observacao,i.data_baixa,i.caracteristicas,');
  zQryDados.SQL.Add('t.nome AS NOME_TIPO_IMOVEL,');
  zQryDados.SQL.Add('i.tipo_pessoa,');
  zQryDados.SQL.Add('CASE WHEN i.tipo_pessoa = ''F�SICA'' THEN pf.nome ');
  zQryDados.SQL.Add('WHEN i.tipo_pessoa = ''JUR�DICA'' THEN pj.nome ');
  zQryDados.SQL.Add('ELSE ''NENHUMA'' END AS NOME_CLIENTE ');
  zQryDados.SQL.Add('FROM imovel_de_interesse i ');
  zQryDados.SQL.Add('JOIN tipo_imovel t ON i.cod_fk_tipo_imovel = t.codigo ');
  zQryDados.SQL.Add('LEFT JOIN cliente_pessoa_fisica pf ON i.cod_fk_cliente_pessoa_fisica = pf.codigo ');
  zQryDados.SQL.Add('LEFT JOIN cliente_pessoa_juridica pj ON i.cod_fk_cliente_pessoa_juridica = pj.codigo ');
  zQryDados.SQL.Add(Self.FoFuncoes.inserirCondicaoSelectNaoTrazerRegistroNulo('i'));
  zQryDados.SQL.Add('AND i.ativo = :ativo');
  zQryDados.ParamByName('ativo').AsString := VLR_SIM;
  zQryDados.SQL.Add('ORDER BY i.codigo');
  zQryDados.Open;
  cdsDados.Open;

  lblFiltrosUsados.Caption := STRING_INDEFINIDO;
  lblTotalRegistros.Caption := 'Total de Registros: ' + IntToStr(cdsDados.RecordCount);
end;

procedure TfrmPesquisarImoveisInteresse.Pesquisar();
var
  nCodigo: Integer;
  sAtivo: String;
  dtDataCaptacaoInicio,dtDataCaptacaoFim: TDate;
  sFinalidade: String;
  sSituacao: String;
  sCondicaoPagamento: String;
  dValorImovelInicio,dValorImovelFim: Currency;
  nTipoImovel: Integer;
  nRegiaoLocalidade: Integer;
  nTotCaracteristicas: Integer;
  sCaracteristicas: array[1..20] of String;
  sTipoPessoa: String;
  sNomePessoa: String;
  sFiltrosUsados: String;
  nAux: Integer;

  procedure GetCaracteristicaImovel;
  const
    sCHAR_SEPARADOR = ';';
  var
    sCaracteristicasTXT: String;
    i: Integer;
    nTotCaracteresCaracteristica: Integer;
    sCharAtual: String;
    sCaracteristica: String;
  begin
    sCaracteristicasTXT := Trim(plsMmCaracteristica.Text);
    if(sCaracteristicasTXT <> STRING_INDEFINIDO)then
    begin
      nTotCaracteresCaracteristica := length(sCaracteristicasTXT);
      sCaracteristica := STRING_INDEFINIDO;
      //varre as caracter�sticas buscando por uma caracter�stca
      for i:=1 to nTotCaracteresCaracteristica do
      begin
        sCharAtual := sCaracteristicasTXT[i];
        sCaracteristica := sCaracteristica + sCharAtual;
        if(sCharAtual = sCHAR_SEPARADOR)or(i >= nTotCaracteresCaracteristica)then
        begin
          inc(nTotCaracteristicas);
          sCaracteristicas[nTotCaracteristicas] := sCaracteristica;
          sCaracteristica := STRING_INDEFINIDO;
        end;
      end;
    end;
  end;

  procedure CarregarValores();
  begin
    nCodigo := FoFuncoes.formatarValorInteiro(plsEdCodigo.Text);

    case plsCbBxStatus.ItemIndex of
      0: sAtivo := VLR_SIM;
      1: sAtivo := VLR_NAO;
      2: sAtivo := STRING_INDEFINIDO;
    else
       sAtivo := STRING_INDEFINIDO;
    end;

    dtDataCaptacaoInicio := FoFuncoes.formatarData(plsMedDataCaptacaoInicio.Text);
    dtDataCaptacaoFim := FoFuncoes.formatarData(plsMedDataCaptacaoFinal.Text);

    case plsCbBxFinalidade.ItemIndex of
      0: sFinalidade := VLR_FINALIDADE_MORAR;
      1: sFinalidade := VLR_FINALIDADE_INVESTIR;
    else
      sFinalidade := STRING_INDEFINIDO;
    end;

    case plsCbBxSituacao.ItemIndex of
      0: sSituacao := VLR_SITUACAO_PLANTA;
      1: sSituacao := VLR_SITUACAO_PRONTO_PARA_MORAR;
      2: sSituacao := VLR_SITUACAO_DE_TERCEIROS;
    else
      sSituacao := STRING_INDEFINIDO;
    end;

    case plsCbBxCondicaoPagamento.ItemIndex of
      0: sCondicaoPagamento := VLR_CD_PAGAMENTO_VISTA;
      1: sCondicaoPagamento := VLR_CD_PAGAMENTO_ACEITA_FINANCIAMENTO;
    else
      sCondicaoPagamento := STRING_INDEFINIDO;
    end;

    dValorImovelInicio := FoFuncoes.formatarValorCurrency(plsEdValorImovelInicio.Text,True);
    dValorImovelFim := FoFuncoes.formatarValorCurrency(plsEdValorImovelFim.Text,True);
    nTipoImovel := FoTipoImovel.codigo;
    nRegiaoLocalidade := FoRegiaoLocalidade.codigo;
    GetCaracteristicaImovel;
    
    case rdGrpTipoPessoa.ItemIndex of
      0: sTipoPessoa := VLR_TP_PESSOA_FISICA;
      1: sTipoPessoa := VLR_TP_PESSOA_JURIDICA;
    else
      sTipoPessoa := STRING_INDEFINIDO;
    end;
    sNomePessoa := Trim(plsEdNomePessoa.Text);
  end;

begin
  sFiltrosUsados := STRING_INDEFINIDO;
  nTotCaracteristicas := NUMERO_INDEFINIDO;
  CarregarValores;

  cdsDados.Close;
  zQryDados.Close;
  zQryDados.SQL.Clear;
  zQryDados.SQL.Add('SELECT DISTINCT(i.codigo) AS CODIGO_IMOVEL_INTERESSE,i.ativo,i.data_captacao,');
  zQryDados.SQL.Add('i.finalidade_imovel,i.imovel_desejavel,');
  zQryDados.SQL.Add('CAST(i.valor_imovel AS VARCHAR(20)) AS CC_VALOR_IMOVEL,i.condicao_pagamento,');
  zQryDados.SQL.Add('CAST(i.pgto_vista_cach AS VARCHAR(20)) AS CC_PGTO_VISTA_CACH,');
  zQryDados.SQL.Add('CAST(i.pgto_vista_valor_bem AS VARCHAR(20)) AS CC_PGTO_VISTA_VALOR_BEM,');
  zQryDados.SQL.Add('i.pgto_vista_descricao_bem,');
  zQryDados.SQL.Add('CAST(i.pgto_fincto_cach_financiado AS VARCHAR(20)) AS CC_PGTO_FINCTO_CACH_FINANCIADO,');
  zQryDados.SQL.Add('CAST(i.pgto_fincto_cach AS VARCHAR(20)) AS CC_PGTO_FINCTO_CACH,');
  zQryDados.SQL.Add('CAST(i.pgto_fincto_valor_bem AS VARCHAR(20)) AS CC_PGTO_FINCTO_VALOR_BEM,');
  zQryDados.SQL.Add('i.pgto_fincto_descricao_bem,');
  zQryDados.SQL.Add('i.observacao,i.data_baixa,i.caracteristicas,');
  zQryDados.SQL.Add('t.nome AS NOME_TIPO_IMOVEL,');
  zQryDados.SQL.Add('i.tipo_pessoa,');
  zQryDados.SQL.Add('CASE WHEN i.tipo_pessoa = ''F�SICA'' THEN pf.nome ');
  zQryDados.SQL.Add('WHEN i.tipo_pessoa = ''JUR�DICA'' THEN pj.nome ');
  zQryDados.SQL.Add('ELSE ''NENHUMA'' END AS NOME_CLIENTE');
  zQryDados.SQL.Add('FROM imovel_de_interesse i ');
  zQryDados.SQL.Add('JOIN tipo_imovel t ON i.cod_fk_tipo_imovel = t.codigo ');
  zQryDados.SQL.Add('LEFT JOIN cliente_pessoa_fisica pf ON i.cod_fk_cliente_pessoa_fisica = pf.codigo ');
  zQryDados.SQL.Add('LEFT JOIN cliente_pessoa_juridica pj ON i.cod_fk_cliente_pessoa_juridica = pj.codigo ');
  zQryDados.SQL.Add('LEFT JOIN imov_interesse_regiao_local iirl ON i.codigo = iirl.cod_fk_imovel_de_interesse ');
  zQryDados.SQL.Add(Self.FoFuncoes.inserirCondicaoSelectNaoTrazerRegistroNulo('i'));

  if(sAtivo <> STRING_INDEFINIDO)then
  begin
    zQryDados.SQL.Add('AND i.ativo = :ativo ');
    zQryDados.ParamByName('ativo').AsString := sAtivo;
    FoFuncoes.AdicionarInformacao(sFiltrosUsados,'Status');
  end;

  if(nCodigo <> NUMERO_INDEFINIDO)then
  begin
    zQryDados.SQL.Add('AND i.codigo = :codigo ');
    zQryDados.ParamByName('codigo').AsInteger := nCodigo;
    FoFuncoes.AdicionarInformacao(sFiltrosUsados,'C�digo');
  end;

  if(dtDataCaptacaoInicio <> NUMERO_INDEFINIDO)and(dtDataCaptacaoFim <> NUMERO_INDEFINIDO)then
  begin
    zQryDados.SQL.Add('AND i.data_captacao BETWEEN :dtDataCapInicio AND :dtDataCapFim ');
    zQryDados.ParamByName('dtDataCapInicio').AsDate := dtDataCaptacaoInicio;
    zQryDados.ParamByName('dtDataCapFim').AsDate := dtDataCaptacaoFim;
    FoFuncoes.AdicionarInformacao(sFiltrosUsados,'Data de Capta��o');
  end;

  if(sFinalidade <> STRING_INDEFINIDO)then
  begin
    zQryDados.SQL.Add('AND i.finalidade_imovel = :finalidade_imovel ');
    zQryDados.ParamByName('finalidade_imovel').AsString := sFinalidade;
    FoFuncoes.AdicionarInformacao(sFiltrosUsados,'Finalidade');
  end;

  if(sSituacao <> STRING_INDEFINIDO)then
  begin
    zQryDados.SQL.Add('AND i.imovel_desejavel = :imovel_desejavel ');
    zQryDados.ParamByName('imovel_desejavel').AsString := sSituacao;
    FoFuncoes.AdicionarInformacao(sFiltrosUsados,'Situa��o');
  end;

  if(sCondicaoPagamento <> STRING_INDEFINIDO)then
  begin
    zQryDados.SQL.Add('AND i.condicao_pagamento =:condicao_pagamento ');
    zQryDados.ParamByName('condicao_pagamento').AsString := sCondicaoPagamento;
    FoFuncoes.AdicionarInformacao(sFiltrosUsados,'Condi��o de Pagamento');
  end;

  if(dValorImovelInicio <> NUMERO_INDEFINIDO)and(dValorImovelFim <> NUMERO_INDEFINIDO)then
  begin
    zQryDados.SQL.Add('AND i.valor_imovel BETWEEN :valorImovelInicio AND :valorImovelFim ');
    zQryDados.ParamByName('valorImovelInicio').AsCurrency := dValorImovelInicio;
    zQryDados.ParamByName('valorImovelFim').AsCurrency := dValorImovelFim;
    FoFuncoes.AdicionarInformacao(sFiltrosUsados,'Valor do Im�vel');
  end;

  if(nTipoImovel <> NUMERO_INDEFINIDO)then
  begin
    zQryDados.SQL.Add('AND t.codigo =:codigoTipoImovel ');
    zQryDados.ParamByName('codigoTipoImovel').AsInteger := nTipoImovel;
    FoFuncoes.AdicionarInformacao(sFiltrosUsados,'Tipo de Im�vel');
  end;

  if(nRegiaoLocalidade <> NUMERO_INDEFINIDO)then
  begin
    zQryDados.SQL.Add('AND iirl.cod_fk_regiao_localidade =:cod_fk_regiao_localidade ');
    zQryDados.ParamByName('cod_fk_regiao_localidade').AsInteger := nRegiaoLocalidade;
    FoFuncoes.AdicionarInformacao(sFiltrosUsados,'Regi�o Localidade');
  end;

  if(nTotCaracteristicas > NUMERO_INDEFINIDO)then
  begin
    zQryDados.SQL.Add('AND (');
    for nAux:=1 to nTotCaracteristicas do
    begin
      if(nAux=1)then
        zQryDados.SQL.Add('i.caracteristicas LIKE ' +QuotedStr('%' +sCaracteristicas[nAux]+ '%'))
      else
        zQryDados.SQL.Add('AND i.caracteristicas LIKE ' +QuotedStr('%' +sCaracteristicas[nAux]+ '%'));
    end;
    zQryDados.SQL.Add(')');
    FoFuncoes.AdicionarInformacao(sFiltrosUsados,'Caracter�sticas');
  end;

  if(sTipoPessoa <> STRING_INDEFINIDO)then
  begin
    zQryDados.SQL.Add('AND i.tipo_pessoa = :tipo_pessoa ');
    zQryDados.ParamByName('tipo_pessoa').AsString := sTipoPessoa;
    FoFuncoes.AdicionarInformacao(sFiltrosUsados,'Tipo Pessoa');
  end;

  if(sNomePessoa <> STRING_INDEFINIDO)and(
    (sTipoPessoa=VLR_TP_PESSOA_FISICA)or(sTipoPessoa=VLR_TP_PESSOA_JURIDICA))then
  begin
    if(sTipoPessoa=VLR_TP_PESSOA_FISICA)then
      zQryDados.SQL.Add('AND pf.nome=:nomePessoa ')
    else if(sTipoPessoa=VLR_TP_PESSOA_JURIDICA)then
      zQryDados.SQL.Add('AND pj.nome=:nomePessoa ');
    zQryDados.ParamByName('nomePessoa').AsString := sNomePessoa;
    FoFuncoes.AdicionarInformacao(sFiltrosUsados,'Nome da Pessoa');
  end;

  zQryDados.SQL.Add('ORDER BY i.codigo');
  zQryDados.Open;
  cdsDados.Open;

  lblFiltrosUsados.Caption := sFiltrosUsados;
  lblTotalRegistros.Caption := 'Total de Registros: ' + IntToStr(cdsDados.RecordCount);
  VerificaEncontrouRegistros;
end;

procedure TfrmPesquisarImoveisInteresse.FormatarValores();
var
  sValorMonetario: String;
begin
  if((cdsDados.Active)and(cdsDados.RecordCount>0))then
  begin
    cdsDados.First;
    while(not(cdsDados.Eof))do
    begin
      cdsDados.Edit;

      sValorMonetario :=  cdsDadosCC_VALOR_IMOVEL.AsString;
      sValorMonetario := StringReplace(sValorMonetario, '.', ',', [rfReplaceAll, rfIgnoreCase]);
      if(sValorMonetario <> STRING_INDEFINIDO)then
        cdsDadosCC_VALOR_IMOVEL.AsString := Self.FoFuncoes.formatarValorMonetario(sValorMonetario);

      sValorMonetario :=  cdsDadosCC_PGTO_VISTA_CACH.AsString;
      sValorMonetario := StringReplace(sValorMonetario, '.', ',', [rfReplaceAll, rfIgnoreCase]);
      if(sValorMonetario <> STRING_INDEFINIDO)then
        cdsDadosCC_PGTO_VISTA_CACH.AsString := Self.FoFuncoes.formatarValorMonetario(sValorMonetario);

      sValorMonetario :=  cdsDadosCC_PGTO_VISTA_VALOR_BEM.AsString;
      sValorMonetario := StringReplace(sValorMonetario, '.', ',', [rfReplaceAll, rfIgnoreCase]);
      if(sValorMonetario <> STRING_INDEFINIDO)then
        cdsDadosCC_PGTO_VISTA_VALOR_BEM.AsString := Self.FoFuncoes.formatarValorMonetario(sValorMonetario);

      sValorMonetario :=  cdsDadosCC_PGTO_FINCTO_CACH_FINANCIADO.AsString;
      sValorMonetario := StringReplace(sValorMonetario, '.', ',', [rfReplaceAll, rfIgnoreCase]);
      if(sValorMonetario <> STRING_INDEFINIDO)then
        cdsDadosCC_PGTO_FINCTO_CACH_FINANCIADO.AsString := Self.FoFuncoes.formatarValorMonetario(sValorMonetario);

      sValorMonetario :=  cdsDadosCC_PGTO_FINCTO_CACH.AsString;
      sValorMonetario := StringReplace(sValorMonetario, '.', ',', [rfReplaceAll, rfIgnoreCase]);
      if(sValorMonetario <> STRING_INDEFINIDO)then
        cdsDadosCC_PGTO_FINCTO_CACH.AsString := Self.FoFuncoes.formatarValorMonetario(sValorMonetario);

      sValorMonetario :=  cdsDadosCC_PGTO_FINCTO_VALOR_BEM.AsString;
      sValorMonetario := StringReplace(sValorMonetario, '.', ',', [rfReplaceAll, rfIgnoreCase]);
      if(sValorMonetario <> STRING_INDEFINIDO)then
        cdsDadosCC_PGTO_FINCTO_VALOR_BEM.AsString := Self.FoFuncoes.formatarValorMonetario(sValorMonetario);

      cdsDados.Post;

      cdsDados.Next;
    end;
  end;
end;

procedure TfrmPesquisarImoveisInteresse.BaixarImovelInteresse();
var
  nCodigo: Integer;
  sCliente: String;
begin
  try
    nCodigo := cdsDados.FieldByName('CODIGO_IMOVEL_INTERESSE').AsInteger;
    sCliente := cdsDados.FieldByName('NOME_CLIENTE').AsString;
  except
    nCodigo := NUMERO_INDEFINIDO;
  end;

  if(nCodigo <> NUMERO_INDEFINIDO)and(nCodigo <> REGISTRO_NULO)then
  begin
    if(MessageDlg('Deseja baixar o im�vel do cliente ' + sCliente + ' ?',
      mtConfirmation, [mbYes,mbNo], 0)=mrYes)then
    begin
      try
        DM.ZConnection.StartTransaction;
        DM.zQryImovelDeInteresse.Close;
        DM.zQryImovelDeInteresse.SQL.Clear;
        DM.zQryImovelDeInteresse.SQL.Add('UPDATE imovel_de_interesse ');
        DM.zQryImovelDeInteresse.SQL.Add('SET ativo = :ativo ');
        DM.zQryImovelDeInteresse.SQL.Add('WHERE codigo = :codigo');
        DM.zQryImovelDeInteresse.ParamByName('ativo').AsString := VLR_NAO;
        DM.zQryImovelDeInteresse.ParamByName('codigo').AsInteger := nCodigo;
        DM.zQryImovelDeInteresse.ExecSQL();
        DM.ZConnection.Commit;
      except
        DM.ZConnection.Rollback;
      end;
      Pesquisar();
    end;
  end;
end;

procedure TfrmPesquisarImoveisInteresse.DetalharImovelInteresse(pnCodImovelInteresse:Integer);
begin
  try
    Application.CreateForm(TfrmExibeDadosImoveisInteresse,frmExibeDadosImoveisInteresse);
    frmExibeDadosImoveisInteresse.passarParametro(PRM_PESQUISAR_IMOVEL_INTERESSE,cdsDadosCODIGO_IMOVEL_INTERESSE.AsInteger);
    frmExibeDadosImoveisInteresse.ShowModal;
  finally
    FreeAndNil(frmExibeDadosImoveisInteresse);
  end;
end;

procedure TfrmPesquisarImoveisInteresse.AbreTelaSelecaoTipoImovel(pnTpSelecao:Word);
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
        frmSelecionaRegistroTipoImovel.passarParametro(PRM_TELA_CHAMOU,FORM_PESQUISAR_IMOVEL_INTERESSE);
        frmSelecionaRegistroTipoImovel.passarParametro(PRM_DEFINE_FILTRO_PADRAO_TELA_SELECAO, null);
        if(plsEdTipoImovel.Text <> STRING_INDEFINIDO)then
          frmSelecionaRegistroTipoImovel.passarParametro(PRM_ENVIA_FILTRO_PESQUISA, vParametros);
        frmSelecionaRegistroTipoImovel.passarParametro(PRM_AJUSTAR_LARGURA_GRIDE,null);
        frmSelecionaRegistroTipoImovel.passarParametro(PRM_VISIBLE_FALSE_BOTAO_NOVO_FORM_SELECAO,null);
        FoFuncoes.AjustarPosicaoFormCadastroSelecaoRegistro(frmPrincipal,
         frmPesquisarImoveisInteresse,frmSelecionaRegistroTipoImovel,pnlTipoImovel);
        frmSelecionaRegistroTipoImovel.ShowModal;
      finally
        if(Self.FoTipoImovel.codigo <> NUMERO_INDEFINIDO)then
        begin
          plsEdTipoImovel.Text := Self.FoTipoImovel.nome;
          FoFuncoes.focarComponente(plsEdRegiaoLocalidade);
        end;
        FreeAndNil(frmSelecionaRegistroTipoImovel);
      end;
    end;

    fnSELECIONAR_TIPO_IMOVEL_DIGITANDO:
    begin
      try
        Application.CreateForm(TfrmSelecionaRegistroTipoImovel, frmSelecionaRegistroTipoImovel);
        frmSelecionaRegistroTipoImovel.passarParametro(PRM_TELA_CHAMOU,FORM_PESQUISAR_IMOVEL_INTERESSE);
        frmSelecionaRegistroTipoImovel.passarParametro(PRM_DEFINE_FILTRO_PADRAO_TELA_SELECAO, null);
        frmSelecionaRegistroTipoImovel.passarParametro(PRM_ENVIA_FILTRO_PESQUISA, vParametros);
        frmSelecionaRegistroTipoImovel.passarParametro(PRM_AJUSTAR_LARGURA_GRIDE,null);
        frmSelecionaRegistroTipoImovel.passarParametro(PRM_VISIBLE_FALSE_BOTAO_NOVO_FORM_SELECAO,null);
        FoFuncoes.AjustarPosicaoFormCadastroSelecaoRegistro(frmPrincipal,
         frmPesquisarImoveisInteresse,frmSelecionaRegistroTipoImovel,pnlTipoImovel);
        frmSelecionaRegistroTipoImovel.ShowModal;
      finally
        if(Self.FoTipoImovel.codigo <> NUMERO_INDEFINIDO)then
        begin
          plsEdTipoImovel.Text := Self.FoTipoImovel.nome;
          FoFuncoes.focarComponente(plsEdRegiaoLocalidade);
        end;
        FreeAndNil(frmSelecionaRegistroTipoImovel);
      end;
    end;
  end;
end;

procedure TfrmPesquisarImoveisInteresse.VerificarTipoImovelExiste();
begin
  if(plsEdTipoImovel.Text <> STRING_INDEFINIDO)then
  begin
    FoConjuntoDadosTipoImovel.SetFiltro('nome ' + ' LIKE ' + QuotedStr('%' + plsEdTipoImovel.Text + '%'));
    FoConjuntoDadosTipoImovel.ExecutarFiltrar;

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

procedure TfrmPesquisarImoveisInteresse.AbreTelaSelecaoRegiaoLocalidade(pnTpSelecao:Word);
var
  vParametros: Variant;
begin
  vParametros := VarArrayCreate([0,2],varVariant);
  vParametros[0] := PRM_PESQUISA_NOME;
  vParametros[1] := plsEdRegiaoLocalidade.Text;
  vParametros[2] := False;

  case pnTpSelecao of

    fnSELECIONAR_REGIAO_LOCALIDADE_NORMAL:
    begin
      try
        Application.CreateForm(TfrmSelecionaRegistroRegiaoLocalidade, frmSelecionaRegistroRegiaoLocalidade);
        frmSelecionaRegistroRegiaoLocalidade.passarParametro(PRM_TELA_CHAMOU, FORM_PESQUISAR_IMOVEL_INTERESSE);
        frmSelecionaRegistroRegiaoLocalidade.passarParametro(PRM_DEFINE_FILTRO_PADRAO_TELA_SELECAO, null);
        if(plsEdRegiaoLocalidade.Text <> STRING_INDEFINIDO)then
          frmSelecionaRegistroRegiaoLocalidade.passarParametro(PRM_ENVIA_FILTRO_PESQUISA, vParametros);
        frmSelecionaRegistroRegiaoLocalidade.passarParametro(PRM_AJUSTAR_LARGURA_GRIDE, null);
        frmSelecionaRegistroRegiaoLocalidade.passarParametro(PRM_VISIBLE_FALSE_BOTAO_NOVO_FORM_SELECAO,null);
        FoFuncoes.AjustarPosicaoFormCadastroSelecaoRegistro(frmPrincipal,
         frmPesquisarImoveisInteresse,frmSelecionaRegistroRegiaoLocalidade,pnlRegiaoLocalidade);
        frmSelecionaRegistroRegiaoLocalidade.ShowModal;
      finally
        if(FoRegiaoLocalidade.codigo <> NUMERO_INDEFINIDO)then
        begin
          plsEdRegiaoLocalidade.Text := FoRegiaoLocalidade.nome;
          FoFuncoes.focarComponente(plsMmCaracteristica);
        end;
        FreeAndNil(frmSelecionaRegistroRegiaoLocalidade);
      end;
    end;

    fnSELECIONAR_REGIAO_LOCALIDADE_DIGITANDO:
    begin
      try
        Application.CreateForm(TfrmSelecionaRegistroRegiaoLocalidade, frmSelecionaRegistroRegiaoLocalidade);
        frmSelecionaRegistroRegiaoLocalidade.passarParametro(PRM_TELA_CHAMOU,FORM_PESQUISAR_IMOVEL_INTERESSE);
        frmSelecionaRegistroRegiaoLocalidade.passarParametro(PRM_DEFINE_FILTRO_PADRAO_TELA_SELECAO, null);
        frmSelecionaRegistroRegiaoLocalidade.passarParametro(PRM_ENVIA_FILTRO_PESQUISA, vParametros);
        frmSelecionaRegistroRegiaoLocalidade.passarParametro(PRM_AJUSTAR_LARGURA_GRIDE,null);
        frmSelecionaRegistroRegiaoLocalidade.passarParametro(PRM_VISIBLE_FALSE_BOTAO_NOVO_FORM_SELECAO,null);
        FoFuncoes.AjustarPosicaoFormCadastroSelecaoRegistro(frmPrincipal,
         frmPesquisarImoveisInteresse,frmSelecionaRegistroRegiaoLocalidade,pnlRegiaoLocalidade);
        frmSelecionaRegistroRegiaoLocalidade.ShowModal;
      finally
        if(FoRegiaoLocalidade.codigo <> NUMERO_INDEFINIDO)then
        begin
          plsEdRegiaoLocalidade.Text := FoRegiaoLocalidade.nome;
          FoFuncoes.focarComponente(plsMmCaracteristica);
        end;
        FreeAndNil(frmSelecionaRegistroRegiaoLocalidade);
      end;
    end;
  end;
end;

procedure TfrmPesquisarImoveisInteresse.VerificarRegiaoLocalidadeExiste;
begin
  if(plsEdRegiaoLocalidade.Text <> STRING_INDEFINIDO)then
  begin
    FoConjuntoDadosRegiaoLocalidade.SetFiltro('nome ' + ' LIKE ' + QuotedStr('%' + plsEdRegiaoLocalidade.Text + '%'));
    FoConjuntoDadosRegiaoLocalidade.ExecutarFiltrar;

    if(FoConjuntoDadosRegiaoLocalidade.TotalRegistros = 1)then
    begin
      FoRegiaoLocalidade.codigo := FoConjuntoDadosRegiaoLocalidade.GetCodigo;
      FoRegiaoLocalidade.nome := FoConjuntoDadosRegiaoLocalidade.GetNome;
      plsEdRegiaoLocalidade.Text := FoRegiaoLocalidade.nome;
    end
    else if(FoConjuntoDadosRegiaoLocalidade.TotalRegistros > 1)then
      AbreTelaSelecaoRegiaoLocalidade(fnSELECIONAR_REGIAO_LOCALIDADE_DIGITANDO)
    else
    begin
      MessageDlg('Regi�o Localidade n�o encontrada.', mtInformation, [mbOK], 0);
      FoFuncoes.focarComponente(plsEdRegiaoLocalidade);
    end;
  end;
end;

(* fim - procedimentos de controle *)
      
procedure TfrmPesquisarImoveisInteresse.ppMnDarBaixaClick(Sender: TObject);
begin
  inherited;
  BaixarImovelInteresse();
end;

procedure TfrmPesquisarImoveisInteresse.FormShow(Sender: TObject);
begin
  inherited;
  plsCbBxStatus.ItemIndex := 0;
end;

procedure TfrmPesquisarImoveisInteresse.mnItDetalharClick(Sender: TObject);
begin
  inherited;
  if(cdsDados.Active)and(cdsDados.RecordCount > NUMERO_INDEFINIDO)then
    DetalharImovelInteresse(cdsDadosCODIGO_IMOVEL_INTERESSE.AsInteger);
end;

procedure TfrmPesquisarImoveisInteresse.dbGrdDadosPesquisaDblClick(
  Sender: TObject);
begin
  inherited;
  if(cdsDados.Active)and(cdsDados.RecordCount > NUMERO_INDEFINIDO)then
    DetalharImovelInteresse(cdsDadosCODIGO_IMOVEL_INTERESSE.AsInteger);
end;

procedure TfrmPesquisarImoveisInteresse.spBtnBuscaTipoImovelClick(
  Sender: TObject);
begin
  inherited;
  AbreTelaSelecaoTipoImovel(fnSELECIONAR_TIPO_IMOVEL_NORMAL);
end;

procedure TfrmPesquisarImoveisInteresse.plsEdTipoImovelExit(
  Sender: TObject);
begin
  inherited;
  VerificarTipoImovelExiste;
end;

procedure TfrmPesquisarImoveisInteresse.FormCreate(Sender: TObject);
begin
  inherited;
  FoConjuntoDadosTipoImovel := TConjuntoDadosTipoImovel.CriaObjeto;
  FoConjuntoDadosRegiaoLocalidade := TConjuntoDadosRegiaoLocalidade.CriaObjeto;
end;

procedure TfrmPesquisarImoveisInteresse.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FoConjuntoDadosTipoImovel);
  FreeAndNil(FoConjuntoDadosRegiaoLocalidade);
end;

procedure TfrmPesquisarImoveisInteresse.spBtnBuscaRegiaoLocalidadeClick(
  Sender: TObject);
begin
  inherited;
  AbreTelaSelecaoRegiaoLocalidade(fnSELECIONAR_REGIAO_LOCALIDADE_NORMAL);
end;

procedure TfrmPesquisarImoveisInteresse.plsEdRegiaoLocalidadeExit(
  Sender: TObject);
begin
  inherited;
  VerificarRegiaoLocalidadeExiste;
end;

procedure TfrmPesquisarImoveisInteresse.lblCaracteristicaClick(
  Sender: TObject);
var
  vParametros: OleVariant;
begin
  vParametros := VarArrayCreate([0,0], varVariant);
  vParametros[0] := nRECEBER_CARAC_PESQUISAR_IMOVEL_INTERESSE_CARACTERISTICA;

  Application.CreateForm(TfrmSelecionarCaracImovel, frmSelecionarCaracImovel);
  frmSelecionarCaracImovel.passarParametro(PRM_DEFINE_QUEM_RECEBE_CARACTERISTICAS_IMOVEL, vParametros);
  frmSelecionarCaracImovel.Show;
end;

end.
