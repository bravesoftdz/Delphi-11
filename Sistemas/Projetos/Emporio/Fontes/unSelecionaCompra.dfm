object frmSelecionaCompra: TfrmSelecionaCompra
  Left = 518
  Top = 116
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'EMP'#211'RIO --> Selecionando Compra'
  ClientHeight = 391
  ClientWidth = 629
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object grpBxCompras: TGroupBox
    Left = 0
    Top = 81
    Width = 629
    Height = 249
    Align = alTop
    Caption = 'Compras'
    TabOrder = 0
    object DBGridCompras: TDBGrid
      Left = 2
      Top = 15
      Width = 625
      Height = 232
      Hint = 'Compras Cadastradas'
      Align = alClient
      DataSource = dsCompra
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGridComprasCellClick
      OnDblClick = btBtnSelecionarCompraClick
      OnExit = DBGridComprasExit
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORNECEDOR'
          Title.Caption = 'Fornecedor'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Caption = 'Data'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Caption = 'Quantidade'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_UNITARIO'
          Title.Caption = 'Valor Unit'#225'rio'
          Width = 80
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
        end>
    end
  end
  object grpBxPesquisa: TGroupBox
    Left = 0
    Top = 0
    Width = 629
    Height = 57
    Align = alTop
    Caption = 'Pesquisar'
    TabOrder = 1
    object rdBtnCodigo: TRadioButton
      Left = 8
      Top = 20
      Width = 57
      Height = 21
      Hint = 'Pesquisar por C'#243'digo da Compra'
      Caption = 'C'#243'digo'
      TabOrder = 0
      OnClick = rdBtnCodigoClick
    end
    object rdBtnNome: TRadioButton
      Left = 8
      Top = 37
      Width = 81
      Height = 17
      Hint = 'Pesquisar por Fornecedor da Compra'
      Caption = 'Fornecedor'
      TabOrder = 1
      OnClick = rdBtnNomeClick
    end
    object edPesquisa: TEdit
      Left = 96
      Top = 24
      Width = 461
      Height = 21
      Hint = 'Valor a ser Pesquisado'
      CharCase = ecUpperCase
      TabOrder = 2
      OnChange = edPesquisaChange
      OnKeyPress = edPesquisaKeyPress
    end
    object btBtnPesquisar: TBitBtn
      Left = 562
      Top = 17
      Width = 57
      Height = 33
      Hint = 'Pesquisar por Compra'
      BiDiMode = bdLeftToRight
      Caption = 'OK'
      Enabled = False
      ParentBiDiMode = False
      TabOrder = 3
      OnClick = btBtnPesquisarClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FF3F4E5A
        4D5C73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF778A953184D51169CC556782FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0E90C90E90C90E90C90E90C90E90C90E90C90E90C90E90C9FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF3BABFF2B92FF0E67C9536681FF00FFFF00FFFF
        00FFFF00FF0E90C90E90C959C1E955C0E948BAE73CB5E531B0E22AACE128ABE0
        2AADE10E90C90E90C9FF00FFFF00FFFF00FFFF00FFFF00FF3DA9FF2A92FF0F67
        C75E687FFF00FFFF00FF0E90C958CEF26DD1F072CCEF63C6EB51BFE941B7E633
        B2E32AADE126AAE024A7DE24A7DE2CADE20E90C9FF00FFFF00FFFF00FFFF00FF
        FF00FF3DA9FF2991FF0F64C05B6B84FF00FF0E90C966D8F67BD7F486D4F278CF
        F066C7EE52C0EA3FBAE732B4E52DAFE228ABE125A7DE29ACE10E90C9FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF3DA9FF238EFF25629D5B6B84257EA5899AA1
        ADA19DBAA7A3AAABB286B8D063C9EE4AC1EB39BAE934B5E62EB1E329ACE12CAF
        E20E90C9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3DA9FFB7A8C080
        6465BDA389F6F0C6FFFFCFFFFFCFFAF4CAD7BBA48B9CA957C9EF41C1ED3BBCEA
        35B7E730B2E530B2E50E90C9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF989EA3E2C29AFFF4B8FFFFCEFFFFCFFFFFD3FFFFDAFFFFFFE2D3D077
        9EAF4CC9F044C4EE3FBFEB38B8E936B8E70E90C9FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF698493D19494FCDC9DF6D79EFFFECBFFFFD0FFFFE0FFFF
        F3FFFFFFFFFFFAAA968A7F9EA74DCBF247C6EF41C1ED3EBDEA0E90C9FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFB8807EE7CA9FF4C586F2C78FFFFBC9
        FFFFD1FFFFE5FFFFFBFFFFF3FFFFE0D5CBABC5A79E56D1F650CEF349C9F045C4
        EE0E90C9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB8807EF0D7A5F2
        BC7EEDB478FBEBB6FFFFD1FFFFD8FFFFE5FFFFE0FFFFD4E7E6C1B49E8E5ED8F8
        59D4F653CFF44DCBF20E90C9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFB8807EEDD0A4F7CA8AEAA96AF3CB91FCF3C1FFFFD1FFFFD3FFFFD0FFFFD3DD
        D4B1C5A79E66DEFB60DAFA5BD7F855D0F40E90C9FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF698493D5A795FFF0B7F6DAAFF0C48AF2CA90F8E5AFFCF4
        C1FEF8C6FFFFCFE6C99F7F9EA76AE2FE68E0FC64DDFB5CD7F70E90C9FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF698493EBDCC2FFFFFFFAE3BF
        EDB475EBB075F3C98EFFEAADEAD8AA8F9FA76CE2FE6BE2FE6BE2FE6AE2FE63DC
        FA0E90C9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB8
        807ED9CAC0FEF4C9FFE6A5FCDE9EFCE2A5E6C99FAB99998BE2F76CE2FE6BE2FE
        6BE2FE6CE3FF67DEFC0E90C9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF3A738EA19088CAAD96D3B29CCAA99EB8B7BFAFEAFC8B
        E7FE6CE2FE6BE2FE6BE2FE6CE3FF68E0FC0E90C9FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E90C978E3FCA3EBFFC9F0FFCBF0
        FFC2EFFFAFEDFF8BE7FE6CE2FE6BE2FE6BE2FE6CE3FF68E0FC0E90C9FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E90C978E3FC
        A3EBFFC9F0FFCCF0FFC4EFFFB0EDFF8CE7FE6DE2FE6BE2FE6BE2FE6CE3FF68E0
        FC0E90C9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF0E90C979E5FCAAEFFFD7F7FFD5F4FFC6F0FFB0EEFF8CE9FE6EE3FF70E6FF
        72E7FF70E6FF69E1FC0E90C9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF0E90C974E1FB72D1F05EBFE34EB6DE43B1DC3CAFDC34
        ADDA2DADDC30B1DE38B8E351CEF066DDFB0E90C9FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E90C925A4D43FADDA5CBFE26DC9
        EA79D0EE7AD1F074D1EF66CCED4EC2E739B7E227AAD920A3D50E90C9FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E90C98CD8F2
        C7F6FFC2F7FFB1F3FFA0EFFF90EBFF82EAFF7AE9FF77EAFF78EDFF75EAFF4ECB
        EF0E90C9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF0E90C90E90C960CEEF64D5F464DAF864DDFA62DDFB5ED9F857D3F4
        4BC9ED0E90C90E90C9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0C8FC90F92CA1193CB1295CB12
        95CB1193CB1092CA0D8FC7FF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object pnlDivisao: TPanel
    Left = 0
    Top = 57
    Width = 629
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 372
    Width = 629
    Height = 19
    Panels = <
      item
        Width = 360
      end
      item
        Width = 50
      end>
  end
  object btBtnSelecionarCompra: TBitBtn
    Left = 8
    Top = 340
    Width = 150
    Height = 25
    Hint = 'Selecionar Compra para Pesquisar por Sa'#237'das'
    Caption = 'Selecionar Compra'
    TabOrder = 4
    OnClick = btBtnSelecionarCompraClick
  end
  object btBtnMostrarTodasCompras: TBitBtn
    Left = 473
    Top = 340
    Width = 150
    Height = 25
    Hint = 'Mostrar Todos as Compras Cadastradas'
    Caption = 'Mostrar Todas Compras'
    TabOrder = 5
    OnClick = btBtnMostrarTodasComprasClick
  end
  object ApplicationEvents: TApplicationEvents
    OnHint = ApplicationEventsHint
    Left = 408
    Top = 52
  end
  object PopupMenu: TPopupMenu
    Left = 375
    Top = 53
    object ppMnMostrarTodasCompras: TMenuItem
      Caption = 'Mostrar Todas Compras'
      Hint = 'Mostrar Todas as Compras Cadastradas'
      OnClick = ppMnMostrarTodasComprasClick
    end
  end
  object qryCompra: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT c.codigo, f.razao_social AS Fornecedor,c.data,c.quantidad' +
        'e,c.valor_unitario,c.valor_total,c.valor_pago'
      'FROM compra c, fornecedor f'
      'WHERE c.cod_fornecedor = f.codigo')
    SQLConnection = DM.SQLConnection
    Left = 8
    Top = 145
    object qryCompraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryCompraFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 80
    end
    object qryCompraDATA: TDateField
      FieldName = 'DATA'
    end
    object qryCompraQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 3
    end
    object qryCompraVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      Precision = 15
      Size = 2
    end
    object qryCompraVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryCompraVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
  end
  object dspCompra: TDataSetProvider
    DataSet = qryCompra
    Left = 38
    Top = 145
  end
  object cdsCompra: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCompra'
    Left = 65
    Top = 145
    object cdsCompraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCompraFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 80
    end
    object cdsCompraDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsCompraQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '#0.000'
      Precision = 15
      Size = 3
    end
    object cdsCompraVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsCompraVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsCompraVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
  end
  object dsCompra: TDataSource
    DataSet = cdsCompra
    Left = 94
    Top = 145
  end
end
