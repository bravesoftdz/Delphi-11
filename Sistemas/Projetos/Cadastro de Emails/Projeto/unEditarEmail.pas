unit unEditarEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, plsMemo, plsComboBox, plsEdit, ExtCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, RxGIF;

type
  TfrmEditarEmail = class(TForm)
    cbBxRelevancia: TPlsComboBox;
    lblRelevancia: TLabel;
    mmMeioCaptacao: TPlsMemo;
    lblMeioCaptacao: TLabel;
    lblDadosOrigem: TLabel;
    edEstado: TPlsEdit;
    lblEstado: TLabel;
    lblCidade: TLabel;
    edCidade: TPlsEdit;
    edPais: TPlsEdit;
    edNome: TPlsEdit;
    lblNome: TLabel;
    lblPais: TLabel;
    lblDominio2: TLabel;
    edDominio2: TPlsEdit;
    edDominio1: TPlsEdit;
    lblDominio1: TLabel;
    lblServidor: TLabel;
    lblEmail: TLabel;
    edEmail: TPlsEdit;
    edServidor: TPlsEdit;
    lblDadosProprietario: TLabel;
    lblDadosEmail: TLabel;
    btBtnSalvar: TBitBtn;
    btBtnSelecionarMeioCaptacao: TBitBtn;
    bvlDivisao: TBevel;
    zQryPesquisa: TZQuery;
    zQryPesquisaCODIGO: TIntegerField;
    zQryPesquisaEMAIL: TStringField;
    zQryPesquisaSERVIDOR_DO_EMAIL: TStringField;
    zQryPesquisaDOMINIO_1: TStringField;
    zQryPesquisaDOMINIO_2: TStringField;
    zQryPesquisaNOME_PROPRIETARIO: TStringField;
    zQryPesquisaCIDADE_PROPRIETARIO: TStringField;
    zQryPesquisaESTADO_PROPRIETARIO: TStringField;
    zQryPesquisaPAIS_PROPRIETARIO: TStringField;
    zQryPesquisaMEIO_CAPTACAO: TStringField;
    zQryPesquisaRELEVANCIA: TIntegerField;
    zQryPesquisaDATA_INSERCAO: TDateTimeField;
    lblCodigo: TLabel;
    lblVlrCodigo: TLabel;
    procedure btBtnSalvarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  public
    procedure PassarParametro(psTipo:String; poValores:OleVariant);
    procedure Pesquisar(psCampo,psValor: String);
    procedure CarregarRegistro;
  end;

const
  sPESQUISAR_CODIGO = 'codigo';
  sPESQUISAR_EMAIL = 'email';

var
  frmEditarEmail: TfrmEditarEmail;

implementation

uses unConstantes, unDM;

{$R *.dfm}

{ TfrmEditarEmail }

procedure TfrmEditarEmail.PassarParametro(psTipo: String;
  poValores: OleVariant);
begin
  if(psTipo = PRM_EDITAR_EMAIL)then
    Pesquisar(sPESQUISAR_CODIGO,poValores);
end;

procedure TfrmEditarEmail.Pesquisar(psCampo, psValor: String);
begin
  if(psCampo = sPESQUISAR_CODIGO)then
  begin
    zQryPesquisa.Close;
    zQryPesquisa.SQL.Clear;
    zQryPesquisa.SQL.Add('SELECT * FROM email WHERE codigo=:codigo');
    zQryPesquisa.ParamByName('codigo').AsInteger := StrToInt(psValor);
    zQryPesquisa.Open;
    if(zQryPesquisa.Active)and(zQryPesquisa.RecordCount > NUMERO_NULO)then
      CarregarRegistro
    else
      MessageDlg('Nenhum registro foi encontrado.', mtInformation, [mbOK], 0);
  end

  else if(psCampo = sPESQUISAR_EMAIL)then
  begin
    zQryPesquisa.Close;
    zQryPesquisa.SQL.Clear;
    zQryPesquisa.SQL.Add('SELECT * FROM email WHERE email LIKE ' + QuotedStr('%' + psValor + '%'));
    zQryPesquisa.Open;
    if(zQryPesquisa.Active)and(zQryPesquisa.RecordCount > NUMERO_NULO)then
      CarregarRegistro
    else
      MessageDlg('Nenhum registro foi encontrado.', mtInformation, [mbOK], 0);
  end
end;

procedure TfrmEditarEmail.CarregarRegistro;
begin
  lblVlrCodigo.Caption := zQryPesquisaCODIGO.AsString;
  edEmail.Text := zQryPesquisaEMAIL.AsString;
  edServidor.Text := zQryPesquisaSERVIDOR_DO_EMAIL.AsString;
  edDominio1.Text := zQryPesquisaDOMINIO_1.AsString;
  edDominio2.Text := zQryPesquisaDOMINIO_2.AsString;

  edNome.Text := zQryPesquisaNOME_PROPRIETARIO.AsString;
  edPais.Text := zQryPesquisaPAIS_PROPRIETARIO.AsString;
  edCidade.Text := zQryPesquisaCIDADE_PROPRIETARIO.AsString;
  edEstado.Text := zQryPesquisaESTADO_PROPRIETARIO.AsString;

  mmMeioCaptacao.Text := zQryPesquisaMEIO_CAPTACAO.AsString;
  cbBxRelevancia.ItemIndex := zQryPesquisaRELEVANCIA.AsInteger - 1;
end;

procedure TfrmEditarEmail.btBtnSalvarClick(Sender: TObject);
var
  nRelevancia: Integer;
begin
  try
    nRelevancia := StrToInt(cbBxRelevancia.Text);
  except
    nRelevancia := 1;
  end;

  try
    DM.ZConnection.StartTransaction;
    zQryPesquisa.Close;
    zQryPesquisa.SQL.Clear;
    zQryPesquisa.SQL.Add('UPDATE email SET email=:email,servidor_do_email=:servidor_do_email,');
    zQryPesquisa.SQL.Add('dominio_1=:dominio_1,dominio_2=:dominio_2,');
    zQryPesquisa.SQL.Add('nome_proprietario=:nome_proprietario,pais_proprietario=:pais_proprietario,');
    zQryPesquisa.SQL.Add('cidade_proprietario=:cidade_proprietario,estado_proprietario=:estado_proprietario,');
    zQryPesquisa.SQL.Add('meio_captacao=:meio_captacao,relevancia=:relevancia ');
    zQryPesquisa.SQL.Add('WHERE codigo=:codigo');
    zQryPesquisa.ParamByName('email').AsString := Trim(edEmail.Text);
    zQryPesquisa.ParamByName('servidor_do_email').AsString := Trim(edServidor.Text);
    zQryPesquisa.ParamByName('dominio_1').AsString := Trim(edDominio1.Text);
    zQryPesquisa.ParamByName('dominio_2').AsString := Trim(edDominio2.Text);
    zQryPesquisa.ParamByName('nome_proprietario').AsString := Trim(edNome.Text);
    zQryPesquisa.ParamByName('pais_proprietario').AsString := Trim(edPais.Text);
    zQryPesquisa.ParamByName('cidade_proprietario').AsString := Trim(edCidade.Text);
    zQryPesquisa.ParamByName('estado_proprietario').AsString := Trim(edEstado.Text);
    zQryPesquisa.ParamByName('meio_captacao').AsString := Trim(mmMeioCaptacao.Text);
    zQryPesquisa.ParamByName('relevancia').AsInteger := nRelevancia;
    zQryPesquisa.ParamByName('codigo').AsInteger := StrToInt(lblVlrCodigo.Caption);
    zQryPesquisa.ExecSQL;
    DM.ZConnection.Commit;
    MessageDlg('Email editado com sucesso.', mtInformation, [mbOK], 0);
  except
    DM.ZConnection.Rollback;
    MessageDlg('Email n�o pode ser editado.', mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmEditarEmail.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #27) then
    Close;
end;

end.
