unit uMinhaClasse;

interface

uses
  System.SysUtils,REST.Json.Types;

type
  TMinhaClasse2 = class;

  TMinhaClasse = class
  private
    [JSONName('FsNome')]
    FsNome: string;
    [JSONName('FdData')]
    FdData: Double;
    [JSONName('FtHora')]
    FtHora: Double;

    [JSONName('FoMinhaClasse2')]
    FoMinhaClasse2: TMinhaClasse2;
  public
    constructor Create(const psNome: string; const pdData: Double; const ptHora: Double);
    destructor Destroy; override;

    property Nome: string read FsNome write FsNome;
    property Data: Double read FdData write FdData;
    property Hora: Double read FtHora write FtHora;
    property MinhaClasse2: TMinhaClasse2 read FoMinhaClasse2;
  end;

  TMinhaClasse2 = class
  private
    [JSONName('FsNome')]
    FsNome: string;
    [JSONName('FdData')]
    FdData: Double;
    [JSONName('FtHora')]
    FtHora: Double;
  public
    constructor Create(const psNome: string; const pdData: Double; const ptHora: Double);

    property Nome: string read FsNome write FsNome;
    property Data: Double read FdData write FdData;
    property Hora: Double read FtHora write FtHora;
  end;

implementation

{ TMinhaClasse }

constructor TMinhaClasse.Create(const psNome: string; const pdData: Double; const ptHora: Double);
begin
  FsNome := psNome;
  FdData := pdData;
  FtHora := ptHora;

  FoMinhaClasse2 := TMinhaClasse2.Create(psNome + ' - TMinhaClasse2', pdData, ptHora);
end;

destructor TMinhaClasse.Destroy;
begin
  FreeAndNil(FoMinhaClasse2);
  inherited;
end;

{ TMinhaClasse2 }

constructor TMinhaClasse2.Create(const psNome: string; const pdData, ptHora: Double);
begin
  FsNome := psNome;
  FdData := pdData;
  FtHora := ptHora;
end;

end.
