unit unPesquisandoMeioCaptacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unPesquisandoRegistro, DB, DBClient, StdCtrls, plsEdit,
  ExtCtrls, Grids, DBGrids;

type
  TfrmPesquisandoMeioCaptacao = class(TfrmPesquisandoRegistro)
    cdsPesquisandoCODIGO: TStringField;
    cdsPesquisandoNOME: TStringField;
    cdsPesquisandoCC_CODIGO: TStringField;
  private
  public
    procedure passarParametro(pTipo:String; pValores:OleVariant); override;
  protected
    procedure popularClientDataSetPesquisa(poDados: TClientDataSet); override;
    procedure filtrarPesquisa(); override;
    procedure selecionouRegistro(); override;
    procedure configurarCaracteresAceitosPesquisa(); override;
  end;

var
  frmPesquisandoMeioCaptacao: TfrmPesquisandoMeioCaptacao;

implementation

uses unConstantes, unCadMeioCaptacao;

{$R *.dfm}

{ TfrmPesquisandoMeioCaptacao }

(* procedimentos de controle *)

procedure TfrmPesquisandoMeioCaptacao.passarParametro(pTipo:String; pValores:OleVariant);
begin

end;

procedure TfrmPesquisandoMeioCaptacao.popularClientDataSetPesquisa(poDados: TClientDataSet);
begin
  cdsPesquisando.EmptyDataSet;
  poDados.First;
  while(not(poDados.Eof))do
  begin
    cdsPesquisando.Insert;
    cdsPesquisando.FieldByName('CODIGO').AsString := poDados.FieldByName('CODIGO').AsString;
    cdsPesquisando.FieldByName('NOME').AsString := poDados.FieldByName('NOME').AsString;
    cdsPesquisando.FieldByName('CC_CODIGO').AsString := poDados.FieldByName('CODIGO').AsString;
    cdsPesquisando.Post;
    poDados.Next;
  end;
  cdsPesquisando.Active := True;
end;

procedure TfrmPesquisandoMeioCaptacao.filtrarPesquisa();
begin
  if(Self.FsCampoPesquisa = 'NOME')or(Self.FsCampoPesquisa = 'CC_CODIGO') then
  begin
    cdsPesquisando.Filter := Self.FsCampoPesquisa + ' LIKE ' + QuotedStr('%' + plsEdValorPesquisa.Text + '%');
    cdsPesquisando.Filtered := true;
  end;

  if(cdsPesquisando.RecordCount=0)then
  begin
    MessageDlg('Nenhum registro encontrado.',mtInformation,[mbOK],0);
    cdsPesquisando.Filter := STRING_INDEFINIDO;
    cdsPesquisando.Filtered := true;
    plsEdValorPesquisa.Clear;
  end;
end;

procedure TfrmPesquisandoMeioCaptacao.selecionouRegistro();
begin
  if(cdsPesquisando.Active)then
  begin
    if(Self.FoNomeFormChamou is TfrmCadMeioCaptacao)then
    begin
      (Self.FoNomeFormChamou as TfrmCadMeioCaptacao).passarParametro(PRM_PESQUISOU,null);
      (Self.FoNomeFormChamou as TfrmCadMeioCaptacao).realizouPesquisa(cdsPesquisandoCODIGO.AsInteger);
    end;
    Self.Hide;
  end;
end;

procedure TfrmPesquisandoMeioCaptacao.configurarCaracteresAceitosPesquisa();
begin
  if(Self.FsCampoPesquisa = 'NOME')then
    plsEdValorPesquisa.plsCaracteresAceitos := todos
  else if(Self.FsCampoPesquisa = 'CC_CODIGO') then
    plsEdValorPesquisa.plsCaracteresAceitos := numeros;
end;

(* fim - procedimentos de controle *)

end.
