unit unPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TfrmPrincipal = class(TForm)
    lstBxMsgTodas: TListBox;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    lstBxMsgSelecao: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    totMsg: Integer;
  public
    ParentWProc : TWndMethod;
    procedure MyWProc(var msg : TMessage);
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses UMessageStr, unThread;

var
  List : TStringList;

{$R *.DFM}

{ TForm1 }

procedure TfrmPrincipal.MyWProc(var msg: TMessage);
var
  i : cardinal;
  ini: Integer;
  ultLst: Integer;
begin
  ParentWProc(msg);
  inc(totMsg);
  List.Add(MesToStr(msg.msg)+'       W = '+IntToHex(msg.wParam,8)+'       L = '+IntToHex(msg.lParam,8)+'       R = '+IntToHex(msg.Result,8));
  lstBxMsgTodas.Items.Add(IntToStr(totMsg) + ' - ' + List[totMsg-1]);

{
//  if (List.Count > 49) then List.Delete(0);
  i:=0;
  for i:=List.Count-1 downto 0 do
//  while (i <= List.Count-1) do
  Begin
    Canvas.TextOut(4,abs(Canvas.Font.Height)*i,List[i]+'                                           ');
//    inc(i);
  end;
}
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  ParentWProc:=WindowProc;
  WindowProc:=MyWProc;
  totMsg := 0;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
WindowProc:=ParentWProc;
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  THreadMov: ThreadMoveUltLista;
begin
  THreadMov := ThreadMoveUltLista.Create(true);
  THreadMov.FreeOnTerminate := true;
  THreadMov.Resume;
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
var
  ini,fim,i: Integer;
begin
  ini := StrToInt(Edit1.Text);
  fim := StrToInt(Edit2.Text);

  lstBxMsgSelecao.Clear;
  for i:=ini to fim do
  begin
  lstBxMsgSelecao.Items.Add(IntToStr(i) + ' - ' + List[i-1]);
  end;
end;

Initialization
  List:=TStringList.Create;
Finalization
  List.Destroy;

end.
