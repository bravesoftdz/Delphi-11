unit unDefinicaoJogos;

interface

uses
  Controls; //TDate

  type TLotoFacil = record
    sorteio: Integer;
    data: TDate;
    numeros: array[1..15] of Integer;
    ganhadores: array[11..15] of Integer;
    premio: array[11..15] of double;
  end;

implementation

end.
 