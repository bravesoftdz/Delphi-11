unit uRecebeMsgWin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  unPrincipal;

type
  TfrmRecebeMensagem = class(TForm)
  protected
    //estes m�todos atuar�o na
    //manipula��o das mensagens passadas
    //pelo frmPrincipal (fEnviaMsgWin), executando o
    //c�digo respectivo a cada a��o.
    procedure inserir(var message: TMessage); message CM_Inserir;
    procedure excluir(var message: TMessage); message CM_Excluir;
    procedure gravar(var message: TMessage); message CM_Gravar;
    procedure editar(var message: TMessage); message CM_Editar;            
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecebeMensagem: TfrmRecebeMensagem;

implementation

{$R *.DFM}

{ TfrmRecebeMensagem }

procedure TfrmRecebeMensagem.editar(var message: TMessage);
begin
  ShowMessage('Editando registro');
end;

procedure TfrmRecebeMensagem.excluir(var message: TMessage);
begin
  ShowMessage('Registro exclu�do');
end;

procedure TfrmRecebeMensagem.gravar(var message: TMessage);
begin
  ShowMessage('Registro gravado');
end;

procedure TfrmRecebeMensagem.inserir(var message: TMessage);
begin
  ShowMessage('Registro inserido');
end;

end.
