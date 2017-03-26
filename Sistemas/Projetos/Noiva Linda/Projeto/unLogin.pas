unit unLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBXpress;

type
  TfrmLogin = class(TForm)
    bvlDivisao: TBevel;
    pnlEditarUsuario: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edNovoLogin: TEdit;
    edNovaSenha1: TEdit;
    btBtnSalvar: TBitBtn;
    pnlLogin: TPanel;
    lblLogin: TLabel;
    lblSenha: TLabel;
    edLogin: TEdit;
    edSenha: TEdit;
    btBtnLogin: TBitBtn;
    btBtnCancelar: TBitBtn;
    btBtnTrocarLogin: TBitBtn;
    Label3: TLabel;
    edNovaSenha2: TEdit;
    procedure btBtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btBtnLoginClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edSenhaEnter(Sender: TObject);
    procedure edLoginEnter(Sender: TObject);
    procedure edLoginExit(Sender: TObject);
    procedure edSenhaExit(Sender: TObject);
    procedure btBtnTrocarLoginClick(Sender: TObject);
    procedure btBtnSalvarClick(Sender: TObject);
    procedure edNovoLoginEnter(Sender: TObject);
    procedure edNovaSenha1Enter(Sender: TObject);
    procedure edNovaSenha2Enter(Sender: TObject);
    procedure edNovoLoginExit(Sender: TObject);
    procedure edNovaSenha1Exit(Sender: TObject);
    procedure edNovaSenha2Exit(Sender: TObject);
  private
    sair: Integer; //0=n�o - 1=sim
    codUsuario: Integer;

    (*VARI�VEIS DE CONTROLE*)
    Transacao: TTransactionDesc;//transa��es - deve-se adicionar a uses DBXpress

    (*PROCEDURES DE CONTROLE*)
    procedure iniciaTransacao();//dispara uma transa��o
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses unDM, unPrincipal;

{$R *.dfm}

(*PROCEDURES DE CONTROLE*)

{dispara uma transa��o}
procedure TfrmLogin.iniciaTransacao();
begin
  transacao.TransactionID := 1;
  transacao.IsolationLevel := xilREPEATABLEREAD;
end;

(*FIM PROCEDURES DE CONTROLE*)

procedure TfrmLogin.btBtnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  Self.sair := 0;
  edLogin.Clear;
  edSenha.Clear;
  edLogin.SetFocus;
end;

procedure TfrmLogin.btBtnLoginClick(Sender: TObject);
begin
  DM.qryUsuario.Close;
  DM.qryUsuario.SQL.Clear;
  DM.qryUsuario.SQL.Add('SELECT * FROM Usuario u WHERE u.login=:log AND u.senha=:sen');
  DM.qryUsuario.ParamByName('log').AsString := edLogin.Text;
  DM.qryUsuario.ParamByName('sen').AsString := edSenha.Text;
  DM.qryUsuario.Prepared := true;
  DM.qryUsuario.Open;
  DM.cdsUsuario.Open;
  DM.cdsUsuario.Refresh;
  if(DM.cdsUsuario.RecordCount=0)then
    begin
    MessageDlg('Usu�rio n�o encontrado!',mtInformation,[mbOK],0);
    edLogin.SetFocus;
    end
  else
    begin
    MessageDlg(DM.cdsUsuarioNOME.AsString+' logado no sistema!',mtInformation,[mbOK],0);
    sair := 1;
    Self.Close;
    end;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (sair <> 1) then
     Application.Terminate;
end;

procedure TfrmLogin.edSenhaEnter(Sender: TObject);
begin
  edSenha.Color := clMoneyGreen;
end;

procedure TfrmLogin.edLoginEnter(Sender: TObject);
begin
  edLogin.Color := clMoneyGreen;
end;

procedure TfrmLogin.edLoginExit(Sender: TObject);
begin
  edLogin.Color := clWindow;
end;

procedure TfrmLogin.edSenhaExit(Sender: TObject);
begin
  edSenha.Color := clWindow;
end;

procedure TfrmLogin.btBtnTrocarLoginClick(Sender: TObject);
begin
  DM.qryUsuario.Close;
  DM.qryUsuario.SQL.Clear;
  DM.qryUsuario.SQL.Add('SELECT * FROM Usuario u WHERE u.login=:log AND u.senha=:sen');
  DM.qryUsuario.ParamByName('log').AsString := edLogin.Text;
  DM.qryUsuario.ParamByName('sen').AsString := edSenha.Text;
  DM.qryUsuario.Prepared := true;
  DM.qryUsuario.Open;
  DM.cdsUsuario.Open;
  DM.cdsUsuario.Refresh;
  if(DM.cdsUsuario.RecordCount=0)then
    begin
    MessageDlg('Usu�rio n�o encontrado!',mtInformation,[mbOK],0);
    edLogin.SetFocus;
    end
  else
    begin
    frmLogin.ClientHeight := 370;
    frmLogin.ClientWidth := 363;
    pnlEditarUsuario.Enabled := true;
    edNovoLogin.Text := edLogin.Text;
    edNovaSenha1.Text := edSenha.Text;
    edNovaSenha2.Text := edSenha.Text;    
    Self.codUsuario := DM.cdsUsuarioCODIGO.AsInteger;
    pnlLogin.Enabled := false;
    end;
end;

procedure TfrmLogin.btBtnSalvarClick(Sender: TObject);
begin
  if(edNovaSenha1.Text <> edNovaSenha2.Text)then
    MessageDlg('Senha n�o confere!',mtInformation,[mbOK],0)
  else
    begin
    try
      iniciaTransacao();
      DM.SQLConnection.StartTransaction(Transacao);
      DM.qryUsuario.Close;
      DM.qryUsuario.SQL.Clear;
      DM.qryUsuario.SQL.Add('UPDATE Usuario SET login=:log,senha=:sen WHERE codigo=:cod');
      DM.qryUsuario.ParamByName('log').AsString := edNovoLogin.Text;
      DM.qryUsuario.ParamByName('sen').AsString := edNovaSenha1.Text;
      DM.qryUsuario.ParamByName('cod').AsInteger := Self.codUsuario;
      DM.qryUsuario.Prepared := true;
      DM.qryUsuario.ExecSQL();
      DM.SQLConnection.Commit(Transacao);
      MessageDlg('Usu�rio editado com sucesso!',mtInformation,[mbOK],0);
      frmLogin.ClientHeight := 176;
      frmLogin.ClientWidth := 363;
      pnlEditarUsuario.Enabled := false;
      pnlLogin.Enabled := true;
    except
      DM.SQLConnection.Rollback(Transacao);
      MessageDlg('Usu�rio n�o pode ser editado!',mtInformation,[mbOK],0);
    end;
    end;
end;

procedure TfrmLogin.edNovoLoginEnter(Sender: TObject);
begin
  edNovoLogin.Color := clMoneyGreen;
end;

procedure TfrmLogin.edNovaSenha1Enter(Sender: TObject);
begin
  edNovaSenha1.Color := clMoneyGreen;
end;

procedure TfrmLogin.edNovaSenha2Enter(Sender: TObject);
begin
  edNovaSenha2.Color := clMoneyGreen;
end;

procedure TfrmLogin.edNovoLoginExit(Sender: TObject);
begin
  edNovoLogin.Color := clWindow;
end;

procedure TfrmLogin.edNovaSenha1Exit(Sender: TObject);
begin
  edNovaSenha1.Color := clWindow;
end;

procedure TfrmLogin.edNovaSenha2Exit(Sender: TObject);
begin
  edNovaSenha2.Color := clWindow;
end;

end.
