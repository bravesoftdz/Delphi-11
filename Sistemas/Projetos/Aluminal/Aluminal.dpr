program Aluminal;

uses
  Forms,
  unCadPedido in 'unCadPedido.pas' {frmCadPedido},
  unPrincipal in 'unPrincipal.pas' {frmPrincipal},
  unDM in 'unDM.pas' {DM: TDataModule},
  unCliente in 'Dados\unCliente.pas',
  unLocalizar in 'unLocalizar.pas' {frmLocalizar},
  unLocalizarCliente in 'unLocalizarCliente.pas' {frmLocalizarCliente},
  unConstantes in 'Geral\unConstantes.pas',
  unFuncoes in 'Geral\unFuncoes.pas',
  unFrmBasico in 'unFrmBasico.pas' {Form1},
  unLocalizarDescricaoProdutos in 'unLocalizarDescricaoProdutos.pas' {frmLocalizarDescricaoProdutos},
  unRelatorio in 'unRelatorio.pas' {frmRelatorio},
  unRelatorioPedido in 'unRelatorioPedido.pas' {frmRelatorioPedido},
  unLocalizarPedido in 'unLocalizarPedido.pas' {frmLocalizarPedido},
  unPagamentoPedido in 'unPagamentoPedido.pas' {frmPagamentoPedido},
  unCadDescricaoProdutos2 in 'unCadDescricaoProdutos2.pas' {frmCadDescricaoProdutos2},
  unSobre in 'unSobre.pas' {frmSobre},
  unVisualizarParcelas in 'unVisualizarParcelas.pas' {frmVisualizarParcelas};

(*  unCadastroBasico in 'unCadastroBasico.pas' {frmCadastroBasico},
  unPesquisandoRegistro in 'unPesquisandoRegistro.pas' {frmPesquisandoRegistro},
  unCadDescricaoProdutos in 'unCadDescricaoProdutos.pas' {frmCadDescricaoProdutos},
  unObjDescricaoProdutos in 'unObjDescricaoProdutos.pas',
  unPesquisandoDescricaoProdutos in 'unPesquisandoDescricaoProdutos.pas' {frmPesquisandoRegistroDescricaoProdutos};
*)
{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  //Application.CreateForm(TfrmVisualizarParcelas, frmVisualizarParcelas);
  //Application.CreateForm(TfrmCadastroBasico, frmCadastroBasico);
  //Application.CreateForm(TfrmPesquisandoRegistro, frmPesquisandoRegistro);
  Application.Run;
end.
