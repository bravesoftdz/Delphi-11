unit unTComponenteComposto;

interface

uses
  //editores de propriedades padr�es do Delphi
  {$IFDEF VER130} // se for Delphi5
    DsgnIntf, StdCtrls, ExtCtrls, Controls, Buttons, Classes
  {$ELSE}
    {$IFDEF VER140} // se for Delphi6
      DesignIntf, DesignEditors
      {$ELSE}
        {$IFDEF VER150} // se for Delphi7
          DesignIntf, DesignEditors
        {$ENDIF}
    {$ENDIF}
  {$ENDIF},

  Box, //TBox
  StdCtrls, //TLabel,TEdit,TButton
  ExtCtrls, //TRadioGroup
  Buttons, Controls, Classes, //TBitBtn
  //Windows, Messages, SysUtils,
  Graphics;//, Forms, Dialogs;

  type TComponenteComposto = class(TBox)
    pnlCamposPesquisa: TPanel;
    btnPesquisar: TSpeedButton;
    edValorPesquisa: TEdit;
    private
    rdGrpOpcoesPesquisa: TRadioGroup;
      bExibeOpcPesquisa: Boolean;
      //formatando groupBox
      sTituloRadioGroup: string;
      sItemsRadioGroup: TStringList;

      procedure setTituloRadioGroup(titulo: string);
      function getTituloRadioGroup(): string;

      procedure setItem(lista: TStringList);
      function getItem(): TStringList;

      procedure setR(r: TRadioGroup);
      function getR(): TRadioGroup;


      procedure setExibeOpcPesquisa(opc: Boolean);
      function getExibeOpcPesquisa(): boolean;
  public
    constructor Create(AOwner: Tcomponent);override;
    destructor Destroy; override;
  published
      //formatando groupBox
      property plsTituloRadioGroup: string read getTituloRadioGroup write setTituloRadioGroup;
      property plsItemsRadioGroup: TStringList read getItem write setItem;
      property plsRG: TRadioGroup read getR write setR;


      property exibeOpcoesPesquisa: Boolean read getExibeOpcPesquisa write setExibeOpcPesquisa default true;

  end;

procedure Register;

implementation

{$R *.DFM}

{ TComponenteComposto }

(* constructor *)
constructor TComponenteComposto.Create(AOwner: Tcomponent);
begin
  inherited;

  Self.bExibeOpcPesquisa := true;
  Self.sTituloRadioGroup := 'Pesquisar por ';
  Self.sItemsRadioGroup := TStringList.Create;
end;

(* destructor *)
destructor TComponenteComposto.Destroy;
begin
  inherited;
end;

procedure TComponenteComposto.setR(r: TRadioGroup);
begin
  Self.rdGrpOpcoesPesquisa.Assign(r);
end;

function TComponenteComposto.getR(): TRadioGroup;
begin
  Result := Self.rdGrpOpcoesPesquisa;
end;


//formatando groupBox
procedure TComponenteComposto.setTituloRadioGroup(titulo: string);
begin
  Self.sTituloRadioGroup := titulo;
  Self.rdGrpOpcoesPesquisa.Caption := Self.sTituloRadioGroup;
  Self.rdGrpOpcoesPesquisa.Items.Add(titulo);
  Self.rdGrpOpcoesPesquisa.Items.Delete(0);
end;

function TComponenteComposto.getTituloRadioGroup(): string;
begin
  Result := Self.sTituloRadioGroup;
end;

procedure TComponenteComposto.setItem(lista: TStringList);
var
  i: Integer;
begin
  sItemsRadioGroup.Clear;
  Self.rdGrpOpcoesPesquisa.Items.Clear;
  for i := 0 to lista.Count-1 do
  begin
    sItemsRadioGroup.Add(lista[i]);
    Self.rdGrpOpcoesPesquisa.Items.Add(lista[i]);
  end;
end;

function TComponenteComposto.getItem(): TStringList;
begin
  Result := sItemsRadioGroup;
end;




procedure TComponenteComposto.setExibeOpcPesquisa(opc: Boolean);
begin
  Self.bExibeOpcPesquisa := opc;
  if exibeOpcoesPesquisa then
    Self.rdGrpOpcoesPesquisa.Caption := 'true'
  else
    Self.rdGrpOpcoesPesquisa.Caption := 'false';

end;

function TComponenteComposto.getExibeOpcPesquisa(): boolean;
begin
  Result := Self.bExibeOpcPesquisa;
end;

procedure Register;
begin
  RegisterComponents('Componente_Composto', [TComponenteComposto]);
end;

end.
