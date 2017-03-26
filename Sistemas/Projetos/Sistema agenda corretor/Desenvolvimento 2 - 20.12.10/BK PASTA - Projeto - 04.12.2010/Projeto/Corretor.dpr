program Corretor;

uses
  Forms,
  unPrincipal in 'unPrincipal.pas' {Form1},
  unCadastroBasico in 'Basicas\unCadastroBasico.pas' {frmCadastroBasico},
  unCadEstado in 'unCadEstado.pas' {frmCadEstado},
  unObjEstado in 'Objetos\unObjEstado.pas',
  unFuncoes in 'Classes\unFuncoes.pas',
  unDM in 'unDM.pas' {DM: TDataModule},
  unConstantes in 'Classes\unConstantes.pas',
  unObjCidade in 'Objetos\unObjCidade.pas',
  unCadCidade in 'unCadCidade.pas' {frmCadCidade},
  unSelecionaRegistro in 'Basicas\unSelecionaRegistro.pas' {frmSelecionaRegistro},
  unSelecionaRegistroEstado in 'unSelecionaRegistroEstado.pas' {frmSelecionaRegistroEstado},
  unPesquisandoRegistro in 'Basicas\unPesquisandoRegistro.pas' {frmPesquisandoRegistro},
  unPesquisandoCidade in 'unPesquisandoCidade.pas' {frmPesquisandoCidade},
  unLixo in 'unLixo.pas' {Form2},
  unCadBairro in 'unCadBairro.pas' {frmCadBairro},
  unObjBairro in 'Objetos\unObjBairro.pas',
  unPesquisandoBairro in 'unPesquisandoBairro.pas' {frmPesquisandoBairro},
  unSelecionaRegistroCidade in 'unSelecionaRegistroCidade.pas' {frmSelecionaRegistroCidade},
  unCadRua in 'unCadRua.pas' {frmCadRua},
  unObjRua in 'Objetos\unObjRua.pas',
  unPesquisandoRua in 'unPesquisandoRua.pas' {frmPesquisandoRua},
  unSelecionaRegistroBairro in 'unSelecionaRegistroBairro.pas' {frmSelecionaRegistroBairro},
  unObjConstrutora in 'Objetos\unObjConstrutora.pas',
  unCadConstrutora in 'unCadConstrutora.pas' {frmCadConstrutora},
  unPesquisandoConstrutora in 'unPesquisandoConstrutora.pas' {frmPesquisandoConstrutora},
  unCadProfissao in 'unCadProfissao.pas' {frmCadProfissao},
  unObjProfissao in 'Objetos\unObjProfissao.pas',
  unPesquisandoProfissao in 'unPesquisandoProfissao.pas' {frmPesquisandoProfissao},
  unCadCliente in 'unCadCliente.pas' {frmCadCliente},
  unObjCliente in 'Objetos\unObjCliente.pas',
  unPesquisandoCliente in 'unPesquisandoCliente.pas' {frmPesquisandoCliente},
  unSelecionaRegistroRua in 'unSelecionaRegistroRua.pas' {frmSelecionaRegistroRua},
  unSelecionaRegistroProfissao in 'unSelecionaRegistroProfissao.pas' {frmSelecionaRegistroProfissao},
  unCadTipoImovel in 'unCadTipoImovel.pas' {frmCadTipoImovel},
  unObjTipoImovel in 'Objetos\unObjTipoImovel.pas',
  unPesquisandoTipoImovel in 'unPesquisandoTipoImovel.pas' {frmPesquisandoTipoImovel},
  unCadPessoaFisica in 'unCadPessoaFisica.pas' {frmCadPessoaFisica},
  unObjPessoaFisica in 'Objetos\unObjPessoaFisica.pas',
  unPesquisandoPessoaFisica in 'unPesquisandoPessoaFisica.pas' {frmPesquisandoPessoaFisica},
  unCadAgenciamento in 'unCadAgenciamento.pas' {frmCadAgenciamento},
  unObjAgenciamento in 'Objetos\unObjAgenciamento.pas',
  unPesquisandoAgenciamento in 'unPesquisandoAgenciamento.pas' {frmPesquisandoAgenciamento},
  unObjImovel in 'Objetos\unObjImovel.pas',
  unCadImoveis in 'unCadImoveis.pas' {frmCadImoveis},
  unSelecionaRegistroTipoImovel in 'unSelecionaRegistroTipoImovel.pas' {frmSelecionaRegistroTipoImovel},
  unPesquisandoImovel in 'unPesquisandoImovel.pas' {frmPesquisandoImovel},
  unSistema in 'Classes\unSistema.pas',
  unCadAgenda in 'unCadAgenda.pas' {frmCadAgenda},
  unConsultaCompromissosAgenda in 'unConsultaCompromissosAgenda.pas' {frmConsultaCompromissosAgenda},
  unObjLog in 'Objetos\unObjLog.pas',
  unUsuario in 'Classes\unUsuario.pas',
  unLogin in 'unLogin.pas' {frmLogin},
  Unit3 in 'Unit3.pas' {Form3},
  unSelecionaRegistroImovel in 'unSelecionaRegistroImovel.pas' {frmSelecionaRegistroImovel},
  unVariaveis in 'Classes\unVariaveis.pas',
  unSelecionaRegistroPessoaFisica in 'unSelecionaRegistroPessoaFisica.pas' {frmSelecionaRegistroPessoaFisica},
  unSobre in 'unSobre.pas' {frmSobre},
  unCadMeioCaptacao in 'unCadMeioCaptacao.pas' {frmCadMeioCaptacao},
  unObjMeioCaptacao in 'Objetos\unObjMeioCaptacao.pas',
  unPesquisandoMeioCaptacao in 'unPesquisandoMeioCaptacao.pas' {frmPesquisandoMeioCaptacao},
  unAlterarLoginSistema in 'unAlterarLoginSistema.pas' {frmAlterarLoginSistema},
  unSelecionaRegistroMeioCaptacao in 'unSelecionaRegistroMeioCaptacao.pas' {frmSelecionaRegistroMeioCaptacao},
  unObjPessoaJuridica in 'Objetos\unObjPessoaJuridica.pas',
  unCadPessoaJuridica in 'unCadPessoaJuridica.pas' {frmCadPessoaJuridica},
  unPesquisandoPessoaJuridica in 'unPesquisandoPessoaJuridica.pas' {frmPesquisandoPessoaJuridica},
  unSelecionaRegistroPessoaJuridica in 'unSelecionaRegistroPessoaJuridica.pas' {frmSelecionaRegistroPessoaJuridica},
  unCadImovelInteresse in 'unCadImovelInteresse.pas' {frmCadImovelInteresse},
  unObjImovelInteresse in 'Objetos\unObjImovelInteresse.pas',
  unSelecionaRegistroCliente in 'unSelecionaRegistroCliente.pas' {frmSelecionaRegistroCliente},
  unObjVenda in 'Objetos\unObjVenda.pas',
  unCadVenda in 'unCadVenda.pas' {frmCadVenda},
  unSelecionaRegistroConstrutora in 'unSelecionaRegistroConstrutora.pas' {frmSelecionaRegistroConstrutora},
  unSelecionaRegistroAgenciamento in 'unSelecionaRegistroAgenciamento.pas' {frmSelecionaRegistroAgenciamento},
  unExibeDados in 'Basicas\unExibeDados.pas' {frmExibeDados},
  unExibeDadosAgenciamento in 'unExibeDadosAgenciamento.pas' {frmExibeDadosAgenciamento},
  unPesquisa in 'Basicas\unPesquisa.pas' {frmPesquisar},
  unPesquisarAgenciamentos in 'unPesquisarAgenciamentos.pas' {frmPesquisarAgenciamentos},
  unPesquisarImoveisInteresse in 'unPesquisarImoveisInteresse.pas' {frmPesquisarImoveisInteresse},
  unPesquisarVendas in 'unPesquisarVendas.pas' {frmPesquisarVendas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
