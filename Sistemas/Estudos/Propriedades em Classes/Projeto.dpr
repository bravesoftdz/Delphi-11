program Projeto;

uses
  Forms,
  unCliente in 'unCliente.pas' {frmCliente},
  unPrincipal in 'unPrincipal.pas' {frmPrincipal};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCliente, frmCliente);
  Application.Run;
end.
