unit unValorPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, AppEvnts, DBXpress, SQLTimSt;

type
  TfrmValorPago = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edValorTotal: TEdit;
    edValorPago: TEdit;
    btBtnSalvar: TBitBtn;
    bvlDivisao: TBevel;
    ApplicationEvents: TApplicationEvents;
    StatusBar: TStatusBar;
    lblInfOperacao: TLabel;
    lblOperacao: TLabel;
    pnlComissao: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    lblFuncionario: TLabel;
    Label6: TLabel;
    Bevel1: TBevel;
    edComissao: TEdit;
    mmDescricaoComissao: TMemo;
    procedure edValorTotalEnter(Sender: TObject);
    procedure edValorPagoEnter(Sender: TObject);
    procedure edValorPagoExit(Sender: TObject);
    procedure edValorTotalExit(Sender: TObject);
    procedure ApplicationEventsHint(Sender: TObject);
    procedure btBtnSalvarClick(Sender: TObject);
    procedure edValorTotalKeyPress(Sender: TObject; var Key: Char);
    procedure edValorPagoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edComissaoEnter(Sender: TObject);
    procedure edComissaoExit(Sender: TObject);
    procedure edComissaoKeyPress(Sender: TObject; var Key: Char);
  private
    (*VARI�VEIS DE CONTROLE*)
    transacao: TTransactionDesc;//transa��es - deve-se adicionar a uses DBXpress
    fechar: boolean; //se pode ou n�o fechar tela

    (*PROCEDURES DE CONTROLE*)
    procedure iniciaTransacao();//dispara uma transa��o
    function diaDaSemana(data : String) : string;//retorna o dia da semana
  public
    tela:String;//tela que chamou esta
    codOperacao: Integer; //c�digo da loca��o/reserva
    codCliente: Integer; //c�digo do cliente
    codFuncionario: Integer;//c�digo do Funcion�rio
    codFornecedor: Integer; //c�digo do fornecedor
    dtVencimento: TDate; //data do vencimento da conta a pagar
    vlrTotal: Real;
  end;

var
  frmValorPago: TfrmValorPago;

implementation

uses unDM, unLocacao, unReserva, unVenda, unCompra, DB;

{$R *.dfm}

(*PROCEDURES DE CONTROLE*)

function TfrmValorPago.diaDaSemana (data : String) : string;
const
  semana : array[1..7] of string = ('Domingo','Segunda-feira','Ter�a-feira','Quarta-feira','Quinta-feira','Sexta-feira', 'S�bado');
begin
  Result := semana[DayOfWeek(strtodate(Data))]
end; 

{dispara uma transa��o}
procedure TfrmValorPago.iniciaTransacao();
begin
  transacao.TransactionID := 1;
  transacao.IsolationLevel := xilREPEATABLEREAD;
end;

(*FIM PROCEDURES DE CONTROLE*)

procedure TfrmValorPago.edValorTotalEnter(Sender: TObject);
begin
  edValorTotal.Color := clMoneyGreen;
end;

procedure TfrmValorPago.edValorPagoEnter(Sender: TObject);
begin
  edValorPago.Color := clMoneyGreen;
end;

procedure TfrmValorPago.edValorPagoExit(Sender: TObject);
begin
  if (edValorPago.Text = '') then
    edValorPago.Text := '0,00'
  else
    begin
    try
      edValorPago.Text := FormatFloat('#0.00',StrToFloat(edValorPago.Text));
    except
    end;
    end; 
  edValorPago.Color := clWindow;
end;

procedure TfrmValorPago.edValorTotalExit(Sender: TObject);
begin
  if (edValorTotal.Text = '') then
    edValorTotal.Text := '0,00'
  else
    begin
    try
      edValorTotal.Text := FormatFloat('#0.00',StrToFloat(edValorTotal.Text));
    except
    end;
    end;
  edValorTotal.Color := clWindow;
end;

procedure TfrmValorPago.ApplicationEventsHint(Sender: TObject);
begin
  StatusBar.Panels[0].Text := Application.Hint;
end;

procedure TfrmValorPago.btBtnSalvarClick(Sender: TObject);
var
  vTotal:Real;
  vPago: Real;
  continua: boolean;
begin
  //vTotal := StrToFloat(edValorTotal.Text);
  try
    vTotal  := StrToFloat(edValorTotal.Text);
    continua := true;
  except
    ShowMessage('Digite o Valor Pago!');
    continua := false;
  end;

  try
    vPago  := StrToFloat(edValorPago.Text);
    continua := true;
  except
    ShowMessage('Digite o Valor Pago!');
    continua := false;
  end;

  if(continua=true)then
    begin
    //se valor pago for maior que valor total
    if (vPago > vTotal) then
      begin
      MessageDlg('O Valor Pago n�o pode ser maior que o Valor Total!',mtInformation,[mbOK],0);
      continua := false;
      end;

    //loca��o
    if(tela='locacao')then
      begin
      //alterando valor total da loca��o
      if (continua = true) then
        begin
        if (Self.vlrTotal <> vTotal) then
          begin
          if (MessageDlg('Deseja alterar o valor da conta:'+#13+'DE: R$'+FormatFloat('#0.00',Self.vlrTotal)+#13+'PARA: R$'+FormatFloat('#0.00',vTotal),mtConfirmation,[mbYes,mbNo],0)=mrNo)then
            continua := false;
          end;
        end;

      //salvando valores
      if (continua = true) then
        begin
        try
          iniciaTransacao();
          DM.SQLConnection.StartTransaction(transacao);

          //atualizando loca��o
          DM.qryLocacao.Close;
          DM.qryLocacao.SQL.Clear;
          DM.qryLocacao.SQL.Add('UPDATE Locacao SET valor_total=:valTot,valor_pago=:valPag,pago=:pag WHERE codigo=:cod');
          DM.qryLocacao.ParamByName('valTot').AsFloat := vTotal;
          DM.qryLocacao.ParamByName('valPag').AsFloat := vPago;
          if (vPago <> vTotal)then
            DM.qryLocacao.ParamByName('pag').AsInteger := 0
          else
            DM.qryLocacao.ParamByName('pag').AsInteger := 1;
          DM.qryLocacao.ParamByName('cod').AsInteger := Self.codOperacao;
          DM.qryLocacao.Prepared := true;
          DM.qryLocacao.ExecSQL();

          //conta receber
          DM.qryContaReceber.Close;
          DM.qryContaReceber.SQL.Clear;
          DM.qryContaReceber.SQL.Add('INSERT INTO Conta_Receber (cod_locacao,cod_cliente,valor_total,valor_pago,pago,tipo) VALUES(:codLoc,:codCli,:valTot,:valPag,:pag,:tip)');
          DM.qryContaReceber.ParamByName('codLoc').AsInteger := Self.codOperacao;
          DM.qryContaReceber.ParamByName('codCli').AsInteger := Self.codCliente;
          DM.qryContaReceber.ParamByName('valTot').AsFloat := vTotal;
          DM.qryContaReceber.ParamByName('valPag').AsFloat := vPago;
          if (vPago <> vTotal)then
            DM.qryContaReceber.ParamByName('pag').AsInteger := 0
          else
            DM.qryContaReceber.ParamByName('pag').AsInteger := 1;
          DM.qryContaReceber.ParamByName('tip').AsString := 'Loca��o';
          DM.qryContaReceber.Prepared := true;
          DM.qryContaReceber.ExecSQL();

          //entrada financeira
          if(vPago>0)then
            begin
            DM.qryEntradaFinanceira.Close;
            DM.qryEntradaFinanceira.SQL.Clear;
            DM.qryEntradaFinanceira.SQL.Add('INSERT INTO Entrada_Financeira(cod_locacao,cod_cliente,tipo,valor,data) VALUES (:codLoc,:codCli,:tip,:val,:dat)' );
            DM.qryEntradaFinanceira.ParamByName('codLoc').AsInteger := Self.codOperacao;
            DM.qryEntradaFinanceira.ParamByName('codCli').AsInteger := Self.codCliente;
            DM.qryEntradaFinanceira.ParamByName('tip').AsString := 'Loca��o';
            DM.qryEntradaFinanceira.ParamByName('val').AsFloat := vPago;
            DM.qryEntradaFinanceira.ParamByName('dat').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
            DM.qryEntradaFinanceira.Prepared := true;
            DM.qryEntradaFinanceira.ExecSQL();
            end;

          //comiss�o
          if (Self.codFuncionario <> 0) then
            begin
            DM.qryComissaoFuncionario.Close;
            DM.qryComissaoFuncionario.SQL.Clear;
            DM.qryComissaoFuncionario.SQL.Add('INSERT INTO Comissao_Funcionario(cod_funcionario,cod_locacao,valor,data) ');
            DM.qryComissaoFuncionario.SQL.Add('VALUES (:codFun,:codLoc,:val,:dat)');
            DM.qryComissaoFuncionario.ParamByName('codFun').AsInteger := Self.codFuncionario;
            DM.qryComissaoFuncionario.ParamByName('codLoc').AsInteger := Self.codOperacao;
            DM.qryComissaoFuncionario.ParamByName('val').AsFloat := StrToFloat(edComissao.Text);
            DM.qryComissaoFuncionario.ParamByName('dat').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
            DM.qryComissaoFuncionario.Prepared := true;
            DM.qryComissaoFuncionario.ExecSQL();
            end;

          DM.SQLConnection.Commit(transacao);
          MessageDlg('Loca��o salva com sucesso!',mtInformation,[mbOK],0);
          fechar := true;
          Self.Close;
          frmLocacao.Close;
        except
          DM.SQLConnection.Rollback(transacao);
          MessageDlg('Loca��o n�o pode ser salva!',mtInformation,[mbOK],0);
        end;
        end;
      end;//loca��o

    //reserva
{    if(tela='reserva')then
      begin
      //alterando valor total da reserva
      if (continua = true) then
        begin
        if (Self.vlrTotal <> vTotal) then
          begin
          if (MessageDlg('Deseja alterar o valor da conta:'+#13+'DE: R$'+FormatFloat('#0.00',Self.vlrTotal)+#13+'PARA: R$'+FormatFloat('#0.00',vTotal),mtConfirmation,[mbYes,mbNo],0)=mrNo)then
            continua := false;
          end;
        end;

      //salvando valores
      if (continua = true) then
        begin
        try
          iniciaTransacao();
          DM.SQLConnection.StartTransaction(transacao);

          DM.qryReserva.Close;
          DM.qryReserva.SQL.Clear;
          DM.qryReserva.SQL.Add('UPDATE Reserva SET valor_total=:valTot,valor_pago=:valPag,pago=:pag WHERE codigo=:cod');
          DM.qryReserva.ParamByName('valTot').AsFloat := vTotal;
          DM.qryReserva.ParamByName('valPag').AsFloat := vPago;
          if (vPago <> vTotal)then
            DM.qryReserva.ParamByName('pag').AsInteger := 0
          else
            DM.qryReserva.ParamByName('pag').AsInteger := 1;
          DM.qryReserva.ParamByName('cod').AsInteger := Self.codOperacao;
          DM.qryReserva.Prepared := true;
          DM.qryReserva.ExecSQL();

          DM.SQLConnection.Commit(transacao);
          MessageDlg('Reserva salva com sucesso!',mtInformation,[mbOK],0);
          fechar := true;
          Self.Close;
          frmReserva.Close;
        except
          DM.SQLConnection.Rollback(transacao);
          MessageDlg('Reserva n�o pode ser salva!',mtInformation,[mbOK],0);
        end;
        end;
      end;//reserva
}
    //venda
    if(tela='venda')then
      begin
      //alterando valor total da venda
      if (continua = true) then
        begin
        if (Self.vlrTotal <> vTotal) then
          begin
          if (MessageDlg('Deseja alterar o valor da conta:'+#13+'DE: R$'+FormatFloat('#0.00',Self.vlrTotal)+#13+'PARA: R$'+FormatFloat('#0.00',vTotal),mtConfirmation,[mbYes,mbNo],0)=mrNo)then
            continua := false;
          end;
        end;

      //salvando valores
      if (continua = true) then
        begin
        try
          iniciaTransacao();
          DM.SQLConnection.StartTransaction(transacao);

          //atualizando venda
          DM.qryVenda.Close;
          DM.qryVenda.SQL.Clear;
          DM.qryVenda.SQL.Add('UPDATE Venda SET valor_total=:valTot,valor_pago=:valPag,pago=:pag WHERE codigo=:cod');
          DM.qryVenda.ParamByName('valTot').AsFloat := vTotal;
          DM.qryVenda.ParamByName('valPag').AsFloat := vPago;
          if (vPago <> vTotal)then
            DM.qryVenda.ParamByName('pag').AsInteger := 0
          else
            DM.qryVenda.ParamByName('pag').AsInteger := 1;
          DM.qryVenda.ParamByName('cod').AsInteger := Self.codOperacao;
          DM.qryVenda.Prepared := true;
          DM.qryVenda.ExecSQL();

          //conta receber
          DM.qryContaReceber.Close;
          DM.qryContaReceber.SQL.Clear;
          DM.qryContaReceber.SQL.Add('INSERT INTO Conta_Receber (cod_venda,cod_cliente,valor_total,valor_pago,pago,tipo) VALUES(:codVen,:codCli,:valTot,:valPag,:pag,:tip)');
          DM.qryContaReceber.ParamByName('codVen').AsInteger := Self.codOperacao;
          DM.qryContaReceber.ParamByName('codCli').AsInteger := Self.codCliente;
          DM.qryContaReceber.ParamByName('valTot').AsFloat := vTotal;
          DM.qryContaReceber.ParamByName('valPag').AsFloat := vPago;
          if (vPago <> vTotal)then
            DM.qryContaReceber.ParamByName('pag').AsInteger := 0
          else
            DM.qryContaReceber.ParamByName('pag').AsInteger := 1;
          DM.qryContaReceber.ParamByName('tip').AsString := 'Venda';
          DM.qryContaReceber.Prepared := true;
          DM.qryContaReceber.ExecSQL();

          //entrada financeira
          if(vPago>0)then
            begin
            DM.qryEntradaFinanceira.Close;
            DM.qryEntradaFinanceira.SQL.Clear;
            DM.qryEntradaFinanceira.SQL.Add('INSERT INTO Entrada_Financeira(cod_venda,cod_cliente,tipo,valor,data) VALUES (:codVen,:codCli,:tip,:val,:dat)' );
            DM.qryEntradaFinanceira.ParamByName('codVen').AsInteger := Self.codOperacao;
            DM.qryEntradaFinanceira.ParamByName('codCli').AsInteger := Self.codCliente;
            DM.qryEntradaFinanceira.ParamByName('tip').AsString := 'Venda';
            DM.qryEntradaFinanceira.ParamByName('val').AsFloat := vPago;
            DM.qryEntradaFinanceira.ParamByName('dat').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
            DM.qryEntradaFinanceira.Prepared := true;
            DM.qryEntradaFinanceira.ExecSQL();
            end;

          //comiss�o
          if (Self.codFuncionario <> 0) then
            begin
            DM.qryComissaoFuncionario.Close;
            DM.qryComissaoFuncionario.SQL.Clear;
            DM.qryComissaoFuncionario.SQL.Add('INSERT INTO Comissao_Funcionario(cod_funcionario,cod_venda,valor,data) ');
            DM.qryComissaoFuncionario.SQL.Add('VALUES (:codFun,:codVen,:val,:dat)');
            DM.qryComissaoFuncionario.ParamByName('codFun').AsInteger := Self.codFuncionario;
            DM.qryComissaoFuncionario.ParamByName('codVen').AsInteger := Self.codOperacao;
            DM.qryComissaoFuncionario.ParamByName('val').AsFloat := StrToFloat(edComissao.Text);
            DM.qryComissaoFuncionario.ParamByName('dat').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
            DM.qryComissaoFuncionario.Prepared := true;
            DM.qryComissaoFuncionario.ExecSQL();
            end;            

          DM.SQLConnection.Commit(transacao);
          MessageDlg('Venda salva com sucesso!',mtInformation,[mbOK],0);
          fechar := true;
          Self.Close;
          frmVenda.Close;
        except
          DM.SQLConnection.Rollback(transacao);
          MessageDlg('Venda n�o pode ser salva!',mtInformation,[mbOK],0);
        end;
        end;
      end;//venda

    //compra
    if(tela='compra')then
      begin
      //alterando valor total da compra
      if (continua = true) then
        begin
        if (Self.vlrTotal <> vTotal) then
          begin
          if (MessageDlg('Deseja alterar o valor da conta:'+#13+'DE: R$'+FormatFloat('#0.00',Self.vlrTotal)+#13+'PARA: R$'+FormatFloat('#0.00',vTotal),mtConfirmation,[mbYes,mbNo],0)=mrNo)then
            continua := false;
          end;
        end;

      //salvando valores
      if (continua = true) then
        begin
        try
          iniciaTransacao();
          DM.SQLConnection.StartTransaction(transacao);

          //atualizando compra
          DM.qryCompra.Close;
          DM.qryCompra.SQL.Clear;
          DM.qryCompra.SQL.Add('UPDATE Compra SET valor_total=:valTot,valor_pago=:valPag,pago=:pag WHERE codigo=:cod');
          DM.qryCompra.ParamByName('valTot').AsFloat := vTotal;
          DM.qryCompra.ParamByName('valPag').AsFloat := vPago;
          if (vPago <> vTotal)then
            DM.qryCompra.ParamByName('pag').AsInteger := 0
          else
            DM.qryCompra.ParamByName('pag').AsInteger := 1;
          DM.qryCompra.ParamByName('cod').AsInteger := Self.codOperacao;
          DM.qryCompra.Prepared := true;
          DM.qryCompra.ExecSQL();

          //conta pagar
          DM.qryContaPagar.Close;
          DM.qryContaPagar.SQL.Clear;
          DM.qryContaPagar.SQL.Add('INSERT INTO Conta_Pagar (cod_compra,cod_fornecedor,valor_total,valor_pago,pago,tipo,vencimento) VALUES(:codCom,:codFor,:valTot,:valPag,:pag,:tip,:ven)');
          DM.qryContaPagar.ParamByName('codCom').AsInteger := Self.codOperacao;
          DM.qryContaPagar.ParamByName('codFor').AsInteger := Self.codFornecedor;
          DM.qryContaPagar.ParamByName('valTot').AsFloat := vTotal;
          DM.qryContaPagar.ParamByName('valPag').AsFloat := vPago;
          if (vPago <> vTotal)then
            DM.qryContaPagar.ParamByName('pag').AsInteger := 0
          else
            DM.qryContaPagar.ParamByName('pag').AsInteger := 1;
          DM.qryContaPagar.ParamByName('tip').AsString := 'Compra';
          DM.qryContaPagar.ParamByName('ven').AsDate := Self.dtVencimento;
          DM.qryContaPagar.Prepared := true;
          DM.qryContaPagar.ExecSQL();

          //sa�da financeira
          if(vPago>0)then
            begin
            DM.qrySaidaFinanceira.Close;
            DM.qrySaidaFinanceira.SQL.Clear;
            DM.qrySaidaFinanceira.SQL.Add('INSERT INTO Saida_Financeira(cod_compra,cod_fornecedor,tipo,valor,data) VALUES (:codCom,:codFor,:tip,:val,:dat)' );
            DM.qrySaidaFinanceira.ParamByName('codCom').AsInteger := Self.codOperacao;
            DM.qrySaidaFinanceira.ParamByName('codFor').AsInteger := Self.codFornecedor;
            DM.qrySaidaFinanceira.ParamByName('tip').AsString := 'Compra';
            DM.qrySaidaFinanceira.ParamByName('val').AsFloat := vPago;
            DM.qrySaidaFinanceira.ParamByName('dat').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
            DM.qrySaidaFinanceira.Prepared := true;
            DM.qrySaidaFinanceira.ExecSQL();
            end;

          DM.SQLConnection.Commit(transacao);
          MessageDlg('Compra salva com sucesso!',mtInformation,[mbOK],0);
          fechar := true;
          Self.Close;
        except
          DM.SQLConnection.Rollback(transacao);
          MessageDlg('Compra n�o pode ser salva!',mtInformation,[mbOK],0);
        end;
        end;
      end;//compra        
    end; //continua
end;

procedure TfrmValorPago.edValorTotalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in['0'..'9',',',Chr(8)])then
    Key:= #0;
end;

procedure TfrmValorPago.edValorPagoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in['0'..'9',',',Chr(8)])then
    Key:= #0;
end;

procedure TfrmValorPago.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if ((fechar = false)) then
    begin
    MessageDlg('Informe o Valor Pago!',mtInformation,[mbOK],0);
    Action := caNone;
    end;
end;

procedure TfrmValorPago.FormShow(Sender: TObject);
var
  dia: String;
  hora: TTime;
  valorTotal: Real;
  comissao,bonificacao: Real;
  totalComissao: Real;
begin
  fechar := false;

  if ((Self.tela='locacao')or(Self.tela='reserva')or(Self.tela='venda'))then
    begin
    pnlComissao.Visible := true;
    Self.ClientHeight := 287;
    Self.ClientWidth := 551;
    btBtnSalvar.Left := 159;
    btBtnSalvar.Top := 207;
    StatusBar.Panels[0].Width := 420;

    hora := Now;
    dia := diaDaSemana(DateToStr(Date));

    DM.qryConfiguracaoComissao.Close;
    DM.qryConfiguracaoComissao.SQL.Clear;
    DM.qryConfiguracaoComissao.SQL.Add('SELECT * FROM Configuracoes_Comissao c WHERE c.codigo=1');
    DM.qryConfiguracaoComissao.Prepared := true;
    DM.qryConfiguracaoComissao.Open;
    DM.cdsConfiguracaoComissao.Open;
    DM.cdsConfiguracaoComissao.Refresh;

    //calculando valores para loca��o
    if (Self.tela='locacao') then
      begin
      if ((dia='Segunda-feira')or(dia='Ter�a-feira')or(dia='Quarta-feira')or(dia='Quinta-feira')or(dia='Sexta-feira'))then
        begin
        if(hora <= 0.75) then
          begin
          comissao := DM.cdsConfiguracaoComissaoCOMISSAO_LOC_HC_SEG_SEX.AsFloat;
          bonificacao := DM.cdsConfiguracaoComissaoBONIFICACAO_LOC_HC_SEG_SEX.AsFloat;
          end
        else if (hora > 0.75) then
          begin
          comissao := DM.cdsConfiguracaoComissaoCOMISSAO_LOC_HE_SEG_SEX.AsFloat;
          bonificacao := DM.cdsConfiguracaoComissaoBONIFICACAO_LOC_HE_SEG_SEX.AsFloat;
          end;
        end
      else if ((dia='Domingo')or(dia='S�bado')) then
        begin
        if(hora <= 0.75) then
          begin
          comissao := DM.cdsConfiguracaoComissaoCOMISSAO_LOC_HC_SAB.AsFloat;
          bonificacao := DM.cdsConfiguracaoComissaoBONIFICACAO_LOC_HC_SAB.AsFloat;
          end
        else if (hora > 0.75) then
          begin
          comissao := DM.cdsConfiguracaoComissaoCOMISSAO_LOC_HE_SAB.AsFloat;
          bonificacao := DM.cdsConfiguracaoComissaoBONIFICACAO_LOC_HE_SAB.AsFloat;
          end;
        end
      end
    else if (Self.tela='venda') then
      begin
      if ((dia='Segunda-feira')or(dia='Ter�a-feira')or(dia='Quarta-feira')or(dia='Quinta-feira')or(dia='Sexta-feira'))then
        begin
        if(hora <= 0.75) then
          begin
          comissao := DM.cdsConfiguracaoComissaoCOMISSAO_VEN_HC_SEG_SEX.AsFloat;
          bonificacao := DM.cdsConfiguracaoComissaoBONIFICACAO_VEN_HC_SEG_SEX.AsFloat;
          end
        else if (hora > 0.75) then
          begin
          comissao := DM.cdsConfiguracaoComissaoCOMISSAO_VEN_HE_SEG_SEX.AsFloat;
          bonificacao := DM.cdsConfiguracaoComissaoBONIFICACAO_VEN_HE_SEG_SEX.AsFloat;
          end;
        end
      else if ((dia='Domingo')or(dia='S�bado')) then
        begin
        if(hora <= 0.75) then
          begin
          comissao := DM.cdsConfiguracaoComissaoCOMISSAO_VEN_HC_SAB.AsFloat;
          bonificacao := DM.cdsConfiguracaoComissaoBONIFICACAO_VEN_HC_SAB.AsFloat;
          end
        else if (hora > 0.75) then
          begin
          comissao := DM.cdsConfiguracaoComissaoCOMISSAO_VEN_HE_SAB.AsFloat;
          bonificacao := DM.cdsConfiguracaoComissaoBONIFICACAO_VEN_HE_SAB.AsFloat;
          end;
        end
      end;

    mmDescricaoComissao.Lines.Add('COMISS�O: '+FormatFloat('#0.00',comissao) +' %');
    mmDescricaoComissao.Lines.Add('BONIFICA��O: R$ '+FormatFloat('#0.00',bonificacao));

    //calculando comiss�o
    valorTotal := StrToFloat(edValorTotal.Text);
    totalComissao := (valorTotal/100)*comissao;
    totalComissao := totalComissao + bonificacao;
    edComissao.Text := FormatFloat('#0.00',totalComissao);
    end
  else
    //compra
    begin
    pnlComissao.Visible := false;
    Self.ClientHeight := 218;
    Self.ClientWidth := 268;
    btBtnSalvar.Left := 15;
    btBtnSalvar.Top := 135;
    StatusBar.Panels[0].Width := 180;
    end;
end;

procedure TfrmValorPago.edComissaoEnter(Sender: TObject);
begin
  edComissao.Color := clMoneyGreen;
end;

procedure TfrmValorPago.edComissaoExit(Sender: TObject);
begin
  if (edComissao.Text = '') then
    edComissao.Text := '0,00'
  else
    begin
    try
      edComissao.Text := FormatFloat('#0.00',StrToFloat(edComissao.Text));
    except
    end;
    end;
  edComissao.Color := clWindow;
end;

procedure TfrmValorPago.edComissaoKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in['0'..'9',',',Chr(8)])then
    Key:= #0;
end;

end.