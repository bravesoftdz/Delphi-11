unit unConfiguracaoBalanca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ACBrBase, ACBrBAL, StdCtrls, ExtCtrls, Buttons, DBXpress;

type
  TfrmConfiguracaoBalanca = class(TForm)
    grpBxConfiguracaoBalanca: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    bvlDivisa: TBevel;
    cbBxBalanca: TComboBox;
    cbBxPortaSerial: TComboBox;
    cbBxVelocidade: TComboBox;
    cbBxDataBits: TComboBox;
    cbBxParidade: TComboBox;
    cbBxStopBits: TComboBox;
    cbBxHandshaking: TComboBox;
    edTimeOut: TEdit;
    btBtnGravar: TBitBtn;
    rdBtnAtiva: TRadioButton;
    rdBtnInativa: TRadioButton;
    ckBxMonitora: TCheckBox;
    procedure btBtnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    (*VARI�VEIS DE CONTROLE*)
    Transacao: TTransactionDesc;//transa��es - deve-se adicionar a uses DBXpress
    opcaoSalvar: Integer; //novo=1; editar=2

    procedure iniciaTransacao();//dispara uma transa��o
  public
    { Public declarations }
  end;

var
  frmConfiguracaoBalanca: TfrmConfiguracaoBalanca;

implementation

uses unDataModule;

{$R *.dfm}

(*PROCEDURES DE CONTROLE*)

procedure TfrmConfiguracaoBalanca.iniciaTransacao();
begin
  transacao.TransactionID := 1;
  transacao.IsolationLevel := xilREPEATABLEREAD;
end;

(*FIM PROCEDURES DE CONTROLE*)

procedure TfrmConfiguracaoBalanca.btBtnGravarClick(Sender: TObject);
begin
  try
    iniciaTransacao();
    DM.SQLConnection.StartTransaction(transacao);

    DM.qryBalanca.Close;
    DM.qryBalanca.SQL.Clear;
    //editar
    if(opcaoSalvar = 2)then
      begin
      DM.qryBalanca.SQL.Add('UPDATE Balanca SET ativa=:ati,balanca=:bal,porta_serial=:por,velocidade=:vel,data_bits=:dat, ');
      DM.qryBalanca.SQL.Add('paridade=:par,stop_bits=:sto,handshaking=:han,time_out=:tim,monitora=:mon WHERE codigo=:cod');
      DM.qryBalanca.ParamByName('cod').AsInteger := 1;
      end
    //novo
    else if(opcaoSalvar = 1)then
      begin
      DM.qryBalanca.SQL.Add('INSERT INTO Balanca (codigo,ativa,balanca,porta_serial,velocidade,data_bits,paridade,stop_bits,handshaking,time_out,monitora) ');
      DM.qryBalanca.SQL.Add('VALUES (1,:ati,:bal,:por,:vel,:dat,:par,:sto,:han,:tim,:mon)');
      end;   
    if (rdBtnAtiva.Checked = true) then
      DM.qryBalanca.ParamByName('ati').AsInteger := 1
    else if (rdBtnInativa.Checked = true) then
      DM.qryBalanca.ParamByName('ati').AsInteger := 2;
    DM.qryBalanca.ParamByName('bal').AsString := cbBxBalanca.Text;
    DM.qryBalanca.ParamByName('por').AsString := cbBxPortaSerial.Text;
    DM.qryBalanca.ParamByName('vel').AsInteger := StrToInt(cbBxVelocidade.Text);
    DM.qryBalanca.ParamByName('dat').AsInteger := StrToInt(cbBxDataBits.Text);
    DM.qryBalanca.ParamByName('par').AsString := cbBxParidade.Text;
    DM.qryBalanca.ParamByName('sto').AsString := cbBxStopBits.Text;
    DM.qryBalanca.ParamByName('han').AsString := cbBxHandshaking.Text;
    DM.qryBalanca.ParamByName('tim').AsInteger := StrToInt(edTimeOut.Text);
    if (ckBxMonitora.Checked = true)then
      DM.qryBalanca.ParamByName('mon').AsInteger := 1
    else if (ckBxMonitora.Checked = false)then
      DM.qryBalanca.ParamByName('mon').AsInteger := 2;
    DM.qryBalanca.Prepared := true;
    DM.qryBalanca.ExecSQL();

    DM.SQLConnection.Commit(transacao);
    ShowMessage('Configura��es da balan�a editadas com sucesso!');
    Close;
  except
    DM.SQLConnection.Rollback(transacao);
    ShowMessage('Configura��es da balan�a n�o puderao ser editadas!');
  end;

end;

procedure TfrmConfiguracaoBalanca.FormShow(Sender: TObject);
begin
  DM.qryBalanca.Close;
  DM.qryBalanca.SQL.Clear;
  DM.qryBalanca.SQL.Add('SELECT * FROM Balanca WHERE codigo=1');
  DM.qryBalanca.Prepared := true;
  DM.qryBalanca.Open;

  DM.cdsBalanca.Refresh;

  if (DM.cdsBalanca.RecordCount > 0)then
    begin
    if (DM.cdsBalancaATIVA.AsInteger = 1) then
      rdBtnAtiva.Checked := true
    else if (DM.cdsBalancaATIVA.AsInteger = 2) then
      rdBtnInativa.Checked := true;
    cbBxBalanca.Text := DM.cdsBalancaBALANCA.AsString;
    cbBxPortaSerial.Text := DM.cdsBalancaPORTA_SERIAL.AsString;
    cbBxVelocidade.Text := DM.cdsBalancaVELOCIDADE.AsString;
    cbBxDataBits.Text := DM.cdsBalancaDATA_BITS.AsString;
    cbBxParidade.Text := DM.cdsBalancaPARIDADE.AsString;
    cbBxStopBits.Text := DM.cdsBalancaSTOP_BITS.AsString;
    cbBxHandshaking.Text := DM.cdsBalancaHANDSHAKING.AsString;
    edTimeOut.Text := DM.cdsBalancaTIME_OUT.AsString;
    if (DM.cdsBalancaMONITORA.AsInteger = 1) then
      ckBxMonitora.Checked := true
    else if (DM.cdsBalancaMONITORA.AsInteger = 2) then
      ckBxMonitora.Checked := false;

    opcaoSalvar := 2;
    end
  else
    begin
    rdBtnInativa.Checked := true;
    cbBxBalanca.Text := '';
    cbBxPortaSerial.Text := '';
    cbBxVelocidade.Text := '';
    cbBxDataBits.Text := '';
    cbBxParidade.Text := '';
    cbBxStopBits.Text := '';
    cbBxHandshaking.Text := '';
    edTimeOut.Clear;
    ckBxMonitora.Checked := false;

    opcaoSalvar := 1;
    end;
end;

end.
