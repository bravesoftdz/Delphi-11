inherited frmRelatorioPedido: TfrmRelatorioPedido
  Left = 511
  Top = 180
  Caption = 'Relat'#243'rio de Pedido'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited rlRelatorio: TRLReport
    Left = 168
    Top = 32
    DataSource = dsItensPedido
    inherited bndCabecalho: TRLBand
      inherited RLLabel1: TRLLabel
        Left = 34
      end
      inherited RLImage1: TRLImage
        Top = 68
      end
      inherited RLLabel9: TRLLabel
        Left = 13
        Top = 9
        Width = 22
      end
      inherited RLLabel10: TRLLabel
        Left = 126
        Width = 19
      end
      inherited RLDraw1: TRLDraw
        Left = 34
      end
      inherited RLDraw2: TRLDraw
        Left = 34
      end
      inherited RLDraw3: TRLDraw
        Width = 534
      end
      object RLPanel1: TRLPanel
        Left = 552
        Top = 0
        Width = 166
        Height = 121
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Transparent = False
        object RLLabel25: TRLLabel
          Left = 32
          Top = 8
          Width = 113
          Height = 32
          Caption = 'PEDIDO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel27: TRLLabel
          Left = 8
          Top = 48
          Width = 27
          Height = 18
          Caption = 'N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object lblNumeroPedido: TRLLabel
          Left = 56
          Top = 48
          Width = 135
          Height = 18
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object RLLabel31: TRLLabel
          Left = 8
          Top = 88
          Width = 44
          Height = 18
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object lblDataPedido: TRLLabel
          Left = 56
          Top = 88
          Width = 109
          Height = 18
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 329
      Width = 718
      Height = 41
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel2: TRLLabel
        Left = 8
        Top = 17
        Width = 44
        Height = 19
        Caption = 'Qtde.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 72
        Top = 17
        Width = 44
        Height = 19
        Caption = 'Unid.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 224
        Top = 17
        Width = 189
        Height = 19
        Caption = 'Descri'#231#227'o dos Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 589
        Top = 2
        Width = 74
        Height = 19
        Caption = 'Pre'#231'o R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 560
        Top = 22
        Width = 64
        Height = 19
        Caption = 'Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 653
        Top = 22
        Width = 42
        Height = 19
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 370
      Width = 718
      Height = 34
      object RLDBText1: TRLDBText
        Left = 8
        Top = 10
        Width = 61
        Height = 17
        AutoSize = False
        DataField = 'QUANTIDADE'
        DataSource = dsItensPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 72
        Top = 10
        Width = 68
        Height = 17
        AutoSize = False
        DataField = 'UNIDADE'
        DataSource = dsItensPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 144
        Top = 10
        Width = 409
        Height = 17
        AutoSize = False
        DataField = 'DESCRICAO'
        DataSource = dsItensPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 560
        Top = 10
        Width = 80
        Height = 17
        AutoSize = False
        DataField = 'VALOR_UNITARIO'
        DataSource = dsItensPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 645
        Top = 10
        Width = 108
        Height = 17
        AutoSize = False
        DataField = 'VALOR_TOTAL'
        DataSource = dsItensPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 190
      Width = 718
      Height = 139
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel18: TRLLabel
        Left = 13
        Top = 20
        Width = 48
        Height = 16
        Caption = 'Cliente:'
      end
      object lblNomeCliente: TRLLabel
        Left = 72
        Top = 20
        Width = 640
        Height = 16
        AutoSize = False
      end
      object lblTelefoneCliente: TRLLabel
        Left = 72
        Top = 40
        Width = 640
        Height = 16
        AutoSize = False
      end
      object RLLabel19: TRLLabel
        Left = 13
        Top = 40
        Width = 56
        Height = 16
        Caption = 'Telefone:'
      end
      object RLLabel21: TRLLabel
        Left = 13
        Top = 60
        Width = 48
        Height = 16
        Caption = 'Cidade:'
      end
      object lblCidadeCliente: TRLLabel
        Left = 72
        Top = 60
        Width = 537
        Height = 16
        AutoSize = False
      end
      object RLLabel24: TRLLabel
        Left = 13
        Top = 80
        Width = 42
        Height = 16
        Caption = 'Bairro:'
      end
      object lblBairroCliente: TRLLabel
        Left = 72
        Top = 80
        Width = 640
        Height = 16
        AutoSize = False
      end
      object RLLabel23: TRLLabel
        Left = 13
        Top = 100
        Width = 31
        Height = 16
        Caption = 'Rua:'
      end
      object lblRuaCliente: TRLLabel
        Left = 72
        Top = 100
        Width = 353
        Height = 16
        AutoSize = False
      end
      object RLLabel28: TRLLabel
        Left = 13
        Top = 120
        Width = 88
        Height = 16
        Caption = 'Complemento:'
      end
      object mmComplementoCliente: TRLMemo
        Left = 112
        Top = 120
        Width = 601
        Height = 16
        AutoSize = False
      end
      object lblCEPCliente: TRLLabel
        Left = 608
        Top = 100
        Width = 105
        Height = 16
        AutoSize = False
      end
      object RLLabel29: TRLLabel
        Left = 575
        Top = 100
        Width = 35
        Height = 16
        Caption = 'CEP:'
      end
      object lblNumeroCliente: TRLLabel
        Left = 464
        Top = 100
        Width = 102
        Height = 16
        AutoSize = False
      end
      object RLLabel26: TRLLabel
        Left = 432
        Top = 100
        Width = 22
        Height = 16
        Caption = 'N'#186':'
      end
      object lblEstadoCliente: TRLLabel
        Left = 648
        Top = 60
        Width = 66
        Height = 16
        AutoSize = False
      end
      object RLLabel22: TRLLabel
        Left = 616
        Top = 60
        Width = 25
        Height = 16
        Caption = 'UF:'
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 404
      Width = 718
      Height = 89
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object lblAssinaturaCliente: TRLLabel
        Left = 8
        Top = 64
        Width = 241
        Height = 18
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel30: TRLLabel
        Left = 550
        Top = 16
        Width = 73
        Height = 19
        Caption = 'Total R$:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblValorTotal: TRLLabel
        Left = 622
        Top = 16
        Width = 100
        Height = 19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel34: TRLLabel
        Left = 360
        Top = 64
        Width = 103
        Height = 18
        Caption = 'Ass. Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw4: TRLDraw
        Left = 5
        Top = 55
        Width = 244
        Height = 6
        DrawKind = dkLine
      end
      object RLDraw5: TRLDraw
        Left = 277
        Top = 55
        Width = 244
        Height = 6
        DrawKind = dkLine
      end
    end
  end
  object cdsItensPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItensPedido'
    Left = 32
    Top = 256
    object cdsItensPedidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsItensPedidoDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsItensPedidoCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
      Required = True
    end
    object cdsItensPedidoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Required = True
    end
    object cdsItensPedidoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 10
    end
    object cdsItensPedidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 1000
    end
    object cdsItensPedidoVALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
      Required = True
      currency = True
    end
    object cdsItensPedidoVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      Required = True
      currency = True
    end
    object cdsItensPedidoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 1000
    end
  end
  object dsItensPedido: TDataSource
    DataSet = cdsItensPedido
    Left = 64
    Top = 256
  end
  object dspItensPedido: TDataSetProvider
    DataSet = zQryItensPedido
    Left = 64
    Top = 216
  end
  object zQryItensPedido: TZQuery
    Connection = DM.ZConnection
    SQL.Strings = (
      'SELECT *'
      'FROM item_pedido'
      'WHERE 1=2')
    Params = <>
    Left = 32
    Top = 216
    object zQryItensPedidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object zQryItensPedidoDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object zQryItensPedidoCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
      Required = True
    end
    object zQryItensPedidoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Required = True
    end
    object zQryItensPedidoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 10
    end
    object zQryItensPedidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 1000
    end
    object zQryItensPedidoVALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
      Required = True
    end
    object zQryItensPedidoVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      Required = True
      currency = True
    end
    object zQryItensPedidoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 1000
    end
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido'
    Left = 32
    Top = 344
    object cdsPedidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPedidoDATA: TDateField
      FieldName = 'DATA'
      ReadOnly = True
    end
    object cdsPedidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 1000
    end
    object cdsPedidoVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      Required = True
    end
    object cdsPedidoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsPedidoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ReadOnly = True
      Size = 28
    end
    object cdsPedidoESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsPedidoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object cdsPedidoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object cdsPedidoRUA: TStringField
      FieldName = 'RUA'
      Size = 100
    end
    object cdsPedidoNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsPedidoCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsPedidoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
  end
  object dsPedido: TDataSource
    DataSet = cdsPedido
    Left = 64
    Top = 344
  end
  object dspPedido: TDataSetProvider
    DataSet = zQryPedido
    Left = 64
    Top = 304
  end
  object zQryPedido: TZQuery
    Connection = DM.ZConnection
    SQL.Strings = (
      
        'SELECT p.codigo, CAST (p.data_cadastro AS DATE) AS data, p.descr' +
        'icao, p.valor_total,'
      
        '       c.nome,  c.telefone_1 || '#39'  '#39' || c.telefone_2 AS telefone' +
        ', '
      
        '       e.estado, e.cidade, e.bairro, e.rua, e.numero, e.cep, e.c' +
        'omplemento'
      'FROM pedido p'
      'JOIN cliente c ON p.cod_cliente = c.codigo'
      'JOIN endereco e ON p.cod_endereco_entrega = e.codigo'
      'WHERE 1=2')
    Params = <>
    Left = 32
    Top = 304
    object zQryPedidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object zQryPedidoDATA: TDateField
      FieldName = 'DATA'
      ReadOnly = True
    end
    object zQryPedidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 1000
    end
    object zQryPedidoVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      Required = True
    end
    object zQryPedidoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object zQryPedidoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ReadOnly = True
      Size = 28
    end
    object zQryPedidoESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object zQryPedidoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object zQryPedidoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object zQryPedidoRUA: TStringField
      FieldName = 'RUA'
      Size = 100
    end
    object zQryPedidoNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object zQryPedidoCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object zQryPedidoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
  end
  object RLPDFFilter: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 24
    Top = 128
  end
  object RLPreviewSetup: TRLPreviewSetup
    Left = 40
    Top = 168
  end
end