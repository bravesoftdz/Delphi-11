object DM: TDM
  OldCreateOrder = False
  Top = 158
  Height = 287
  Width = 1280
  object ZConnection: TZConnection
    Protocol = 'firebird-2.1'
    HostName = 'localhost'
    Database = 'E:\Delphi\Sistemas\Meus Sistemas\Aluminal\BD\BD.FDB'
    Connected = True
    Left = 88
    Top = 40
  end
  object zQryCliente: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'SELECT *'
      'FROM cliente'
      'WHERE 1=2')
    Params = <>
    Left = 224
    Top = 32
    object zQryClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object zQryClienteDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object zQryClienteNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object zQryClienteCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object zQryClienteIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
    end
    object zQryClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object zQryClienteDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
    end
    object zQryClientePROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 100
    end
    object zQryClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object zQryClienteTELEFONE_1: TStringField
      FieldName = 'TELEFONE_1'
      Size = 13
    end
    object zQryClienteTELEFONE_2: TStringField
      FieldName = 'TELEFONE_2'
      Size = 13
    end
    object zQryClienteESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object zQryClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object zQryClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object zQryClienteRUA: TStringField
      FieldName = 'RUA'
      Size = 100
    end
    object zQryClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object zQryClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object zQryClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
  end
  object zQryExiste: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 56
    Top = 136
  end
  object dspCliente: TDataSetProvider
    DataSet = zQryCliente
    Left = 224
    Top = 80
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 224
    Top = 128
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsClienteCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsClienteIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
    end
    object cdsClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsClienteDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
    end
    object cdsClientePROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 100
    end
    object cdsClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object cdsClienteTELEFONE_1: TStringField
      FieldName = 'TELEFONE_1'
      Size = 13
    end
    object cdsClienteTELEFONE_2: TStringField
      FieldName = 'TELEFONE_2'
      Size = 13
    end
    object cdsClienteESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object cdsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object cdsClienteRUA: TStringField
      FieldName = 'RUA'
      Size = 100
    end
    object cdsClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
  end
  object zQryPedido: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'SELECT *'
      'FROM pedido'
      'WHERE 1=2')
    Params = <>
    Left = 448
    Top = 40
    object zQryPedidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object zQryPedidoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Required = True
    end
    object zQryPedidoCOD_ENDERECO_ENTREGA: TIntegerField
      FieldName = 'COD_ENDERECO_ENTREGA'
      Required = True
    end
    object zQryPedidoDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object zQryPedidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 1000
    end
    object zQryPedidoVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      Required = True
    end
    object zQryPedidoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object zQryPedidoCONDICAO_PAGAMENTO: TIntegerField
      FieldName = 'CONDICAO_PAGAMENTO'
    end
  end
  object dspPedido: TDataSetProvider
    DataSet = zQryPedido
    Left = 448
    Top = 88
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido'
    Left = 448
    Top = 136
    object cdsPedidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPedidoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Required = True
    end
    object cdsPedidoCOD_ENDERECO_ENTREGA: TIntegerField
      FieldName = 'COD_ENDERECO_ENTREGA'
      Required = True
    end
    object cdsPedidoDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsPedidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 1000
    end
    object cdsPedidoVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      Required = True
    end
    object cdsPedidoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsPedidoCONDICAO_PAGAMENTO: TIntegerField
      FieldName = 'CONDICAO_PAGAMENTO'
    end
  end
  object zQryItemPedido: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'SELECT *'
      'FROM item_pedido'
      'WHERE 1=2')
    Params = <>
    Left = 552
    Top = 32
    object zQryItemPedidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object zQryItemPedidoCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
      Required = True
    end
    object zQryItemPedidoDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object zQryItemPedidoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Required = True
    end
    object zQryItemPedidoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 10
    end
    object zQryItemPedidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 1000
    end
    object zQryItemPedidoVALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
      Required = True
    end
    object zQryItemPedidoVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      Required = True
    end
    object zQryItemPedidoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 1000
    end
  end
  object dspItemPedido: TDataSetProvider
    DataSet = zQryItemPedido
    Left = 552
    Top = 80
  end
  object cdsItemPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItemPedido'
    Left = 552
    Top = 128
    object cdsItemPedidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsItemPedidoCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
      Required = True
    end
    object cdsItemPedidoDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsItemPedidoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Required = True
    end
    object cdsItemPedidoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 10
    end
    object cdsItemPedidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 1000
    end
    object cdsItemPedidoVALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
      Required = True
    end
    object cdsItemPedidoVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      Required = True
    end
    object cdsItemPedidoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 1000
    end
  end
  object zQryEndereco: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'SELECT *'
      'FROM endereco'
      'WHERE 1=2')
    Params = <>
    Left = 688
    Top = 40
    object zQryEnderecoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object zQryEnderecoDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object zQryEnderecoESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object zQryEnderecoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object zQryEnderecoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object zQryEnderecoRUA: TStringField
      FieldName = 'RUA'
      Size = 100
    end
    object zQryEnderecoNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object zQryEnderecoCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object zQryEnderecoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
  end
  object dspEndereco: TDataSetProvider
    DataSet = zQryEndereco
    Left = 688
    Top = 88
  end
  object cdsEndereco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEndereco'
    Left = 688
    Top = 136
    object cdsEnderecoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsEnderecoDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsEnderecoESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsEnderecoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object cdsEnderecoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object cdsEnderecoRUA: TStringField
      FieldName = 'RUA'
      Size = 100
    end
    object cdsEnderecoNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsEnderecoCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsEnderecoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
  end
  object zQryDescricaoProdutos: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'SELECT *'
      'FROM descricao_produtos'
      'WHERE 1=2')
    Params = <>
    Left = 816
    Top = 40
    object zQryDescricaoProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object zQryDescricaoProdutosDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object zQryDescricaoProdutosNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 1000
    end
  end
  object dspDescricaoProdutos: TDataSetProvider
    DataSet = zQryDescricaoProdutos
    Left = 816
    Top = 88
  end
  object cdsDescricaoProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDescricaoProdutos'
    Left = 816
    Top = 136
    object cdsDescricaoProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsDescricaoProdutosDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsDescricaoProdutosNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 1000
    end
  end
  object zQryCarregarPedido: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'SELECT p.*,'
      '       c.nome,'
      
        '       e.estado, e.cidade, e.bairro, e.rua, e.numero, e.cep, e.c' +
        'omplemento'
      'FROM pedido p'
      'JOIN cliente c ON p.cod_cliente = c.codigo'
      'JOIN endereco e ON p.cod_endereco_entrega = e.codigo'
      'WHERE 1=2')
    Params = <>
    Left = 936
    Top = 40
    object zQryCarregarPedidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object zQryCarregarPedidoDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object zQryCarregarPedidoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Required = True
    end
    object zQryCarregarPedidoCOD_ENDERECO_ENTREGA: TIntegerField
      FieldName = 'COD_ENDERECO_ENTREGA'
      Required = True
    end
    object zQryCarregarPedidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 1000
    end
    object zQryCarregarPedidoVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      Required = True
    end
    object zQryCarregarPedidoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object zQryCarregarPedidoESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object zQryCarregarPedidoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object zQryCarregarPedidoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object zQryCarregarPedidoRUA: TStringField
      FieldName = 'RUA'
      Size = 100
    end
    object zQryCarregarPedidoNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object zQryCarregarPedidoCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object zQryCarregarPedidoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object zQryCarregarPedidoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
  end
  object dspCarregarPedido: TDataSetProvider
    DataSet = zQryCarregarPedido
    Left = 936
    Top = 88
  end
  object cdsCarregarPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCarregarPedido'
    Left = 936
    Top = 136
    object cdsCarregarPedidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCarregarPedidoDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsCarregarPedidoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Required = True
    end
    object cdsCarregarPedidoCOD_ENDERECO_ENTREGA: TIntegerField
      FieldName = 'COD_ENDERECO_ENTREGA'
      Required = True
    end
    object cdsCarregarPedidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 1000
    end
    object cdsCarregarPedidoVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      Required = True
    end
    object cdsCarregarPedidoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsCarregarPedidoESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsCarregarPedidoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object cdsCarregarPedidoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object cdsCarregarPedidoRUA: TStringField
      FieldName = 'RUA'
      Size = 100
    end
    object cdsCarregarPedidoNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsCarregarPedidoCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsCarregarPedidoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object cdsCarregarPedidoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
  end
  object zQryCarregarItemPedido: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      
        'SELECT i.quantidade, i.unidade, i.descricao, i.valor_unitario, i' +
        '.valor_total, i.complemento, i.unidade AS unidadeCombo'
      'FROM item_pedido i'
      'JOIN pedido p ON i.cod_pedido = p.codigo'
      'WHERE 1=2')
    Params = <>
    Left = 1040
    Top = 32
    object zQryCarregarItemPedidoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Required = True
    end
    object zQryCarregarItemPedidoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 10
    end
    object zQryCarregarItemPedidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 1000
    end
    object zQryCarregarItemPedidoVALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
      Required = True
    end
    object zQryCarregarItemPedidoVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      Required = True
    end
    object zQryCarregarItemPedidoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 1000
    end
    object zQryCarregarItemPedidoUNIDADECOMBO: TStringField
      FieldName = 'UNIDADECOMBO'
      Required = True
      Size = 10
    end
  end
  object dspCarregarItemPedido: TDataSetProvider
    DataSet = zQryCarregarItemPedido
    Left = 1040
    Top = 80
  end
  object cdsCarregarItemPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCarregarItemPedido'
    Left = 1040
    Top = 128
    object cdsCarregarItemPedidoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Required = True
    end
    object cdsCarregarItemPedidoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 10
    end
    object cdsCarregarItemPedidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 1000
    end
    object cdsCarregarItemPedidoVALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
      Required = True
    end
    object cdsCarregarItemPedidoVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      Required = True
    end
    object cdsCarregarItemPedidoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 1000
    end
    object cdsCarregarItemPedidoUNIDADECOMBO: TStringField
      FieldName = 'UNIDADECOMBO'
      Required = True
      Size = 10
    end
  end
  object zQryPagamentoPedido: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'SELECT p.*'
      'FROM pagamento_pedido p'
      'WHERE 1=2')
    Params = <>
    Left = 1172
    Top = 32
    object zQryPagamentoPedidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object zQryPagamentoPedidoDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object zQryPagamentoPedidoCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
      Required = True
    end
    object zQryPagamentoPedidoVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      Required = True
    end
    object zQryPagamentoPedidoVALOR_PARCELA: TFloatField
      FieldName = 'VALOR_PARCELA'
      Required = True
    end
    object zQryPagamentoPedidoDATA_VCTO: TDateField
      FieldName = 'DATA_VCTO'
    end
    object zQryPagamentoPedidoDATA_PGTO: TDateField
      FieldName = 'DATA_PGTO'
    end
    object zQryPagamentoPedidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 500
    end
  end
  object dspPagamentoPedido: TDataSetProvider
    DataSet = zQryPagamentoPedido
    Left = 1176
    Top = 80
  end
  object cdsPagamentoPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPagamentoPedido'
    Left = 1176
    Top = 128
    object cdsPagamentoPedidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPagamentoPedidoDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsPagamentoPedidoCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
      Required = True
    end
    object cdsPagamentoPedidoVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      Required = True
    end
    object cdsPagamentoPedidoVALOR_PARCELA: TFloatField
      FieldName = 'VALOR_PARCELA'
      Required = True
    end
    object cdsPagamentoPedidoDATA_VCTO: TDateField
      FieldName = 'DATA_VCTO'
    end
    object cdsPagamentoPedidoDATA_PGTO: TDateField
      FieldName = 'DATA_PGTO'
    end
    object cdsPagamentoPedidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 500
    end
  end
  object zQryAux: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 120
    Top = 136
  end
end
