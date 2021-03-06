unit unExibeDadosAgenciamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unExibeDados, StdCtrls, Buttons, ExtCtrls;

type
  TfrmExibeDadosAgenciamento = class(TfrmExibeDados)
    lblImovel: TLabel;
    lblAgenciamento: TLabel;
    pnlDadosAgenciamento: TPanel;
    pnlPagamentoFinanciado: TPanel;
    lblNomePgtoFnctoCachFinanciado: TLabel;
    lblNomePgtoFnctoCach: TLabel;
    lblNomePgtoFnctoValorBem: TLabel;
    lblNomePgtoFnctoDescricaoBem: TLabel;
    lblPgtoFnctoDescricaoBem: TLabel;
    lblPgtoFnctoValorBem: TLabel;
    lblPgtoFnctoCach: TLabel;
    lblPgtoFnctoCachFinanciado: TLabel;
    lblObservacaoAgenciamento: TLabel;
    lblNomeObservacaoAgenciamento: TLabel;
    pnlPagamentoVista: TPanel;
    lblNomePgtoVista: TLabel;
    lblPgtoVistaCach: TLabel;
    lblNomePgtoVistaValorBem: TLabel;
    lblPgtoVistaValorBem: TLabel;
    lblPgtoVistaDescricaoBem: TLabel;
    lblNomePgtoVistaDescricaoBem: TLabel;
    lblCondicaoPagamento: TLabel;
    pbpNomeCondicaoPagamento: TLabel;
    lblNomeValorTotalAgenciamento: TLabel;
    lblValorTotal: TLabel;
    lblNomePessoa: TLabel;
    lblNomeNomePessoa: TLabel;
    lblTipoPessoa: TLabel;
    lblNomeTipoPessoa: TLabel;
    lblNomeDataAgenciamento: TLabel;
    lblNomeCodigoAgenciamento: TLabel;
    lblCodigoAgenciamento: TLabel;
    lblNomeAtivo: TLabel;
    lblAtivo: TLabel;
    lblDataAgenciamento: TLabel;
    lblNomePrazoAutorizacao: TLabel;
    lblNomeNormalStandBy: TLabel;
    lblNormalStandBy: TLabel;
    lblPrazoAutorizacao: TLabel;
    lblNomeDataReagenciamento: TLabel;
    lblDataReagenciamento: TLabel;
    pnlImovel: TPanel;
    lblTipoImovel: TLabel;
    lblUF: TLabel;
    lblNomeUF: TLabel;
    lblNomeBairro: TLabel;
    lblSituacaoDesejavel: TLabel;
    lblStatus: TLabel;
    lblBairro: TLabel;
    lblNomeCidade: TLabel;
    lblNomeRua: TLabel;
    lblCEP: TLabel;
    lblRua: TLabel;
    lblNomeCEP: TLabel;
    lblNomeSituacaoDesejavel: TLabel;
    lblNomeDescricao: TLabel;
    lblDescricao: TLabel;
    lblNomeStatus: TLabel;
    lblValorImovel: TLabel;
    lblCodigoImovel: TLabel;
    lblNomeCodigoImovel: TLabel;
    lblNomeValorImovel: TLabel;
    lblNomeTipoImovel: TLabel;
    lblCidade: TLabel;
  private
  public
    procedure passarParametro(pTipo:String; pValores:OleVariant); dynamic; //passando parāmetros
  end;

var
  frmExibeDadosAgenciamento: TfrmExibeDadosAgenciamento;

implementation

uses
  unConstantes;

{$R *.dfm}

procedure TfrmExibeDadosAgenciamento.passarParametro(pTipo:String; pValores:OleVariant);
begin
  if(pTipo = PRM_EXIBE_DADOS_AGENCIAMENTO)then
  begin
    lblCodigoAgenciamento.Caption := pValores[0];
    lblAtivo.Caption := pValores[1];
    lblNormalStandBy.Caption := pValores[2];
    lblDataAgenciamento.Caption := pValores[3];
    lblPrazoAutorizacao.Caption := pValores[4];
    lblDataReagenciamento.Caption := pValores[5];
    lblTipoPessoa.Caption := pValores[6];
    lblNomePessoa.Caption := pValores[7];
    lblValorTotal.Caption := Self.FoFuncoes.formatarValorMonetario(pValores[8]);
    lblCondicaoPagamento.Caption := pValores[9];
    if(pValores[9] = 'VISTA')then
    begin
      pnlPagamentoVista.Visible := True;
      pnlPagamentoVista.Left := 5;
      pnlPagamentoVista.Top := 132;
      pnlPagamentoFinanciado.Visible := False;
      lblPgtoVistaCach.Caption := Self.FoFuncoes.formatarValorMonetario(pValores[10]);
      lblPgtoVistaValorBem.Caption := Self.FoFuncoes.formatarValorMonetario(pValores[11]);
      lblPgtoVistaDescricaoBem.Caption := pValores[12];
    end
    else if(pValores[9] = 'ACEITA FINANCIAMENTO')then
    begin
      pnlPagamentoFinanciado.Visible := True;
      pnlPagamentoFinanciado.Left := 5;
      pnlPagamentoFinanciado.Top := 132;
      pnlPagamentoVista.Visible := False;
      lblPgtoFnctoCachFinanciado.Caption := Self.FoFuncoes.formatarValorMonetario(pValores[13]);
      lblPgtoFnctoCach.Caption := Self.FoFuncoes.formatarValorMonetario(pValores[14]);
      lblPgtoFnctoValorBem.Caption := Self.FoFuncoes.formatarValorMonetario(pValores[15]);
      lblPgtoFnctoDescricaoBem.Caption := pValores[16];
    end;
    lblObservacaoAgenciamento.Caption := pValores[17];

    lblCodigoImovel.Caption := pValores[18];
    lblStatus.Caption := pValores[19];
    lblSituacaoDesejavel.Caption := pValores[20];
    lblTipoImovel.Caption := pValores[21];
    lblValorImovel.Caption := Self.FoFuncoes.formatarValorMonetario(pValores[22]);
    lblDescricao.Caption := pValores[23];
    lblUF.Caption := pValores[24];
    lblCidade.Caption := pValores[25];
    lblBairro.Caption := pValores[26];
    lblRua.Caption := pValores[27];
    lblCEP.Caption := pValores[28];
  end;
end;

end.
