object frmSelecionaContaPagar: TfrmSelecionaContaPagar
  Left = 357
  Top = 199
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'EMP'#211'RIO --> Contas '#224' Pagar'
  ClientHeight = 141
  ClientWidth = 492
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 492
    Height = 121
    Align = alTop
    Caption = 'Selecionando Contas '#224' Pagar'
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 30
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
    end
    object Label2: TLabel
      Left = 10
      Top = 60
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object Label3: TLabel
      Left = 10
      Top = 90
      Width = 26
      Height = 13
      Caption = 'Data:'
    end
    object Label4: TLabel
      Left = 80
      Top = 90
      Width = 24
      Height = 13
      Caption = 'entre'
    end
    object Label5: TLabel
      Left = 216
      Top = 90
      Width = 6
      Height = 13
      Caption = 'e'
    end
    object edFornecedor: TEdit
      Left = 80
      Top = 24
      Width = 209
      Height = 21
      Hint = 'Pesquisar por Fornecedor da Conta '#224' Pagar'
      Enabled = False
      TabOrder = 0
      Text = 'edFornecedor'
    end
    object edProduto: TEdit
      Left = 80
      Top = 54
      Width = 209
      Height = 21
      Hint = 'Pesquisar por Produto da Conta '#224' Pagar'
      Enabled = False
      TabOrder = 1
      Text = 'edProduto'
    end
    object btBtnSelecionaFornecedor: TBitBtn
      Left = 288
      Top = 22
      Width = 33
      Height = 25
      Hint = 'Seleciona Fornecedor das Contas '#224' Pagar'
      Caption = '...'
      TabOrder = 2
      OnClick = btBtnSelecionaFornecedorClick
    end
    object btBtnSelecionaProduto: TBitBtn
      Left = 288
      Top = 52
      Width = 33
      Height = 25
      Hint = 'Seleciona Produto das Contas '#224' Pagar'
      Caption = '...'
      TabOrder = 3
      OnClick = btBtnSelecionaProdutoClick
    end
    object mEdDataInicial: TMaskEdit
      Left = 118
      Top = 84
      Width = 78
      Height = 21
      Hint = 'Data Inicial das Contas '#224' Pagar'
      CharCase = ecUpperCase
      EditMask = '00/00/0000;1;_'
      MaxLength = 10
      TabOrder = 4
      Text = '  /  /    '
    end
    object mEdDataFinal: TMaskEdit
      Left = 243
      Top = 84
      Width = 78
      Height = 21
      Hint = 'Data Final das Contas '#224' Pagar'
      CharCase = ecUpperCase
      EditMask = '00/00/0000;1;_'
      MaxLength = 10
      TabOrder = 5
      Text = '  /  /    '
    end
    object btBtnGerarRelatorio: TBitBtn
      Left = 328
      Top = 72
      Width = 153
      Height = 33
      Hint = 'Gera Relat'#243'rio de Contas '#224' Pagar'
      Caption = 'GERAR RELAT'#211'RIO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btBtnGerarRelatorioClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000130B0000130B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFA37875A37875A37875A37875A37875A37875A37875A37875A378
        75A37875A37875A37875A37875A37875A37875A37875A378758A5B5AFF00FFFF
        00FFFF00FFFF00FFFF00FF939798937E8CC9978FCCBFB9FFE2D1FFE0CFFFDFCC
        FFDEC9FFDDC7FFDAC2FFDAC1FFD8BDFFD7BCFFD5B8FFD4B6FFD2B2FFCEB6FFCC
        B38A5B5AFF00FFFF00FFFF00FFFF00FF5381B75381B76572ACA4899FCAABACFF
        EBD6FFE9D3FFE7CFFFE5CCFFE3C8FFE2C5FFDFBFFFDEBDFFDCB7FFDBB6FFD8B0
        FFD7AFFFD0A1FFCEB68A5B5AFF00FFFF00FFFF00FFFF00FFFF00FF5DBCFD3F86
        DF6572ACA4899FDDB8B2FFEBD6FFE9D3FFE7CFFFE5CCFFE3C8FFE2C5FFDFBFFF
        DEBDFFDCB7FFDBB6FFD8B0FFD2A7FFCEB78A5B5AFF00FFFF00FFFF00FFFF00FF
        FF00FFC5E7F35AB4F53F86DF6572ACA4899FDDB8B2FFEBD6FFE9D3FFE7CFFFE5
        CCFFE3C8FFE2C5FFDFBFFFDEBDFFDCB7FFDBB6FFD4A9FFD0BA8C5C5BFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF9E8D915FBBFC3F86DF6572ACA4899FDDB8B2
        FFEBD6FFE9D3FFE7CFFFE5CCFFE3C8FFE2C5FFDFBFFFDEBDFFDCB7FFD7AFFFD0
        BB8E5F5CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAF827ACABEB45DB7F63F
        86DF6572ACB7A8ABF5E1D1D9BBB0C4A09AC7A29DCFAAA4DDBBADF5D7BEFFDFBF
        FFDEBDFFD8B0FFD2BE91615FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB486
        7BF6EEE6FFF3E65FBCFC8AA6C89B9191C29E98D9B49AF7E6BBFEFDCBF7F3CBDE
        C9B6C5A099EBCCB6FFDFBFFFDBB6FFD2BF936460FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFB88A7DF7F0E9FFF4E9F5F4EFE6D7D1BA938EF4D8AFFFF9C8FFFE
        CDFFFEDAFFFFE0FFFFEDF4EEE6C19C96F5D7BEFFDCB7FFD4C1976763FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFBC8E7FF7F2ECFFF7EDFFF8F0D7B7B5E6C3A5
        FFF6C5FFF1BFFFFFD3FFFFE3FFFFF2FFFFFDFFFFFFE4D7C1CAA59AFFDEBDFFD4
        C29A6A65FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC19381F8F4F0FFF8F0FF
        FAF5CEAAA3F7EAC2FFE2B0FFF2C0FFFFD3FFFFE4FFFFF4FFFFF7FFFFE8F7F3CD
        C09C94FFE0C0FFD5C59E6D67FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC697
        81F9F6F3FFFAF5FFFBF8CCA79DFEF8CBFFD9A6FFE9B7FFFFCFFFFFDDFFFFE7FF
        FFE9FFFFE1FEFDD8BE9D94FFE2C5FFD6C7A17069FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFCB9B83FAF9F8FFFBF8FFFEFECEAA9FF7EEC4FFE5B8FFEDBCFFFC
        C9FFFFD0FFFFD7FFFFDAFFFFD4F7EEC8C09B90FFE3C8FFD7C9A5746CFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFCFA085FAFAFAFFFEFEFFFFFFD7B9B2ECDEC1
        FFF5DCFFE2BCFFE1AFFFF5C3FFF6C3FFF8C5FFF6C3ECD7B3C29C93FFE5CCFFD5
        C7A8776EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD4A587FBFBFBFFFFFFFF
        FFFFE7D5D5D6BCADF8F5F5FFFFFFFFE1B4FFE8B7FFDEACFFE8B6F8EABED0A997
        E0C4B8FFE7CFFFCEC1AB7A6FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9A9
        89FBFBFBFFFFFFFFFFFFFFFFFFD4B5B2D7C1BAECE2DAF7F2D4FEE8B5F7E9BDEC
        D9B6D7AD97C9A39DFFD7CCFFCFC4FFB8B2AE7C71FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFDDAD8BFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFD4BABAC8A599CDAF
        A0CFB0A2D4B3A3D0AA9DD9BBB6FFD7CCFFB8B8FFAAAAFF9B9BB17E73FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFE2B18DFDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE6D9D9EDDDDBF1E1DEFFF8F0B28074B28074B28074B28074B280
        74B28074FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE6B58EFDFDFDFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFBF8FFFAF5B28074E9B688
        FDAC3CEF9521CD9168CC9D86FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE9B8
        90FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFBF8FFFAF5FF
        F8F0B28074EBC89FFCC67FDAA279CFA188FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFEDBB91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFEFFFBF8FFFAF5B28074E9CDA5DEB08DD4A58AFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFF0BE93FEF1E5FBEEE2F7EBDFF5E9DDF2E5DA
        EEE2D7EBDFD4E9DCD2E6DAD0E2D5CCDFD2C9B28074DCA988D9AA8DFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF2C093DCA987DCA987DC
        A987DCA987DCA987DCA987DCA987DCA987DCA987DCA987DCA987B28074DCA987
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 122
    Width = 492
    Height = 19
    Panels = <
      item
        Width = 350
      end
      item
        Width = 50
      end>
  end
  object ApplicationEvents: TApplicationEvents
    OnHint = ApplicationEventsHint
    Left = 328
    Top = 20
  end
  object qryContaPagar: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT c.codigo,p.nome AS Produto,f.razao_social AS Fornecedor,c' +
        '.data,c.quantidade,c.valor_total,c.valor_pago FROM Compra c, Pro' +
        'duto p, Fornecedor f'
      'WHERE c.pago = 2'
      'AND c.cod_produto = p.codigo'
      'AND c.cod_fornecedor = f.codigo')
    SQLConnection = DM.SQLConnection
    Left = 368
    Top = 22
    object qryContaPagarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryContaPagarPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 80
    end
    object qryContaPagarFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 80
    end
    object qryContaPagarDATA: TDateField
      FieldName = 'DATA'
    end
    object qryContaPagarQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 3
    end
    object qryContaPagarVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryContaPagarVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
  end
  object dspContaPagar: TDataSetProvider
    DataSet = qryContaPagar
    Left = 398
    Top = 22
  end
  object cdsContaPagar: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContaPagar'
    Left = 428
    Top = 22
    object cdsContaPagarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsContaPagarPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 80
    end
    object cdsContaPagarFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 80
    end
    object cdsContaPagarDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsContaPagarQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 3
    end
    object cdsContaPagarVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsContaPagarVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
  end
  object dsContaPagar: TDataSource
    DataSet = cdsContaPagar
    Left = 456
    Top = 22
  end
  object qrySoma: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT SUM(c.valor_total)AS Total, SUM(c.valor_pago) AS Pago'
      'FROM Compra c, Fornecedor f, Produto p'
      'WHERE c.pago = 2'
      'AND c.cod_produto = p.codigo'
      'AND c.cod_fornecedor = f.codigo')
    SQLConnection = DM.SQLConnection
    Left = 368
    Top = 56
    object qrySomaTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 2
    end
    object qrySomaPAGO: TFMTBCDField
      FieldName = 'PAGO'
      Precision = 15
      Size = 2
    end
  end
  object dspSoma: TDataSetProvider
    DataSet = qrySoma
    Left = 396
    Top = 56
  end
  object cdsSoma: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSoma'
    Left = 426
    Top = 56
    object cdsSomaTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsSomaPAGO: TFMTBCDField
      FieldName = 'PAGO'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
  end
  object dsSoma: TDataSource
    DataSet = cdsSoma
    Left = 455
    Top = 56
  end
end