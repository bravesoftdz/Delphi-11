unit unMurro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmMurro = class(TForm)
    Label1: TLabel;
    edCodigo: TEdit;
    btBtnEntrar: TBitBtn;
    procedure btBtnEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMurro: TfrmMurro;

implementation

uses unLoko;

{$R *.dfm}

procedure TfrmMurro.btBtnEntrarClick(Sender: TObject);
begin
  if(edCodigo.Text='16181814')then
    begin
    Application.CreateForm(TfrmIeIe, frmIeIe);
    frmIeIe.ShowModal;
    frmIeIe.Free;
    end
  else if (edCodigo.Text='programa')then
    ShowMessage('MENA = MARIDO'+#13+'          em'+#13+'TUPI GUARANI');
  Self.Close;
end;

end.