unit unDataBD;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, Forms, Dialogs,
  Graphics, DBCtrls, DB, stdctrls,
  Messages;

  type
    TplsDBDateTimePicker = class(TDateTimePicker)
    private
      //campo BD
      fDataLink: TFieldDataLink;
      //data source
      function getDataSource: TDataSource;
      procedure setDataSource(const value: TDataSource);
      //data field
      function getDataField: string;
      procedure setDataField(const value: string);

      procedure alteraValorCampo(Sender: TObject);
      procedure atualizaData(Sender: TObject);
    public
      constructor Create(AOwner: TComponent); override;
      destructor Destroy; override;
      procedure Change; override;      
    published
      property dataSource: TDataSource read getDataSource write setDataSource;
      property dataField: string read getDataField write setDataField;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('PULSE', [TplsDBDateTimePicker]);
end;         

{* TplsDBDateTimePicker *}

constructor TplsDBDateTimePicker.Create(AOwner: TComponent);
begin
  inherited;

  fDataLink := TFieldDataLink.Create;
  fDataLink.OnDataChange := alteraValorCampo;
  fDataLink.OnUpdateData := atualizaData;
end;

destructor TplsDBDateTimePicker.Destroy;
begin
  fDataLink.Free;

  inherited;
end;

(* get's e set's *)

function TplsDBDateTimePicker.getDataSource: TDataSource;
begin
  Result := fDataLink.dataSource;
end;

procedure TplsDBDateTimePicker.setDataSource(const value: TDataSource);
begin
  fDataLink.dataSource := value;
end;

function TplsDBDateTimePicker.getDataField: string;
begin
  Result := fDataLink.FieldName;
end;

procedure TplsDBDateTimePicker.setDataField(const value: string);
begin
  fDataLink.FieldName := value;
end;

(* funcoes *)

procedure TplsDBDateTimePicker.alteraValorCampo(Sender: TObject);
begin
  Date := fDataLink.Field.AsDateTime;
end;

procedure TplsDBDateTimePicker.atualizaData(Sender: TObject);
begin
  fDataLink.Field.AsDateTime := fDataLink.Field.AsDateTime;
end;

procedure TplsDBDateTimePicker.Change;
begin
  fDataLink.Modified;
  inherited Change;
  try
    fDataLink.Edit;
    fDataLink.UpdateRecord;
  except
  end;
end;


end.
