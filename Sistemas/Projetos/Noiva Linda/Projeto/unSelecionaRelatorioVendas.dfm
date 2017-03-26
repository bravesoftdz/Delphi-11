object frmSelecionaRelatorioVendas: TfrmSelecionaRelatorioVendas
  Left = 551
  Top = 298
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'NOIVA LINDA --> Seleciona Relat'#243'rio Vendas'
  ClientHeight = 202
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlVenda: TPanel
    Left = 0
    Top = 0
    Width = 385
    Height = 183
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label3: TLabel
      Left = 10
      Top = 50
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label10: TLabel
      Left = 10
      Top = 80
      Width = 75
      Height = 13
      Caption = 'Data da Venda:'
    end
    object Label15: TLabel
      Left = 114
      Top = 80
      Width = 24
      Height = 13
      Caption = 'entre'
    end
    object Label18: TLabel
      Left = 114
      Top = 110
      Width = 24
      Height = 13
      Caption = 'entre'
    end
    object Label12: TLabel
      Left = 10
      Top = 110
      Width = 54
      Height = 13
      Caption = 'Valor Total:'
    end
    object Label14: TLabel
      Left = 261
      Top = 80
      Width = 6
      Height = 13
      Caption = 'e'
    end
    object Label13: TLabel
      Left = 261
      Top = 110
      Width = 6
      Height = 13
      Caption = 'e'
    end
    object Label11: TLabel
      Left = 10
      Top = 7
      Width = 61
      Height = 16
      Caption = 'Vendas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 10
      Top = 23
      Width = 73
      Height = 9
      Shape = bsBottomLine
    end
    object edCliente: TEdit
      Left = 114
      Top = 44
      Width = 217
      Height = 21
      Hint = 'Cliente da Venda'
      CharCase = ecUpperCase
      Enabled = False
      MaxLength = 80
      TabOrder = 2
      OnEnter = edClienteEnter
      OnExit = edClienteExit
    end
    object btBtnNova: TBitBtn
      Left = 146
      Top = 137
      Width = 108
      Height = 40
      Hint = 'Iniciar Nova Pesquisa'
      Caption = 'Nova'
      TabOrder = 8
      OnClick = btBtnNovaClick
    end
    object edValorTotalVenda1: TEdit
      Left = 158
      Top = 104
      Width = 76
      Height = 21
      Hint = 'Valor Total da Venda'
      TabOrder = 6
      OnEnter = edValorTotalVenda1Enter
      OnExit = edValorTotalVenda1Exit
      OnKeyPress = edValorTotalVenda1KeyPress
    end
    object mEdDataVenda1: TMaskEdit
      Left = 158
      Top = 74
      Width = 76
      Height = 21
      Hint = 'Data da Venda'
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 4
      Text = '  /  /    '
      OnEnter = mEdDataVenda1Enter
      OnExit = mEdDataVenda1Exit
    end
    object btBtnGerar: TBitBtn
      Left = 261
      Top = 137
      Width = 109
      Height = 40
      Hint = 'Gerar Relat'#243'rio'
      Caption = 'GERAR'
      Default = True
      TabOrder = 9
      OnClick = btBtnGerarClick
      Glyph.Data = {
        2E060000424D2E06000000000000360400002800000015000000150000000100
        080000000000F801000000000000000000000001000000000000FFFFFA009997
        9400E9E6B600FFFFFC00ECECEC00B2BAA100F9FAFF00D6DBCA00F8FCEC00F7F9
        F100FFFCFF00FFFEEC00E5E5E500C8C98900FBF7F200FFFEE900F7F7F700FEF6
        FF00C9C9C900F4F4EE00FBF9F500C6D1B100FCFFDD00ABA77F00BCC34F00DED9
        EE00B1B1B100D6D6D600E2E3DC00FAFEF900FCF8F300F9F6FE00F4F4F400FAFF
        ED00F2ECC700FFEBFF00A2A06700C6C6C600EAEAEA00FFFFF800F6F2EE00FEFF
        E200ADADAD00DCE6BA00DEDDDD00A9A9A900FCFDD400DBEDA500BBBC5800F2F2
        F200837C9C00FAFAC500E4DFEA00FDF7EA00B6D31E00FCFEFF00FEFAFA00FFF3
        FF00DADADA00F6F4FE00DFD5D200A1A0A000C3C85B00FEFFE400AAA4C100FFFC
        F70086985600B9B8B800A4A4A400FFFAFF00AFAEA900D9CC9800F5F5F500F4F3
        E500F9F9F200FAF1FE00B1B56B00F1FCFD00ADC9320067617900EFEEEE00BFBA
        B500F0F2EE00F9FFEA00B0AFAE00FAFFFE00F4F2F900BDBDBD00FFFFF600ACAB
        A500F9F8EE00F1F4FA00B5B4B200ECEAE9009D9D9C00FFFFEF00C1BEBC00FEFD
        F900FDFCF800E1DDDA00FDFFFA00FCFEF700FFFFF500C3C2C200C2CAAB00FAFE
        F000FFF2FA00B3BA4400E0E0E000A8A6A600D1D1D100E7E7E000ABAD6E00FFF7
        FF00FAFCF500FCFAF700A9B87D00F3F0F900FDFFF800F6FEFB00F9FBF900AFAB
        B200FAFFFC00FAFCFF00FBFDFD00FDFDFB00FFFFF200FEFDF600FEFBF600F5F8
        FE00F9F7FB00F4FEFE00FEFBFF00FCFBFD00FDFDF300F5F8F800FBF8F400FFFF
        FE00FCFCFC00FBFBFB00FAFAFA00F9F9F900F8F8F800FDFAF400FDFFFF00FFFC
        FC00FEFAF500FFFDFF00F0EAFF007A767100F5F7EB00BECD4300EFEAF300FCE6
        FB00B6BB7A00F8FFE600F7F9F700C4C4C400C3C3AA00FEFFFE00E6DAA000A9B1
        6100FEFEFD00413D38003F414F00DDE0C700C8C5C000C7C9C300C1C4C800BEE1
        4A0042434E004C496200EDF4E000949D800084849300CEDE7400DAF18700E9EC
        E900B2B93E00A9A94500B2AD5F00D7CABD00C6DB8B00A2C02900B3CB2400C5BC
        D500BEDE2900B9CA3500B9B6CB00BFB6D600F4F0EC00EFF2FF00786F8B00E6E3
        E900FCEBD700F7F4EF00F3F0FF00F4F6FE00ABAAAB009593A8009AA97200E8E8
        E700C7D84B00BEC07700D3DF5A00DDD9BE00FEEEF800FEFDF400F8F9FA00FEFF
        F500CFCDCB00F9FAFC00FBF9FA00F0FAFA00F4F7EE00B1BF8000FBFDE300EFFD
        CD00F8FBE500AEB1AB00FFFBE600F0F5F400C2D06500CEC97C00D1CA7500D6D3
        CE00E3E2E200FCF9FD00FFF9FD00B9B7B600FFFBFD00E0DA9F00FCF9FF00B7B6
        B70060646600F7FFDA00736E7500B9C3A400F2E2E000F1E2EC00BCBBBB00FFF8
        F400ECEBEB00F8FCFE00FEFEFB00C4C3C200A4A2A200E8E6EA00E6D8BB00C7C1
        BC00C8C0AF00C8C9AF00FFFEFF00FDFDFD00FEFEFE00FFFFFF00FFFFFF2E99FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFD247D2
        FFFFFFFFFFFFFF000000FFFFFFFFFFFF99D240014047190199FFFFFFFFFFFF00
        0000FFFFFF19470147BC2ED5FFFFFF402EFFFFFFFFFFFF00000099FFFFD219FF
        FF2E992EFF2EFFD2D2FF99FFFFFFFF000000FFFFFFD5FFD5FFFFFFFFFF01FFD2
        47FFFFFFFFFFFF000000FF2EFF2EFFFFFF2EFFFF19EAFF2E01FFFFFFFFFFFF00
        0000FFFFFFFFFFD5FF2EFFFFEAD5FFFF0519FFFFFFFFFF000000FFFFFF2E99FF
        FF2E99D232FF99FF40D2FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFC0FFD5FFFF
        2E40FFFFFFFFFF000000FFFFFFFFFFFFFFFF1901FFFFFFFF9901FFFFFFFFFF00
        0000FFFFFFFFFFFFFFFF95D5FFFFFFFFFF01FFFFFFFFFF000000FFFFFFFF99FF
        FF2EBDFFFF2EFFFFFF4719FFFFFFFF000000FFFFFFFFFFD5FFD5FFD5FFFFFFFF
        FF1947FFFFFFFF000000FFFFFFFFFFFFFFFFFF2EFFFFFF2EFF2E01FFFFFFFF00
        0000FFFFFFFFFFD5FFFFFFFF2ED2A001A1FF47D5FFFFFF000000FFFFFFFFFFFF
        FF2F47BBB3BBDECC192E99FFFFFFFF000000FFFFFFFFFFFFFFA1DE2FDE24A0FF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFEEB301FFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFF2EA12FFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FF2E99FFFF2EFFFFFFFFFFFFFFFF99000000}
    end
    object edValorTotalVenda2: TEdit
      Left = 294
      Top = 104
      Width = 76
      Height = 21
      Hint = 'Valor Total da Venda'
      TabOrder = 7
      OnEnter = edValorTotalVenda2Enter
      OnExit = edValorTotalVenda2Exit
      OnKeyPress = edValorTotalVenda2KeyPress
    end
    object mEdDataVenda2: TMaskEdit
      Left = 294
      Top = 74
      Width = 76
      Height = 21
      Hint = 'Data da Venda'
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 5
      Text = '  /  /    '
      OnEnter = mEdDataVenda2Enter
      OnExit = mEdDataVenda2Exit
    end
    object btBtnAbreCliente: TBitBtn
      Left = 331
      Top = 42
      Width = 39
      Height = 25
      Hint = 'Abre Cliente Para Sele'#231#227'o de Relat'#243'rio de Vendas'
      Caption = '...'
      TabOrder = 3
      OnClick = btBtnAbreClienteClick
    end
    object rdBtnVendaResumo: TRadioButton
      Left = 120
      Top = 12
      Width = 65
      Height = 17
      Hint = 'Exibe Relat'#243'rio de Vendas de Forma Resumida'
      Caption = 'Resumo'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rdBtnVendaDetalhado: TRadioButton
      Left = 192
      Top = 12
      Width = 81
      Height = 17
      Hint = 'Exibe Relat'#243'rio de Vendas de Forma Detalhado'
      Caption = 'Detalhado'
      TabOrder = 1
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 183
    Width = 385
    Height = 19
    Panels = <
      item
        Width = 280
      end
      item
        Width = 50
      end>
  end
  object ApplicationEvents: TApplicationEvents
    OnHint = ApplicationEventsHint
    Left = 4
    Top = 66
  end
  object qryVendaResumo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT v.codigo,v.data_venda,v.observacoes,v.valor_total,v.valor' +
        '_pago,'
      '       (v.valor_total-v.valor_pago) AS "Valor_Resta",c.nome'
      'FROM venda v, cliente c'
      'WHERE v.cod_cliente=c.codigo'
      'ORDER BY v.data_venda')
    SQLConnection = DM.SQLConnection
    Left = 43
    Top = 125
    object qryVendaResumoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryVendaResumoDATA_VENDA: TSQLTimeStampField
      FieldName = 'DATA_VENDA'
    end
    object qryVendaResumoOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 300
    end
    object qryVendaResumoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryVendaResumoVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object qryVendaResumoValor_Resta: TFMTBCDField
      FieldName = 'Valor_Resta'
      Precision = 15
      Size = 2
    end
    object qryVendaResumoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspVendaResumo: TDataSetProvider
    DataSet = qryVendaResumo
    Left = 71
    Top = 125
  end
  object cdsVendaResumo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendaResumo'
    Left = 100
    Top = 125
    object cdsVendaResumoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsVendaResumoDATA_VENDA: TSQLTimeStampField
      FieldName = 'DATA_VENDA'
    end
    object cdsVendaResumoOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 300
    end
    object cdsVendaResumoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsVendaResumoVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsVendaResumoValor_Resta: TFMTBCDField
      FieldName = 'Valor_Resta'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsVendaResumoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object RvProject: TRvProject
    Engine = RvSystem
    Left = 41
    Top = 66
  end
  object RvSystem: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 71
    Top = 66
  end
  object rvDtStConQryVendaResumo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsVendaResumo
    Left = 42
    Top = 94
  end
  object rvDtStConQryProdutosVen: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsProduto
    Left = 72
    Top = 94
  end
  object qryProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT i.codigo AS "cod_Item",i.cod_venda,i.valor_total,'
      
        '       p.codigo AS "cod_Produto",p.codigo2 AS "cod2_Produto",p.n' +
        'ome,p.descricao,p.marca,p.tamanho,'
      '       t.tipo'
      'FROM item_venda i, produto p, tipo_produto t'
      'WHERE p.codigo = i.cod_produto'
      'AND t.codigo = p.cod_tipo_produto')
    SQLConnection = DM.SQLConnection
    Left = 43
    Top = 154
    object qryProdutocod_Item: TIntegerField
      FieldName = 'cod_Item'
      Required = True
    end
    object qryProdutoCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object qryProdutoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryProdutocod_Produto: TIntegerField
      FieldName = 'cod_Produto'
      Required = True
    end
    object qryProdutocod2_Produto: TStringField
      FieldName = 'cod2_Produto'
      Size = 5
    end
    object qryProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qryProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 300
    end
    object qryProdutoMARCA: TStringField
      FieldName = 'MARCA'
      Size = 50
    end
    object qryProdutoTAMANHO: TIntegerField
      FieldName = 'TAMANHO'
    end
    object qryProdutoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = qryProduto
    Left = 71
    Top = 154
  end
  object cdsProduto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 100
    Top = 154
    object cdsProdutocod_Item: TIntegerField
      FieldName = 'cod_Item'
      Required = True
    end
    object cdsProdutoCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object cdsProdutoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsProdutocod_Produto: TIntegerField
      FieldName = 'cod_Produto'
      Required = True
    end
    object cdsProdutocod2_Produto: TStringField
      FieldName = 'cod2_Produto'
      Size = 5
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 300
    end
    object cdsProdutoMARCA: TStringField
      FieldName = 'MARCA'
      Size = 50
    end
    object cdsProdutoTAMANHO: TIntegerField
      FieldName = 'TAMANHO'
    end
    object cdsProdutoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
  end
end
