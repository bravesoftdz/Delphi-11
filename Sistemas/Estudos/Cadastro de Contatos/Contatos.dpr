program Contatos;

uses
  Forms,
  unPrincipal in 'unPrincipal.pas' {Form1},
  unContato in 'unContato.pas' {Form2};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
