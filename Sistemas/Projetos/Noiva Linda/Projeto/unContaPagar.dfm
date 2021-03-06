object frmContaPagar: TfrmContaPagar
  Left = 325
  Top = 55
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'NOIVA LINDA --> Contas '#224' Pagar'
  ClientHeight = 622
  ClientWidth = 813
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grpBxPesquisar: TGroupBox
    Left = 0
    Top = 0
    Width = 813
    Height = 57
    Align = alTop
    Caption = 'Pesquisar'
    TabOrder = 0
    object Label10: TLabel
      Left = 10
      Top = 27
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
    end
    object edFornecedor: TEdit
      Left = 88
      Top = 21
      Width = 250
      Height = 21
      Hint = 'Fornecedor para Pesquisar por Contas '#224' Pagar'
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 0
    end
    object btBtnSelecionarFornecedor: TBitBtn
      Left = 340
      Top = 19
      Width = 25
      Height = 25
      Hint = 'Selecionar Fornecedor da Conta '#224' Pagar'
      Caption = '...'
      TabOrder = 1
      OnClick = btBtnSelecionarFornecedorClick
    end
    object btBtnPesquisar: TBitBtn
      Left = 376
      Top = 8
      Width = 75
      Height = 40
      Hint = 'Pesquisar por Conta '#224' Pagar'
      Caption = 'Pesquisar'
      TabOrder = 2
      OnClick = btBtnPesquisarClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000894CE005AC6EF004ABDE70039B5E70029ADE70029ADE7000894
        CE000894CE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000894CE006BD6F70073CEEF004AADCE0042B5E70029ADE70021ADE70021A5
        DE0029ADE700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000894CE008CDEF7006B7373008C6B6B006B52520039B5DE0031B5E70029AD
        E70029ADE700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000894CE008CD6E7006B5A5A007B6B63008C6B6B003994AD0039BDEF0031B5
        E70031B5E700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000894CE00A5EFFF00BDE7EF00BDADAD00BDB5B5005A524A004ABDDE0042C6
        EF0039BDEF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000894CE00A5EFFF00C6EFFF007B6B6B00DED6D6006B5A52004AA5BD004ACE
        F70042C6EF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000894CE00A5EFFF00CEF7FF00B5DEEF0073848400E7E7DE0073635A006B73
        6B0052D6F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000894CE00A5EFFF00CEF7FF00C6EFFF00A5D6E700D6C6C600CEC6C600C6AD
        AD00634A4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000894CE00A5EFFF00CEF7FF00C6EFFF00ADEFFF005A949C00948C84008C7B
        7B009C8C8400AD9C9400A58C8C00B5A59C00735A5200FF00FF00FF00FF00FF00
        FF000894CE00A5EFFF00CEF7FF00C6EFFF00ADEFFF0063CEE7005A848400EFE7
        E700736B5A00EFDEDE00DECECE00EFE7E7009C8C8400FF00FF00FF00FF00FF00
        FF000894CE00A5EFFF00CEF7FF00C6EFFF00B5EFFF006BE7FF0063BDD600DECE
        CE00E7DEDE00E7DEDE00E7DEDE00EFE7E700F7F7F7005A423900FF00FF00FF00
        FF000894CE00ADEFFF00D6F7FF00C6F7FF00B5EFFF006BD6EF00526B6300F7EF
        F700EFE7E700EFE7E700F7EFEF00E7E7E700E7E7E70031211000FF00FF00FF00
        FF000894CE0039ADDE005ABDE7007BD6EF007BD6F70063CEEF006394A500F7F7
        F700F7F7F700E7E7DE00CEC6C60039291800DED6D600FF00FF00FF00FF00FF00
        FF000894CE00C6F7FF00C6F7FF00A5EFFF0094EFFF007BEFFF0073EFFF00BDB5
        AD00F7F7F700C6BDBD005239310073635A00E7DEDE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00088CCE001094CE001094CE001094CE001094CE00FF00
        FF00524239005A4A4200948C7B007B7363005A4A3900FF00FF00}
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 603
    Width = 813
    Height = 19
    Panels = <
      item
        Width = 600
      end
      item
        Width = 50
      end>
  end
  object grpBxContasPagar: TGroupBox
    Left = 0
    Top = 57
    Width = 813
    Height = 201
    Align = alTop
    Caption = 'Contas '#224' Pagar'
    TabOrder = 2
    object dbGrdContasPagar: TDBGrid
      Left = 2
      Top = 15
      Width = 809
      Height = 184
      Hint = 'Contas '#224' Pagar'
      Align = alClient
      DataSource = dsContasPagar
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = dbGrdContasPagarCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'digo'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Title.Caption = 'Tipo'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZAO_SOCIAL'
          Title.Caption = 'Fornecedor'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBSERVACOES'
          Title.Caption = 'Observa'#231#245'es'
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Title.Caption = 'Valor Total'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_PAGO'
          Title.Caption = 'Valor Pago'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTO'
          Title.Caption = 'Vencimento'
          Visible = True
        end>
    end
  end
  object grpBxItensCompra: TGroupBox
    Left = 0
    Top = 258
    Width = 813
    Height = 125
    Align = alTop
    Caption = 'Itens da Compra'
    TabOrder = 3
    object dbGrdItensCompra: TDBGrid
      Left = 2
      Top = 15
      Width = 809
      Height = 108
      Hint = 'Itens da Conta '#224' Pagar'
      Align = alClient
      Color = clSilver
      DataSource = dsItensCompra
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Produto'
          Width = 350
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARCA'
          Title.Caption = 'Marca'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Title.Caption = 'Valor Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TAMANHO'
          Title.Caption = 'Tamanho'
          Width = 80
          Visible = True
        end>
    end
  end
  object pnlDivisao: TPanel
    Left = 0
    Top = 383
    Width = 813
    Height = 220
    Align = alClient
    BevelOuter = bvNone
    Color = clMoneyGreen
    TabOrder = 4
    object Label1: TLabel
      Left = 10
      Top = 40
      Width = 104
      Height = 13
      Caption = 'TIPO DA CONTA:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 10
      Top = 70
      Width = 88
      Height = 13
      Caption = 'FORNECEDOR:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 10
      Top = 100
      Width = 95
      Height = 13
      Caption = 'OBSERVA'#199#213'ES:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 10
      Top = 130
      Width = 122
      Height = 13
      Caption = 'VALOR TOTAL (R$):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 240
      Top = 130
      Width = 116
      Height = 13
      Caption = 'VALOR PAGO (R$):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTipoConta: TLabel
      Left = 136
      Top = 40
      Width = 81
      Height = 13
      Caption = 'lblTipoConta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblFornecedor: TLabel
      Left = 136
      Top = 70
      Width = 321
      Height = 13
      AutoSize = False
      Caption = 'lblFornecedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblObservacoes: TLabel
      Left = 136
      Top = 100
      Width = 313
      Height = 13
      AutoSize = False
      Caption = 'lblObservacoes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblValorTotal: TLabel
      Left = 136
      Top = 130
      Width = 83
      Height = 13
      Caption = 'lblValorTotal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblValorPago: TLabel
      Left = 365
      Top = 130
      Width = 82
      Height = 13
      Caption = 'lblValorPago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 34
      Top = 10
      Width = 167
      Height = 20
      Caption = 'DADOS DA CONTA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
    end
    object bvlDivisao: TBevel
      Left = 10
      Top = 145
      Width = 439
      Height = 10
      Shape = bsBottomLine
    end
    object Label4: TLabel
      Left = 10
      Top = 180
      Width = 127
      Height = 18
      Caption = 'VALOR PAGAR (R$):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 600
      Top = 10
      Width = 108
      Height = 20
      Caption = 'HIST'#211'RICO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 240
      Top = 40
      Width = 87
      Height = 13
      Caption = 'VENCIMENTO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblVencimento: TLabel
      Left = 335
      Top = 40
      Width = 92
      Height = 13
      Caption = 'lblVencimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edPagar: TEdit
      Left = 144
      Top = 174
      Width = 89
      Height = 26
      Hint = 'Valor Pago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'edPagar'
      OnEnter = edPagarEnter
      OnExit = edPagarExit
      OnKeyPress = edPagarKeyPress
    end
    object btBtnPagar: TBitBtn
      Left = 243
      Top = 172
      Width = 114
      Height = 29
      Hint = 'Realizar Pagamento'
      Caption = 'PAGAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btBtnPagarClick
      Glyph.Data = {
        FE040000424DFE040000000000003604000028000000120000000A0000000100
        080000000000C8000000C30E0000C30E00000001000000000000000000007B00
        0000BD000000FF0000007B7B000000FF0000FFFF000000315A0008427300084A
        730000007B007B007B00084A7B0008527B0021527B00007B7B007B7B7B00004A
        840008528400105284002963840008528C00085A8C00185A8C0018638C002963
        8C0008529400185A9400296B9400316B94002973940031739400085A9C001863
        9C0018739C0029739C0031739C0031849C00005AA5002173A5003973A500297B
        A500186BAD00106BB500317BB5002984B5004A8CB500086BBD000073BD001073
        BD001873BD00217BBD004284BD00318CBD004A8CBD005294BD005A9CBD00BDBD
        BD001073C600007BC600217BC600428CC6004A8CC6005A9CC6000084CE000884
        CE00398CCE005A9CCE00639CCE001884D6002184D600088CD600108CD6004294
        D600399CD6004A9CD600529CD6005A9CD6005AA5D60063ADD6001884DE002184
        DE00188CDE001094DE001894DE003194DE00299CDE004AA5DE005AA5DE004AB5
        DE00189CE700219CE700429CE7005AA5E7005AADE70063ADE7006BB5E70021A5
        EF0029A5EF0031A5EF0063B5EF006BBDEF0029ADF70031ADF7006BBDF7000000
        FF00FF00FF0031B5FF0039B5FF0042B5FF0039BDFF0042BDFF0042C6FF004AC6
        FF006BC6FF004ACEFF0052CEFF0052D6FF005ADEFF0063E7FF0000FFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00393900000039
        3939393939393939393939390000393900780000003900000000003939393939
        0000393900000006000078797879780039393939000039390000000600787978
        7900000039393939000039390000000600797879787978790039393900003939
        0000000600787978790000000000003900003939000000060079787978797879
        7879780000003939000000060078790000000000000000390000393900000000
        0000787978003939393939390000393939393939393900000039393939393939
        0000}
    end
    object lstBxHistorico: TListBox
      Left = 600
      Top = 32
      Width = 212
      Height = 156
      BorderStyle = bsNone
      Color = clMoneyGreen
      ItemHeight = 13
      TabOrder = 2
    end
  end
  object ApplicationEvents: TApplicationEvents
    OnHint = ApplicationEventsHint
    Left = 8
    Top = 164
  end
  object qryContasPagar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT c.*, f.razao_social'
      'FROM conta_pagar c, fornecedor f'
      'WHERE c.pago=0'
      'AND c.cod_fornecedor=f.codigo'
      'ORDER BY c.vencimento    ')
    SQLConnection = DM.SQLConnection
    Left = 11
    Top = 128
    object qryContasPagarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryContasPagarCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
    end
    object qryContasPagarCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object qryContasPagarVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryContasPagarVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object qryContasPagarPAGO: TIntegerField
      FieldName = 'PAGO'
    end
    object qryContasPagarOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 300
    end
    object qryContasPagarTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object qryContasPagarVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qryContasPagarRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 100
    end
  end
  object dspContasPagar: TDataSetProvider
    DataSet = qryContasPagar
    Left = 39
    Top = 128
  end
  object cdsContasPagar: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContasPagar'
    Left = 67
    Top = 128
    object cdsContasPagarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsContasPagarCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
    end
    object cdsContasPagarCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object cdsContasPagarVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsContasPagarVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsContasPagarPAGO: TIntegerField
      FieldName = 'PAGO'
    end
    object cdsContasPagarOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 300
    end
    object cdsContasPagarTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object cdsContasPagarVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cdsContasPagarRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 100
    end
  end
  object dsContasPagar: TDataSource
    DataSet = cdsContasPagar
    Left = 95
    Top = 128
  end
  object qryItensCompra: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT i.*,p.nome,p.marca,p.tamanho'
      'FROM item_compra i,produto p'
      'WHERE i.cod_compra=3'
      'AND i.cod_produto=p.codigo')
    SQLConnection = DM.SQLConnection
    Left = 8
    Top = 329
    object qryItensCompraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryItensCompraCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
    end
    object qryItensCompraCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object qryItensCompraVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryItensCompraNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qryItensCompraMARCA: TStringField
      FieldName = 'MARCA'
      Size = 50
    end
    object qryItensCompraTAMANHO: TIntegerField
      FieldName = 'TAMANHO'
    end
  end
  object dspItensCompra: TDataSetProvider
    DataSet = qryItensCompra
    Left = 36
    Top = 329
  end
  object cdsItensCompra: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItensCompra'
    Left = 64
    Top = 329
    object cdsItensCompraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsItensCompraCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
    end
    object cdsItensCompraCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object cdsItensCompraVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsItensCompraNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsItensCompraMARCA: TStringField
      FieldName = 'MARCA'
      Size = 50
    end
    object cdsItensCompraTAMANHO: TIntegerField
      FieldName = 'TAMANHO'
    end
  end
  object dsItensCompra: TDataSource
    DataSet = cdsItensCompra
    Left = 92
    Top = 329
  end
  object PopupMenu: TPopupMenu
    Left = 40
    Top = 165
    object MostrarTodasasContasPagar: TMenuItem
      Caption = 'Mostrar Todas as Contas '#224' Pagar'
      Hint = 'Mostra Todas as Contas '#224' Pagar'
      OnClick = MostrarTodasasContasPagarClick
    end
  end
end
