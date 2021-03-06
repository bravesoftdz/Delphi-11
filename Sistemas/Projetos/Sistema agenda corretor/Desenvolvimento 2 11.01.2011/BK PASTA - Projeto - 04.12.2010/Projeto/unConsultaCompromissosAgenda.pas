unit unConsultaCompromissosAgenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AppEvnts, Grids, DBGrids, StdCtrls, Buttons, ComCtrls,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, unFuncoes;

type
  TfrmConsultaCompromissosAgenda = class(TForm)
    StatusBar: TStatusBar;
    grpBxPesquisar: TGroupBox;
    lblEntre: TLabel;
    dtTmPkrDataInicio: TDateTimePicker;
    dtTmPkrDataFim: TDateTimePicker;
    btBtnPesquisar: TBitBtn;
    dbGrdCompromissos: TDBGrid;
    PopupMenu: TPopupMenu;
    mnItDeletarCompromisso: TMenuItem;
    dtTmPkrHoraInicio: TDateTimePicker;
    dtTmPkrHoraFim: TDateTimePicker;
    zQryCompromissos: TZQuery;
    zQryCompromissosCODIGO: TIntegerField;
    zQryCompromissosDATA_CADASTRO: TDateTimeField;
    zQryCompromissosDATA_AVISO: TDateField;
    zQryCompromissosHORA_AVISO: TTimeField;
    zQryCompromissosCOMPROMISSO: TStringField;
    zQryCompromissosDATA_HORA_AUX: TDateTimeField;
    zQryCompromissosSTATUS: TIntegerField;
    dsCompromissos: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dtTmPkrDataInicioKeyPress(Sender: TObject; var Key: Char);
    procedure dtTmPkrHoraInicioKeyPress(Sender: TObject; var Key: Char);
    procedure dtTmPkrDataFimKeyPress(Sender: TObject; var Key: Char);
    procedure dtTmPkrHoraFimKeyPress(Sender: TObject; var Key: Char);
    procedure btBtnPesquisarClick(Sender: TObject);
    procedure mnItDeletarCompromissoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FoFuncoes: TFuncoes;

    procedure selecionarTodosCompromissos(); //seleciona todos os compromissos
  public
    procedure passarParametro(pTipo:String; pValores:OleVariant); //passando par�metros
  end;

var
  frmConsultaCompromissosAgenda: TfrmConsultaCompromissosAgenda;

implementation

uses unDM, DateUtils, unConstantes, unPrincipal;

{$R *.dfm}

{***** Minhas Procedures - inicio *****}

//passando par�metros
procedure TfrmConsultaCompromissosAgenda.passarParametro(pTipo:String; pValores:OleVariant);
begin
  if(pTipo = PRM_CONSULTA_COMPROMISSOS_AGENDA)then
  begin
    dtTmPkrDataInicio.Date := pValores[0];
    dtTmPkrHoraInicio.Time := pValores[1];
    dtTmPkrDataFim.Date := pValores[2];
    dtTmPkrHoraFim.Time := pValores[3];
    btBtnPesquisarClick(Self);
  end

  else if(pTipo = PRM_CRIA_TELA_CONSULTA_COMPROMISSOS_AGENDA_NORMAL)then
  begin
    dtTmPkrDataInicio.Date := Now;
    dtTmPkrHoraInicio.Time := Now;
    dtTmPkrDataFim.Date := IncDay(dtTmPkrDataInicio.Date,7);
    dtTmPkrHoraFim.Time := Now;
    Self.selecionarTodosCompromissos();
  end;
end;

//seleciona todos os compromissos
procedure TfrmConsultaCompromissosAgenda.selecionarTodosCompromissos();
begin
  zQryCompromissos.Close;
  zQryCompromissos.SQL.Clear;
  zQryCompromissos.SQL.Add('SELECT * FROM agenda ');
  zQryCompromissos.SQL.Add(FoFuncoes.inserirCondicaoSelectNaoTrazerRegistroNulo());
  zQryCompromissos.SQL.Add('AND status=:sta');
  zQryCompromissos.SQL.Add('ORDER BY data_aviso,hora_aviso');
  zQryCompromissos.ParamByName('sta').AsInteger := COMPROMISSO_ABERTO;
  zQryCompromissos.Open;
end;

{***** Minhas Procedures - fim *****}
procedure TfrmConsultaCompromissosAgenda.FormCreate(Sender: TObject);
begin
  Self.FoFuncoes := TFuncoes.Create;
end;

procedure TfrmConsultaCompromissosAgenda.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Self.FoFuncoes);
end;

procedure TfrmConsultaCompromissosAgenda.dtTmPkrDataInicioKeyPress(
  Sender: TObject; var Key: Char);
begin
  if(Key=#13)then
    btBtnPesquisarClick(Sender);
end;

procedure TfrmConsultaCompromissosAgenda.dtTmPkrHoraInicioKeyPress(
  Sender: TObject; var Key: Char);
begin
  if(Key=#13)then
    btBtnPesquisarClick(Sender);
end;

procedure TfrmConsultaCompromissosAgenda.dtTmPkrDataFimKeyPress(
  Sender: TObject; var Key: Char);
begin
  if(Key=#13)then
    btBtnPesquisarClick(Sender);
end;

procedure TfrmConsultaCompromissosAgenda.dtTmPkrHoraFimKeyPress(
  Sender: TObject; var Key: Char);
begin
  if(Key=#13)then
    btBtnPesquisarClick(Sender);
end;

procedure TfrmConsultaCompromissosAgenda.btBtnPesquisarClick(
  Sender: TObject);
var
  sDataInicio: String;
  sDataFim: String;
  sSQL: String;
begin
  sSQL := STRING_INDEFINIDO;
  sDataInicio := FoFuncoes.formatarDataFormatoAmericano(dtTmPkrDataInicio.Date) +
    ' ' + TimeToStr(dtTmPkrHoraInicio.Time);
  sDataFim := FoFuncoes.formatarDataFormatoAmericano(dtTmPkrDataFim.Date) +
    ' ' + TimeToStr(dtTmPkrHoraFim.Time);

  sSQL := 'SELECT * FROM agenda ';
  sSQL := sSQL + FoFuncoes.inserirCondicaoSelectNaoTrazerRegistroNulo();
  sSQL := sSQL + 'AND data_hora_aux BETWEEN '''+sDataInicio+'''';
  sSQL := sSQL + 'AND '''+sDataFim+'''';
  sSQL := sSQL + 'AND status='''+IntToStr(COMPROMISSO_ABERTO)+'''';
  sSQL := sSQL + 'ORDER BY data_aviso,hora_aviso';


  zQryCompromissos.Close;
  zQryCompromissos.SQL.Clear;
  zQryCompromissos.SQL.Add(sSQL);
(*  zQryCompromissos.SQL.Add('SELECT * FROM agenda ');
  inserirCondicaoSelectNaoTrazerRegistroNulo
  zQryCompromissos.SQL.Add('WHERE data_hora_aux BETWEEN :dtIni AND :dtFin ');
  zQryCompromissos.SQL.Add('AND status = :sta');
  zQryCompromissos.ParamByName('dtIni').AsDateTime := StrToDateTime(sDataInicio);
  zQryCompromissos.ParamByName('dtFin').AsDateTime := StrToDateTime(sDataFim);
  zQryCompromissos.ParamByName('sta').AsInteger := COMPROMISSO_ABERTO;
*)  zQryCompromissos.Open;

(*
  if(zQryCompromissos.RecordCount < 1)then
  begin
    MessageDlg('N�o foram encontrados compromissos.', mtInformation, [mbOK], 0);
    Self.selecionarTodosCompromissos();
  end;
*)
end;

procedure TfrmConsultaCompromissosAgenda.mnItDeletarCompromissoClick(
  Sender: TObject);
var
  nCod: Integer;
begin
  if(MessageDlg('Deseja deletar o compromisso?', mtConfirmation, [mbYes,mbNo],0)=mrYes)then
  begin
    try
      nCod := zQryCompromissosCODIGO.AsInteger;
      DM.ZConnection.StartTransaction;
      DM.zQryAgenda.Close;
      DM.zQryAgenda.SQL.Clear;
      DM.zQryAgenda.SQL.Add('DELETE FROM agenda WHERE codigo=:cod');
      DM.zQryAgenda.ParamByName('cod').AsInteger := nCod;
      DM.zQryAgenda.ExecSQL();
      DM.ZConnection.Commit;
      MessageDlg('Compromisso deletado com sucesso.', mtConfirmation, [mbOK],0);
      Self.selecionarTodosCompromissos();
    except
      MessageDlg('Compromisso n�o pode ser deletado.', mtInformation, [mbOK], 0);
      DM.ZConnection.Rollback;
    end;
  end;
end;

procedure TfrmConsultaCompromissosAgenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if(Assigned(frmPrincipal))then
    frmPrincipal.passarParametro(PRM_ATUALIZAR_COMPROMISSOS_AGENDA, null);
end;

end.
