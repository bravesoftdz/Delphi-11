unit unSelecionaProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AppEvnts, ComCtrls, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, DBXpress, SqlTimSt;

type
  TfrmSelecionaProduto = class(TForm)
    grpBxProdutos: TGroupBox;
    DBGridProdutos: TDBGrid;
    btBtnNovoProduto: TBitBtn;
    grpBxPesquisa: TGroupBox;
    rdBtnCodigo: TRadioButton;
    rdBtnNome: TRadioButton;
    edPesquisa: TEdit;
    btBtnPesquisar: TBitBtn;
    pnlDivisao: TPanel;
    StatusBar: TStatusBar;
    btBtnSelecionarProduto: TBitBtn;
    ApplicationEvents: TApplicationEvents;
    PopupMenu: TPopupMenu;
    ppMnMostrarTodosProdutos: TMenuItem;
    Label3: TLabel;
    Label1: TLabel;
    edValor: TEdit;
    lblProduto: TLabel;
    Label4: TLabel;
    lblDescricao: TLabel;
    procedure rdBtnCodigoClick(Sender: TObject);
    procedure rdBtnNomeClick(Sender: TObject);
    procedure edPesquisaChange(Sender: TObject);
    procedure edPesquisaEnter(Sender: TObject);
    procedure edPesquisaExit(Sender: TObject);
    procedure edPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure ppMnMostrarTodosProdutosClick(Sender: TObject);
    procedure btBtnPesquisarClick(Sender: TObject);
    procedure ApplicationEventsHint(Sender: TObject);
    procedure btBtnNovoProdutoClick(Sender: TObject);
    procedure DBGridProdutosCellClick(Column: TColumn);
    procedure DBGridProdutosExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btBtnSelecionarProdutoClick(Sender: TObject);
    procedure edValorEnter(Sender: TObject);
    procedure edQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
    procedure edValorTotalKeyPress(Sender: TObject; var Key: Char);
    procedure edValorExit(Sender: TObject);
  private
    (*VARI�VEIS DE CONTROLE*)
    transacao: TTransactionDesc;//transa��es - deve-se adicionar a uses DBXpress

    (*PROCEDURES DE CONTROLE*)
    procedure iniciaTransacao();//dispara uma transa��o
  public
    tela:String;//tela que chamou esta
    codOperacao: Integer; //c�digo da loca��o/reserva
    datIni, datFin: TDateTime;

    procedure mostraTodosProdutosLocacao();//exibe todos os Produtos para loca��o
    procedure mostraTodosProdutosReserva();//exibe todos os Produtos para reserva
    procedure mostraTodosProdutosVenda();//exibe todos os Produtos para venda
  end;

var
  frmSelecionaProduto: TfrmSelecionaProduto;

implementation

uses unDM, unProduto, unLocacao;

{$R *.dfm}

(*PROCEDURES DE CONTROLE*)

{dispara uma transa��o}
procedure TfrmSelecionaProduto.iniciaTransacao();
begin
  transacao.TransactionID := 1;
  transacao.IsolationLevel := xilREPEATABLEREAD;
end;

{exibe todos os Produtos para loca��o}
procedure TfrmSelecionaProduto.mostraTodosProdutosLocacao();
begin
  DM.qryProduto.Close;
  DM.qryProduto.SQL.Clear;
  //DM.qryProduto.SQL.Add('SELECT * From Produto p WHERE p.status IN(0,2) ORDER BY p.codigo');//somente produtos dispon�veis
  DM.qryProduto.SQL.Add('SELECT * From Produto p ');
  DM.qryProduto.SQL.Add('WHERE p.codigo NOT IN( ');
  DM.qryProduto.SQL.Add('SELECT i.cod_produto FROM Item_Locacao i, Locacao l ');
  DM.qryProduto.SQL.Add('WHERE (i.cod_produto=p.codigo AND i.cod_locacao=l.codigo AND l.data_inicio BETWEEN :dtIni AND :dtFin) ');
  DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_locacao=l.codigo AND l.data_final BETWEEN  :dtIni AND :dtFin) ');
  DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_locacao=l.codigo AND :dtIni BETWEEN l.data_inicio AND l.data_final) ');
  DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_locacao=l.codigo AND :dtFin BETWEEN l.data_inicio AND l.data_final) ');
  DM.qryProduto.SQL.Add(') ');
  DM.qryProduto.SQL.Add('AND p.status <> 3 ');//venda
  DM.qryProduto.SQL.Add('ORDER BY p.codigo');
  DM.qryProduto.ParamByName('dtIni').AsSQLTimeStamp := StrToSQLTimeStamp(frmLocacao.mEdDataInicio.Text);
  DM.qryProduto.ParamByName('dtFin').AsSQLTimeStamp := StrToSQLTimeStamp(frmLocacao.mEdDataFinal.Text);
  DM.qryProduto.Prepared := true;
  DM.qryProduto.Open;

  DM.cdsProduto.Open;
  DM.cdsProduto.Refresh;
  DM.cdsProduto.First;

  lblProduto.Caption := DM.cdsProdutoNOME.AsString;
  lblDescricao.Caption := DM.cdsProdutoDESCRICAO.AsString;
  edValor.Text := FormatFloat('#0.00',DM.cdsProdutoVALOR_LOCACAO.AsFloat);
end;

{exibe todos os Produtos para venda}
procedure TfrmSelecionaProduto.mostraTodosProdutosVenda();
begin
  DM.qryProduto.Close;
  DM.qryProduto.SQL.Clear;
  DM.qryProduto.SQL.Add('SELECT * FROM Produto p WHERE p.status=0 ORDER BY p.codigo');
  DM.qryProduto.Prepared := true;
  DM.qryProduto.Open;

  DM.cdsProduto.Open;
  DM.cdsProduto.Refresh;
  DM.cdsProduto.First;

  lblProduto.Caption := DM.cdsProdutoNOME.AsString;
  lblDescricao.Caption := DM.cdsProdutoDESCRICAO.AsString;
  edValor.Text := FormatFloat('#0.00',DM.cdsProdutoVALOR_LOCACAO.AsFloat);
end;

{exibe todos os Produtos para reserva}
procedure TfrmSelecionaProduto.mostraTodosProdutosReserva();
begin
  DM.qryProduto.Close;
  DM.qryProduto.SQL.Clear;

  DM.qryProduto.SQL.Add('SELECT * From Produto p ');

  DM.qryProduto.SQL.Add('WHERE p.codigo NOT IN( ');
  DM.qryProduto.SQL.Add('SELECT i.cod_produto FROM Item_Locacao i, Locacao l ');
  DM.qryProduto.SQL.Add('WHERE (i.cod_produto=p.codigo AND i.cod_locacao=l.codigo AND l.data_inicio BETWEEN :dtIni AND :dtFin AND p.status =1) ');
  DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_locacao=l.codigo AND l.data_final BETWEEN  :dtIni AND :dtFin AND p.status =1) ');
  DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_locacao=l.codigo AND :dtIni BETWEEN l.data_inicio AND l.data_final AND p.status =1) ');
  DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_locacao=l.codigo AND :dtFin BETWEEN l.data_inicio AND l.data_final AND p.status =1) ');
  DM.qryProduto.SQL.Add(') ');

  DM.qryProduto.SQL.Add('AND p.codigo NOT IN( ');
  DM.qryProduto.SQL.Add('SELECT i.cod_produto FROM Item_Reserva i, Reserva r ');
  DM.qryProduto.SQL.Add('WHERE (i.cod_produto=p.codigo AND i.cod_reserva=r.codigo AND r.data_inicio BETWEEN :dtIni AND :dtFin AND p.status NOT IN (0,3)) ');
  DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_reserva=r.codigo AND r.data_final BETWEEN  :dtIni AND :dtFin AND p.status NOT IN (0,3)) ');
  DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_reserva=r.codigo AND :dtIni BETWEEN r.data_inicio AND r.data_final AND p.status NOT IN (0,3)) ');
  DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_reserva=r.codigo AND :dtFin BETWEEN r.data_inicio AND r.data_final AND p.status NOT IN (0,3)) ');
  DM.qryProduto.SQL.Add(') ');

  DM.qryProduto.SQL.Add('AND p.status <> 3');

  DM.qryProduto.SQL.Add('ORDER BY p.codigo');

  DM.qryProduto.ParamByName('dtIni').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Self.datIni);
  DM.qryProduto.ParamByName('dtFin').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Self.datFin);

  DM.qryProduto.Prepared := true;
  DM.qryProduto.Open;

  DM.cdsProduto.Open;
  DM.cdsProduto.Refresh;
  DM.cdsProduto.First;

  lblProduto.Caption := DM.cdsProdutoNOME.AsString;
  lblDescricao.Caption := DM.cdsProdutoDESCRICAO.AsString;
  edValor.Text := FormatFloat('#0.00',DM.cdsProdutoVALOR_LOCACAO.AsFloat);
end;

                                      
(*FIM PROCEDURES DE CONTROLE*)

procedure TfrmSelecionaProduto.rdBtnCodigoClick(Sender: TObject);
begin
  edPesquisa.Enabled := true;
  edPesquisa.Clear;
  edPesquisa.SetFocus;
  btBtnPesquisar.Enabled := false;
  StatusBar.Panels[1].Text := 'Pesquisar';   
end;

procedure TfrmSelecionaProduto.rdBtnNomeClick(Sender: TObject);
begin
  edPesquisa.Enabled := true;
  edPesquisa.Clear;
  edPesquisa.SetFocus;
  btBtnPesquisar.Enabled := false;
  StatusBar.Panels[1].Text := 'Pesquisar';   
end;

procedure TfrmSelecionaProduto.edPesquisaChange(Sender: TObject);
begin
  if (edPesquisa.Text = '')then
    btBtnPesquisar.Enabled := false;

  if(edPesquisa.Text <> '')then
    begin
    if((rdBtnCodigo.Checked = true)or(rdBtnNome.Checked = true))then
      btBtnPesquisar.Enabled := true
    else
      btBtnPesquisar.Enabled := false;
    end;
end;

procedure TfrmSelecionaProduto.edPesquisaEnter(Sender: TObject);
begin
  edPesquisa.Color := clMoneyGreen;
end;

procedure TfrmSelecionaProduto.edPesquisaExit(Sender: TObject);
begin
  edPesquisa.Color := clWindow;
end;

procedure TfrmSelecionaProduto.edPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=13) then
    btBtnPesquisarClick(Sender);
end;

procedure TfrmSelecionaProduto.edPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (rdBtnCodigo.Checked = true) then
    begin
    if not (Key in['0'..'9',Chr(8)])then
      Key:= #0;
    end;
end;

procedure TfrmSelecionaProduto.ppMnMostrarTodosProdutosClick(
  Sender: TObject);
begin
  if (Self.tela = 'locacao')then
    mostraTodosProdutosLocacao()
  else if (Self.tela = 'reserva')then
    mostraTodosProdutosReserva()
  else if (Self.tela = 'venda')then
    mostraTodosProdutosVenda();
end;

procedure TfrmSelecionaProduto.btBtnPesquisarClick(Sender: TObject);
begin
 {c�digo}
  if (rdBtnCodigo.Checked = true) then
    begin
    if(Self.tela='locacao')then
      begin //loca��o
      DM.qryProduto.Close;
      DM.qryProduto.SQL.Clear;
      DM.qryProduto.SQL.Add('SELECT * FROM Produto p WHERE p.status IN(0,2) AND p.codigo =:cod ORDER BY p.codigo');
      DM.qryProduto.ParamByName('cod').AsInteger := StrToInt(edPesquisa.Text);
      DM.qryProduto.Prepared := true;
      DM.qryProduto.Open;
      DM.cdsProduto.Open;
      DM.cdsProduto.Refresh;

      if(DM.cdsProduto.RecordCount = 0)then
        begin
        MessageDlg('Nenhum Produto encontrado com o c�digo ' + edPesquisa.Text + '!', mtError,[mbOk],0);
        edPesquisa.Clear;
        mostraTodosProdutosLocacao();
        end;

      DM.cdsProduto.Open;
      DM.cdsProduto.Refresh;
      DM.cdsProduto.Last;
      end //loca��o

    else if(Self.tela='reserva')then
      begin //reserva
      DM.qryProduto.Close;
      DM.qryProduto.SQL.Clear;

      DM.qryProduto.SQL.Add('SELECT * From Produto p ');
      DM.qryProduto.SQL.Add('WHERE p.codigo NOT IN( ');
      DM.qryProduto.SQL.Add('SELECT i.cod_produto FROM Item_Locacao i, Locacao l ');
      DM.qryProduto.SQL.Add('WHERE (i.cod_produto=p.codigo AND i.cod_locacao=l.codigo AND l.data_inicio BETWEEN :dtIni AND :dtFin AND p.status =1) ');
      DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_locacao=l.codigo AND l.data_final BETWEEN  :dtIni AND :dtFin AND p.status =1) ');
      DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_locacao=l.codigo AND :dtIni BETWEEN l.data_inicio AND l.data_final AND p.status =1) ');
      DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_locacao=l.codigo AND :dtFin BETWEEN l.data_inicio AND l.data_final AND p.status =1) ');
      DM.qryProduto.SQL.Add(') ');

      DM.qryProduto.SQL.Add('AND p.codigo NOT IN( ');
      DM.qryProduto.SQL.Add('SELECT i.cod_produto FROM Item_Reserva i, Reserva r ');
      DM.qryProduto.SQL.Add('WHERE (i.cod_produto=p.codigo AND i.cod_reserva=r.codigo AND r.data_inicio BETWEEN :dtIni AND :dtFin AND p.status NOT IN (0,3)) ');
      DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_reserva=r.codigo AND r.data_final BETWEEN  :dtIni AND :dtFin AND p.status NOT IN (0,3)) ');
      DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_reserva=r.codigo AND :dtIni BETWEEN r.data_inicio AND r.data_final AND p.status NOT IN (0,3)) ');
      DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_reserva=r.codigo AND :dtFin BETWEEN r.data_inicio AND r.data_final AND p.status NOT IN (0,3)) ');
      DM.qryProduto.SQL.Add(') ');

      DM.qryProduto.SQL.Add('AND p.status <> 3 ');
      DM.qryProduto.SQL.Add('AND p.codigo=:cod ');

      DM.qryProduto.SQL.Add('ORDER BY p.codigo');

      DM.qryProduto.ParamByName('cod').AsInteger := StrToInt(edPesquisa.Text);
      DM.qryProduto.ParamByName('dtIni').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Self.datIni);
      DM.qryProduto.ParamByName('dtFin').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Self.datFin);

      DM.qryProduto.Prepared := true;
      DM.qryProduto.Open;

      DM.cdsProduto.Open;
      DM.cdsProduto.Refresh;

      if(DM.cdsProduto.RecordCount = 0)then
        begin
        MessageDlg('Nenhum Produto encontrado com o c�digo ' + edPesquisa.Text + '!', mtError,[mbOk],0);
        edPesquisa.Clear;
        mostraTodosProdutosReserva();
        end;

      DM.cdsProduto.Open;
      DM.cdsProduto.Refresh;
      DM.cdsProduto.Last;
      end //reserva

    else if(Self.tela='venda')then
      begin //venda
      DM.qryProduto.Close;
      DM.qryProduto.SQL.Clear;
      DM.qryProduto.SQL.Add('SELECT * FROM Produto p WHERE p.status=0 AND p.codigo=:cod ORDER BY p.codigo');
      DM.qryProduto.ParamByName('cod').AsInteger := StrToInt(edPesquisa.Text);
      DM.qryProduto.Prepared := true;
      DM.qryProduto.Open;

      DM.cdsProduto.Open;
      DM.cdsProduto.Refresh;

      if(DM.cdsProduto.RecordCount = 0)then
        begin
        MessageDlg('Nenhum Produto encontrado com o c�digo ' + edPesquisa.Text + '!', mtError,[mbOk],0);
        edPesquisa.Clear;
        mostraTodosProdutosVenda();
        end;

      DM.cdsProduto.Open;
      DM.cdsProduto.Refresh;
      DM.cdsProduto.Last;
      end; //venda
    end; //rdBtnCodigo

  {nome}
  if (rdBtnNome.Checked = true) then
    begin
    if(Self.tela='locacao')then
      begin //loca��o
      DM.qryProduto.Close;
      DM.qryProduto.SQL.Clear;
      DM.qryProduto.SQL.Add('SELECT * FROM Produto p WHERE p.status IN(0,2) AND p.nome LIKE  ' + QuotedStr('%' + edPesquisa.Text + '%'));
      DM.qryProduto.SQL.Add('ORDER BY p.codigo');
      DM.qryProduto.Prepared := true;
      DM.qryProduto.Open;

      DM.cdsProduto.Open;
      DM.cdsProduto.Refresh;

      if(DM.cdsProduto.RecordCount = 0)then
        begin
        MessageDlg('Nenhum Produto encontrado com os caracteres ' + edPesquisa.Text + '!', mtError,[mbOk],0);
        edPesquisa.Clear;
        mostraTodosProdutosLocacao();
        end;

      DM.cdsProduto.Open;
      DM.cdsProduto.Refresh;
      DM.cdsProduto.Last;
      end //loca��o

    else if(Self.tela='reserva')then
      begin //reserva
      DM.qryProduto.Close;
      DM.qryProduto.SQL.Clear;

      DM.qryProduto.SQL.Add('SELECT * From Produto p ');
      DM.qryProduto.SQL.Add('WHERE p.codigo NOT IN( ');
      DM.qryProduto.SQL.Add('SELECT i.cod_produto FROM Item_Locacao i, Locacao l ');
      DM.qryProduto.SQL.Add('WHERE (i.cod_produto=p.codigo AND i.cod_locacao=l.codigo AND l.data_inicio BETWEEN :dtIni AND :dtFin AND p.status =1) ');
      DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_locacao=l.codigo AND l.data_final BETWEEN  :dtIni AND :dtFin AND p.status =1) ');
      DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_locacao=l.codigo AND :dtIni BETWEEN l.data_inicio AND l.data_final AND p.status =1) ');
      DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_locacao=l.codigo AND :dtFin BETWEEN l.data_inicio AND l.data_final AND p.status =1) ');
      DM.qryProduto.SQL.Add(') ');

      DM.qryProduto.SQL.Add('AND p.codigo NOT IN( ');
      DM.qryProduto.SQL.Add('SELECT i.cod_produto FROM Item_Reserva i, Reserva r ');
      DM.qryProduto.SQL.Add('WHERE (i.cod_produto=p.codigo AND i.cod_reserva=r.codigo AND r.data_inicio BETWEEN :dtIni AND :dtFin AND p.status NOT IN (0,3)) ');
      DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_reserva=r.codigo AND r.data_final BETWEEN  :dtIni AND :dtFin AND p.status NOT IN (0,3)) ');
      DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_reserva=r.codigo AND :dtIni BETWEEN r.data_inicio AND r.data_final AND p.status NOT IN (0,3)) ');
      DM.qryProduto.SQL.Add('OR (i.cod_produto=p.codigo AND i.cod_reserva=r.codigo AND :dtFin BETWEEN r.data_inicio AND r.data_final AND p.status NOT IN (0,3)) ');
      DM.qryProduto.SQL.Add(') ');

      DM.qryProduto.SQL.Add('AND p.status <> 3 ');
      DM.qryProduto.SQL.Add('AND p.nome LIKE  ' + QuotedStr('%' + edPesquisa.Text + '%'));

      DM.qryProduto.SQL.Add('ORDER BY p.codigo');

      DM.qryProduto.ParamByName('dtIni').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Self.datIni);
      DM.qryProduto.ParamByName('dtFin').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Self.datFin);

      DM.qryProduto.Prepared := true;
      DM.qryProduto.Open;

      DM.cdsProduto.Open;
      DM.cdsProduto.Refresh;

      if(DM.cdsProduto.RecordCount = 0)then
        begin
        MessageDlg('Nenhum Produto encontrado com o c�digo ' + edPesquisa.Text + '!', mtError,[mbOk],0);
        edPesquisa.Clear;
        mostraTodosProdutosReserva();
        end;

      DM.cdsProduto.Open;
      DM.cdsProduto.Refresh;
      DM.cdsProduto.Last;
      end //reserva

    else if(Self.tela='venda')then
      begin //venda
      DM.qryProduto.Close;
      DM.qryProduto.SQL.Clear;
      DM.qryProduto.SQL.Add('SELECT * FROM Produto p WHERE p.status=0 AND p.nome LIKE  ' + QuotedStr('%' + edPesquisa.Text + '%'));
      DM.qryProduto.SQL.Add('ORDER BY p.codigo');
      DM.qryProduto.Prepared := true;
      DM.qryProduto.Open;

      DM.cdsProduto.Open;
      DM.cdsProduto.Refresh;

      if(DM.cdsProduto.RecordCount = 0)then
        begin
        MessageDlg('Nenhum Produto encontrado com o c�digo ' + edPesquisa.Text + '!', mtError,[mbOk],0);
        edPesquisa.Clear;
        mostraTodosProdutosVenda();
        end;

      DM.cdsProduto.Open;
      DM.cdsProduto.Refresh;
      DM.cdsProduto.Last;
      end; //venda   
    end; //rdBtnNome

  StatusBar.Panels[1].Text := '';
end;
                                                                        
procedure TfrmSelecionaProduto.ApplicationEventsHint(Sender: TObject);
begin
  StatusBar.Panels[0].Text := Application.Hint;
end;

procedure TfrmSelecionaProduto.btBtnNovoProdutoClick(Sender: TObject);
begin
  StatusBar.Panels[1].Text := 'Cadastro de um Novo Produto';

  Application.CreateForm(TfrmProduto,frmProduto);
  frmProduto.operacao := 'novo';
  frmProduto.ShowModal;
  frmProduto.Free;

  if(Self.tela='locacao')then
    mostraTodosProdutosLocacao()
  else if(Self.tela='reserva')then
    mostraTodosProdutosReserva()
  else if(Self.tela='venda')then
    mostraTodosProdutosVenda();
  StatusBar.Panels[1].Text := '';
end;

procedure TfrmSelecionaProduto.DBGridProdutosCellClick(Column: TColumn);
begin
  if(Self.tela='locacao')then
    begin
    lblProduto.Caption := DM.cdsProdutoNOME.AsString;
    lblDescricao.Caption := DM.cdsProdutoDESCRICAO.AsString;
    edValor.Text := FormatFloat('#0.00',DM.cdsProdutoVALOR_LOCACAO.AsFloat);
    end
  else if(Self.tela='venda')then
    begin
    lblProduto.Caption := DM.cdsProdutoNOME.AsString;
    lblDescricao.Caption := DM.cdsProdutoDESCRICAO.AsString;
    edValor.Text := FormatFloat('#0.00',DM.cdsProdutoVALOR_VENDA.AsFloat);
    end;

  StatusBar.Panels[1].Text := 'OPERA��O = Navega��o';
end;

procedure TfrmSelecionaProduto.DBGridProdutosExit(Sender: TObject);
begin
  StatusBar.Panels[1].Text := '';
end;

procedure TfrmSelecionaProduto.FormShow(Sender: TObject);
begin
  if(Self.tela='locacao')then
    mostraTodosProdutosLocacao()
  else if(Self.tela='reserva')then
    mostraTodosProdutosReserva()
  else if(Self.tela='venda')then
    mostraTodosProdutosVenda();
  StatusBar.Panels[1].Text := '';
end;

procedure TfrmSelecionaProduto.btBtnSelecionarProdutoClick(
  Sender: TObject);
var
  cod: Integer;
  msg: String;
begin
  cod := DM.cdsProdutoCODIGO.AsInteger;

  //loca��o
  if(tela='locacao')then
    begin
    //verifica se n�o existe uma reserva para este produto
    DM.qryItemReserva.Close;
    DM.qryItemReserva.SQL.Clear;
    DM.qryItemReserva.SQL.Add('SELECT i.* FROM Item_Reserva i, Reserva r ');
    DM.qryItemReserva.SQL.Add('WHERE (i.cod_produto=:codPro AND i.cod_reserva=r.codigo AND r.status=0 ');
    DM.qryItemReserva.SQL.Add('AND r.data_inicio BETWEEN :dtIni AND :dtFin) ');
    DM.qryItemReserva.SQL.Add('OR (i.cod_produto=:codPro AND i.cod_reserva=r.codigo AND r.status=0 AND r.data_final BETWEEN  :dtIni AND :dtFin) ');
    DM.qryItemReserva.SQL.Add('OR (i.cod_produto=:codPro AND i.cod_reserva=r.codigo AND r.status=0 AND :dtIni BETWEEN r.data_inicio AND r.data_final) ');
    DM.qryItemReserva.SQL.Add('OR (i.cod_produto=:codPro AND i.cod_reserva=r.codigo AND r.status=0 AND :dtFin BETWEEN r.data_inicio AND r.data_final) ');
    DM.qryItemReserva.ParamByName('codPro').AsInteger := cod;
    DM.qryItemReserva.ParamByName('dtIni').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Self.datIni);
    DM.qryItemReserva.ParamByName('dtFin').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Self.datFin);
    DM.qryItemReserva.Prepared := true;
    DM.qryItemReserva.Open;

    DM.cdsItemReserva.Open;
    DM.cdsItemReserva.Refresh;

    if (DM.cdsItemReserva.RecordCount <> 0) then
      begin
      msg := 'J� existe uma Reserva para este produto: ' + DM.cdsProdutoNOME.AsString;
      DM.cdsItemReserva.First;
      while(not(DM.cdsItemReserva.Eof))do
        begin
        //pegando reserva deste produto
        DM.qryReserva.Close;
        DM.qryReserva.SQL.Clear;
        DM.qryReserva.SQL.Add('SELECT * FROM Reserva WHERE codigo=:cod');
        DM.qryReserva.ParamByName('cod').AsInteger := DM.cdsItemReservaCOD_RESERVA.AsInteger;
        DM.qryReserva.Prepared := true;
        DM.qryReserva.Open;
        DM.cdsReserva.Open;
        DM.cdsReserva.Refresh;
        msg := msg + #13;
        msg := msg + DM.cdsReservaDATA_INICIO.AsString + ' - ' + DM.cdsReservaDATA_FINAL.AsString;
        DM.cdsItemReserva.Next;
        end;

      MessageDlg(msg, mtInformation,[mbOk],0);
      exit;
      end;

    try
      iniciaTransacao();
      DM.SQLConnection.StartTransaction(transacao);

      //alterando status do produto
      DM.qryProduto.Close;
      DM.qryProduto.SQL.Clear;
      DM.qryProduto.SQL.Add('UPDATE Produto p SET p.status =:sta WHERE p.codigo=:cod');
      DM.qryProduto.ParamByName('sta').AsInteger := 1; //alugado
      DM.qryProduto.ParamByName('cod').AsInteger := cod;
      DM.qryProduto.Prepared := true;
      DM.qryProduto.ExecSQL();

      //inserindo intem da loca��o
      DM.qryItemLocacao.Close;
      DM.qryItemLocacao.SQL.Clear;
      DM.qryItemLocacao.SQL.Add('INSERT INTO Item_Locacao(cod_locacao,cod_produto,quantidade,valor_unitario,valor_total) ');
      DM.qryItemLocacao.SQL.Add('VALUES (:codLoc,:codPro,:qua,:valUni,:valTot)');
      DM.qryItemLocacao.ParamByName('codLoc').AsInteger := Self.codOperacao;
      DM.qryItemLocacao.ParamByName('codPro').AsInteger := cod;
      DM.qryItemLocacao.ParamByName('qua').AsInteger := 1;
      DM.qryItemLocacao.ParamByName('valUni').AsFloat := StrToFloat(edValor.Text);
      DM.qryItemLocacao.ParamByName('valTot').AsFloat := StrToFloat(edValor.Text);
      DM.qryItemLocacao.Prepared := true;
      DM.qryItemLocacao.ExecSQL();

      DM.SQLConnection.Commit(transacao);
    except
      DM.SQLConnection.Rollback(transacao);
      MessageDlg('Produto n�o pode ser inserido!',mtInformation,[mbOK],0);
    end;

    mostraTodosProdutosLocacao();
    end;

  //reserva
  if(tela='reserva')then
    begin
    //verifica se n�o existe uma reserva para este produto
    DM.qryItemReserva.Close;
    DM.qryItemReserva.SQL.Clear;
    DM.qryItemReserva.SQL.Add('SELECT i.* FROM Item_Reserva i, Reserva r ');
    DM.qryItemReserva.SQL.Add('WHERE (i.cod_produto=:codPro AND i.cod_reserva=r.codigo AND r.data_inicio BETWEEN :dtIni AND :dtFin AND r.status=0) ');
    DM.qryItemReserva.SQL.Add('OR (i.cod_produto=:codPro AND i.cod_reserva=r.codigo AND r.data_final BETWEEN  :dtIni AND :dtFin AND r.status=0) ');
    DM.qryItemReserva.SQL.Add('OR (i.cod_produto=:codPro AND i.cod_reserva=r.codigo AND :dtIni BETWEEN r.data_inicio AND r.data_final AND r.status=0) ');
    DM.qryItemReserva.SQL.Add('OR (i.cod_produto=:codPro AND i.cod_reserva=r.codigo AND :dtFin BETWEEN r.data_inicio AND r.data_final AND r.status=0) ');
    DM.qryItemReserva.ParamByName('codPro').AsInteger := cod;
    DM.qryItemReserva.ParamByName('dtIni').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Self.datIni);
    DM.qryItemReserva.ParamByName('dtFin').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Self.datFin);
    DM.qryItemReserva.Prepared := true;
    DM.qryItemReserva.Open;

    DM.cdsItemReserva.Open;
    DM.cdsItemReserva.Refresh;

    if (DM.cdsItemReserva.RecordCount <> 0) then
      begin
      MessageDlg('J� existe uma Reserva para este produto: ' + DM.cdsProdutoNOME.AsString +#13+
      DM.cdsReservaDATA_INICIO.AsString + ' - '+ DM.cdsReservaDATA_FINAL.AsString, mtInformation,[mbOk],0);
      exit;
      end
    else
      begin
      //verifica se n�o existe uma loca��o para este produto
      DM.qryItemLocacao.Close;
      DM.qryItemLocacao.SQL.Clear;
      DM.qryItemLocacao.SQL.Add('SELECT i.* FROM Item_Locacao i, Locacao l ');
      DM.qryItemLocacao.SQL.Add('WHERE (i.cod_produto=:codPro AND i.cod_locacao=l.codigo AND l.status=0 AND l.data_inicio BETWEEN :dtIni AND :dtFin AND i.data_devolucao IS NULL ) ');
      DM.qryItemLocacao.SQL.Add('OR (i.cod_produto=:codPro AND i.cod_locacao=l.codigo AND l.status=0 AND l.data_final BETWEEN  :dtIni AND :dtFin AND i.data_devolucao IS NULL) ');
      DM.qryItemLocacao.SQL.Add('OR (i.cod_produto=:codPro AND i.cod_locacao=l.codigo AND l.status=0 AND :dtIni BETWEEN l.data_inicio AND l.data_final AND i.data_devolucao IS NULL) ');
      DM.qryItemLocacao.SQL.Add('OR (i.cod_produto=:codPro AND i.cod_locacao=l.codigo AND l.status=0 AND :dtFin BETWEEN l.data_inicio AND l.data_final AND i.data_devolucao IS NULL) ');
      DM.qryItemLocacao.ParamByName('codPro').AsInteger := cod;
      DM.qryItemLocacao.ParamByName('dtIni').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Self.datIni);
      DM.qryItemLocacao.ParamByName('dtFin').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Self.datFin);
      DM.qryItemLocacao.Prepared := true;
      DM.qryItemLocacao.Open;

      DM.cdsItemLocacao.Open;
      DM.cdsItemLocacao.Refresh;

      if (DM.cdsItemLocacao.RecordCount <> 0) then
        begin
        MessageDlg('J� existe uma Loca��o para este produto: ' + DM.cdsProdutoNOME.AsString +#13+
        DM.cdsReservaDATA_INICIO.AsString + ' - '+ DM.cdsReservaDATA_FINAL.AsString, mtInformation,[mbOk],0);
        exit;
        end;
      end;

    //fazendo reserva do produto
    try
      iniciaTransacao();
      DM.SQLConnection.StartTransaction(transacao);

      //alterando status do produto
      if(DM.cdsProdutoSTATUS.AsInteger=0)then
        begin
        DM.qryProduto.Close;
        DM.qryProduto.SQL.Clear;
        DM.qryProduto.SQL.Add('UPDATE Produto p SET p.status =:sta WHERE p.codigo=:cod');
        DM.qryProduto.ParamByName('sta').AsInteger := 2; //reservado
        DM.qryProduto.ParamByName('cod').AsInteger := cod;
        DM.qryProduto.Prepared := true;
        DM.qryProduto.ExecSQL();
        end;

      //inserindo item da reserva
      DM.qryItemReserva.Close;
      DM.qryItemReserva.SQL.Clear;
      DM.qryItemReserva.SQL.Add('INSERT INTO Item_Reserva(cod_reserva,cod_produto,quantidade,valor_unitario,valor_total) ');
      DM.qryItemReserva.SQL.Add('VALUES (:codRes,:codPro,:qua,:valUni,:valTot)');
      DM.qryItemReserva.ParamByName('codRes').AsInteger := Self.codOperacao;
      DM.qryItemReserva.ParamByName('codPro').AsInteger := cod;
      DM.qryItemReserva.ParamByName('qua').AsInteger := 1;
      DM.qryItemReserva.ParamByName('valUni').AsFloat := StrToFloat(edValor.Text);
      DM.qryItemReserva.ParamByName('valTot').AsFloat := StrToFloat(edValor.Text);
      DM.qryItemReserva.Prepared := true;
      DM.qryItemReserva.ExecSQL();

      DM.SQLConnection.Commit(transacao);
    except
      DM.SQLConnection.Rollback(transacao);
      MessageDlg('Produto n�o pode ser inserido!',mtInformation,[mbOK],0);
    end;

    mostraTodosProdutosReserva();
    end;

  //venda
  if(tela='venda')then
    begin
    //verifica se n�o existe uma reserva para este produto
    DM.qryItemReserva.Close;
    DM.qryItemReserva.SQL.Clear;
    DM.qryItemReserva.SQL.Add('SELECT i.* FROM Item_Reserva i, Reserva r ');
    DM.qryItemReserva.SQL.Add('WHERE i.cod_produto=:codPro AND i.cod_reserva=r.codigo AND r.status=0 ');
    //DM.qryItemReserva.SQL.Add('AND CAST (r.data_inicio AS DATE) > current_date');
    DM.qryItemReserva.ParamByName('codPro').AsInteger := cod;
    DM.qryItemReserva.Prepared := true;
    DM.qryItemReserva.Open;

    DM.cdsItemReserva.Open;
    DM.cdsItemReserva.Refresh;

    if (DM.cdsItemReserva.RecordCount <> 0) then
      begin
      MessageDlg('Existe '+IntToStr(DM.cdsItemReserva.RecordCount)+' Reserva pendente para este produto.'+#13+'O mesmo n�o pode ser vendido no momento!', mtInformation,[mbOk],0);
      exit;
      end;

    try
      iniciaTransacao();
      DM.SQLConnection.StartTransaction(transacao);

      //alterando status do produto
      DM.qryProduto.Close;
      DM.qryProduto.SQL.Clear;
      DM.qryProduto.SQL.Add('UPDATE Produto p SET p.status =:sta WHERE p.codigo=:cod');
      DM.qryProduto.ParamByName('sta').AsInteger := 3; //vendido
      DM.qryProduto.ParamByName('cod').AsInteger := cod;
      DM.qryProduto.Prepared := true;
      DM.qryProduto.ExecSQL();

      //inserindo intem da venda
      DM.qryItemVenda.Close;
      DM.qryItemVenda.SQL.Clear;
      DM.qryItemVenda.SQL.Add('INSERT INTO Item_Venda(cod_venda,cod_produto,quantidade,valor_unitario,valor_total) ');
      DM.qryItemVenda.SQL.Add('VALUES (:codVen,:codPro,:qua,:valUni,:valTot)');
      DM.qryItemVenda.ParamByName('codVen').AsInteger := Self.codOperacao;
      DM.qryItemVenda.ParamByName('codPro').AsInteger := cod;
      DM.qryItemVenda.ParamByName('qua').AsInteger := 1;
      DM.qryItemVenda.ParamByName('valUni').AsFloat := StrToFloat(edValor.Text);
      DM.qryItemVenda.ParamByName('valTot').AsFloat := StrToFloat(edValor.Text);
      DM.qryItemVenda.Prepared := true;
      DM.qryItemVenda.ExecSQL();

      DM.SQLConnection.Commit(transacao);
    except
      DM.SQLConnection.Rollback(transacao);
      MessageDlg('Produto n�o pode ser inserido!',mtInformation,[mbOK],0);
    end;

    mostraTodosProdutosVenda();
    end;
end;

procedure TfrmSelecionaProduto.edValorEnter(Sender: TObject);
begin
  edValor.Color := clMoneyGreen;
end;

procedure TfrmSelecionaProduto.edQuantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in['0'..'9',Chr(8)])then
    Key:= #0;
end;

procedure TfrmSelecionaProduto.edValorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in['0'..'9',',',Chr(8)])then
    Key:= #0;
end;

procedure TfrmSelecionaProduto.edValorTotalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in['0'..'9',',',Chr(8)])then
    Key:= #0;
end;

procedure TfrmSelecionaProduto.edValorExit(Sender: TObject);
begin
  if (edValor.Text = '') then
    edValor.Text := '0,00'
  else
    begin
    try
      edValor.Text := FormatFloat('#0.00',StrToFloat(edValor.Text));
    except
    end;
    end;

  edValor.Color := clWindow;
end;

end.
