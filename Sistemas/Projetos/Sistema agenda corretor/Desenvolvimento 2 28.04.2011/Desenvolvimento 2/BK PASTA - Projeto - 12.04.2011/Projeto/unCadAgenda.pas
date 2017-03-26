unit unCadAgenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, plsMemo, ComCtrls, ExtCtrls, unFuncoes;

type
  TfrmCadAgenda = class(TForm)
    lblData: TLabel;
    lblHora: TLabel;
    lblDescricao: TLabel;
    Bevel: TBevel;
    dtTmPkrData: TDateTimePicker;
    dtTmPkrHora: TDateTimePicker;
    plsMMDescricao: TPlsMemo;
    btBtnLimpar: TBitBtn;
    btBtnSalvar: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btBtnSalvarClick(Sender: TObject);
    procedure btBtnLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FoFuncoes: TFuncoes;
    procedure limparAgendaDados(); //limpar componentes de apresenta��o
    function verificarCamposObrigatoriosAgenda(): boolean; //verifica se os campos obrigat�rios foram preenchidos
    function salvarAgenda(): boolean; //salva dados da agenda
  public

  end;

var
  frmCadAgenda: TfrmCadAgenda;

implementation

uses unDM, unConstantes, unPrincipal;

{$R *.dfm}

{***** Minhas Procedures - inicio *****}

//limpar componentes de apresenta��o
procedure TfrmCadAgenda.limparAgendaDados();
begin
  dtTmPkrData.Date := Now;
  dtTmPkrHora.Time := Now;
  plsMMDescricao.Clear;
  dtTmPkrData.SetFocus;
end;

//verifica se os campos obrigat�rios foram preenchidos
function TfrmCadAgenda.verificarCamposObrigatoriosAgenda(): boolean;
var
  bRetorno: Boolean;
  compFoco: TWinControl;
  campos: string;
begin
  bRetorno := True;
  compFoco := nil;
  campos := STRING_INDEFINIDO;

  if(Trim(plsMMDescricao.Text) = STRING_INDEFINIDO)then
  begin
    campos := 'Descri��o';
    compFoco := plsMMDescricao;
  end;

  if(campos <> '')then
  begin
    MessageDlg('Antes de salvar, verifique os campos: ' + campos + '.', mtInformation, [mbOK], 0);
    bRetorno := False;
  end;

  //setar foco no componente que n�o foi validado
  if((not(bRetorno))and(compFoco is TWinControl))then
    FoFuncoes.focarComponente(compFoco);

  Result := bRetorno;
end;

//salva dados da agenda
function TfrmCadAgenda.salvarAgenda(): boolean;
var
  sDataHoraAux: String;
begin
  try
    sDataHoraAux := DateToStr(dtTmPkrData.Date) + ' ' + TimeToStr(dtTmPkrHora.Time);
    DM.ZConnection.StartTransaction;
    DM.zQryAgenda.Close;
    DM.zQryAgenda.SQL.Clear;
    DM.zQryAgenda.SQL.Add('INSERT INTO agenda(data_aviso,hora_aviso,compromisso,data_hora_aux,status)');
    DM.zQryAgenda.SQL.Add(' VALUES(:dat_avi,:hor_avi,:com,:dat_hor_aux,:sta)');
    DM.zQryAgenda.ParamByName('dat_avi').AsDate := dtTmPkrData.Date;
    DM.zQryAgenda.ParamByName('hor_avi').AsTime := dtTmPkrHora.Time;
    DM.zQryAgenda.ParamByName('com').AsString := Trim(plsMMDescricao.Text);
    DM.zQryAgenda.ParamByName('dat_hor_aux').AsDateTime := StrToDateTime(sDataHoraAux);
    DM.zQryAgenda.ParamByName('sta').AsInteger := COMPROMISSO_ABERTO;
    DM.zQryAgenda.ExecSQL();
    DM.ZConnection.Commit;
    Result := true;
  except
    DM.ZConnection.Rollback;
    Result := false;
  end;
end;

{***** Minhas Procedures - fim *****}

procedure TfrmCadAgenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#27) then
    Self.Close;
end;

procedure TfrmCadAgenda.FormCreate(Sender: TObject);
begin
  Self.FoFuncoes := TFuncoes.Create;
end;

procedure TfrmCadAgenda.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Self.FoFuncoes);
end;

procedure TfrmCadAgenda.btBtnSalvarClick(Sender: TObject);
begin
  if(verificarCamposObrigatoriosAgenda())then
    if(not(salvarAgenda()))then
      MessageDlg('Compromisso n�o pode ser salvo.', mtInformation, [mbOK], 0)
    else
    begin
      MessageDlg('Compromisso salvo com sucesso.', mtInformation, [mbOK], 0);
      Self.limparAgendaDados();
    end;
end;

procedure TfrmCadAgenda.btBtnLimparClick(Sender: TObject);
begin
  limparAgendaDados();
end;

procedure TfrmCadAgenda.FormShow(Sender: TObject);
begin
  limparAgendaDados();
end;

procedure TfrmCadAgenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if(Assigned(frmPrincipal))then
    frmPrincipal.passarParametro(PRM_ATUALIZAR_COMPROMISSOS_AGENDA, null);
end;

end.
