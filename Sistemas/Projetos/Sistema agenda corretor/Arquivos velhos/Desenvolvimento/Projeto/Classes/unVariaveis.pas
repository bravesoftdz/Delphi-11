unit unVariaveis;

interface

  type
    TTipoPessoa = (pessoaFisica,pessoaJuridica);
    TTiposPessoas = set of TTipoPessoa;

    TTipoAgenciamento = (normal,standBy);
    TTiposAgenciamentos = set of TTipoAgenciamento;

    TCondicaoPagamento = (vista,aceitaFinanciamento);
    TCondicoesPagamento = set of TCondicaoPagamento;

    TConjuntoTeclas = (todas,alfanumericas,numeros);
    TConjuntosTeclas = set of TConjuntoTeclas;

    TFinalidadeImovel = (morar,investir);
    TFinalidadesImovel = set of TFinalidadeImovel;

    //im�vel desej�vel
    TSituacaoImovel = (planta,prontoMorar,deTerceiros);
    TSituacoesImovel = set of TSituacaoImovel;

    //venda
    TTipoVenda = (meu_agenciamento,pauta);
    TTiposVendas = set of TTipoVenda;

    TTipoImovelDe = (meu,colegas,construtora,terceiros);
    TTiposImoveisDe = set of TTipoImovelDe;

    TTipoSimNao = (sim,nao);
    TTiposSimNao = set of TTipoSimNao;

implementation

end.
