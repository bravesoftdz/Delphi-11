inherited frmCadImovelInteresse: TfrmCadImovelInteresse
  Left = 503
  Top = 163
  VertScrollBar.Range = 0
  BorderStyle = bsSingle
  Caption = 'CADASTRO DE IM'#211'VEL DE INTERESSE'
  ClientHeight = 517
  ClientWidth = 503
  KeyPreview = True
  OldCreateOrder = True
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar: TStatusBar
    Top = 498
    Width = 503
    Panels = <
      item
        Width = 360
      end
      item
        Width = 50
      end>
  end
  inherited grpBxDados: TGroupBox
    Width = 503
    Height = 458
    object lblCodigo: TLabel
      Left = 5
      Top = 29
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object lblDataCaptacao: TLabel
      Left = 131
      Top = 29
      Width = 78
      Height = 13
      Caption = 'Data Capta'#231#227'o: '
    end
    object lblCampoObrigatorio1: TLabel
      Left = 209
      Top = 23
      Width = 6
      Height = 13
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblObservacao: TLabel
      Left = 4
      Top = 374
      Width = 61
      Height = 13
      Caption = 'Observa'#231#227'o:'
    end
    object lblFinalidade: TLabel
      Left = 8
      Top = 125
      Width = 51
      Height = 13
      Caption = 'Finalidade:'
    end
    object lblCampoObrigatorio4: TLabel
      Left = 80
      Top = 119
      Width = 6
      Height = 13
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSituacao: TLabel
      Left = 262
      Top = 125
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object lblCampoObrigatorio5: TLabel
      Left = 311
      Top = 119
      Width = 6
      Height = 13
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblRendimento: TLabel
      Left = 4
      Top = 344
      Width = 63
      Height = 13
      Caption = 'Rendimento: '
    end
    object lblCaracteristicas: TLabel
      Left = 4
      Top = 414
      Width = 58
      Height = 13
      Caption = 'Caracter'#237'st.:'
    end
    object lblCondicaoPagamento: TLabel
      Left = 8
      Top = 159
      Width = 120
      Height = 13
      Caption = 'Condi'#231#227'o de Pagamento:'
    end
    object lblCampoObrigatorio6: TLabel
      Left = 133
      Top = 153
      Width = 6
      Height = 13
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblValorImovel: TLabel
      Left = 328
      Top = 159
      Width = 61
      Height = 13
      Caption = 'Valor Im'#243'vel:'
    end
    object lblCampoObrigatorio7: TLabel
      Left = 391
      Top = 153
      Width = 6
      Height = 13
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object plsEdCodigo: TPlsEdit
      Left = 54
      Top = 23
      Width = 67
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      plsCorRecebeFoco = clSilver
      plsCaracteresAceitos = numeros
    end
    object plsMedDataCaptacao: TPlsMaskEdit
      Left = 216
      Top = 23
      Width = 73
      Height = 21
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      plsCorRecebeFoco = clSilver
    end
    object pnlDataBaixa: TPanel
      Left = 355
      Top = 12
      Width = 139
      Height = 26
      BevelOuter = bvNone
      TabOrder = 2
    end
    object pnlTipoImovel: TPanel
      Left = 4
      Top = 82
      Width = 489
      Height = 30
      BevelOuter = bvNone
      TabOrder = 4
      object spBtnBuscaTipoImovel: TSpeedButton
        Left = 466
        Top = 6
        Width = 22
        Height = 21
        Cursor = crHandPoint
        Flat = True
        Glyph.Data = {
          AA030000424DAA03000000000000360000002800000011000000110000000100
          18000000000074030000C40E0000C40E00000000000000000000FCFDFFF9FEFE
          FBFFFBFFFDFEFFFCFFEFF1FAD2E1EDF5FCFDFFFEFCFBFEFDF9FFFFFBFFFFFEFF
          FFFFFFFFFFFFFFFFFEFFFFFDFF00FFFBFEF6FEFCF1FFFBFEFDFEFFFFFFA5AFC9
          6E97AD9CBBC9FFFFFFFBFEFEFBFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFE
          FF00FFFAFEF2FFFAE7FFFAFBFFFEFFF8FF90A3C279BEDA5188A5EBF5FFFEFFFF
          FDFFFFFEFFFFFDFEFEFFFFFFFFFFFFFFFFFFFFFFFF00FFFAFDF2FFF9E2FFF8FA
          FDFDFFFEFFADC5DF73C3E34383A8C5D0E3FFFFFFFFFEFEFDFDFDFDFDFDFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFAFEF5FFFAE9FFF8FAFEFDFFFCFFC4DAE980C8E463
          9EBE99A5C0FFFFFFFEFEFEFBFBFBFDFEFEFEFEFEFFFFFFFDFFFFFDFFFF00FFFB
          FFF8FFFAF4FFF6FDFEF9FFFDFFE5F8FE8DBBD0ACD0E8777E96F5F5F6FFFFFFFD
          FCFCFDFCFCFDFDFDFEFFFFFBFFFFFBFFFF00FAFDFFFCFFFCFEFFF5FFFFF6FAFE
          FBF3FFFFBCCEDC8590A2828391F4F1F3FFFEFFFFFFFFFFFEFEFEFEFEFEFFFFFB
          FFFFFAFFFF00F5FDFFFDFFFDFFFFF8FEFFF6FAFFFAFBFFFFFFFFFFB3ACB1C3BC
          BDB4AFAEADAAA7D1CCCCFEFFFFFFFFFFFEFEFEFCFEFEFAFEFE00FBFDFFFCFDFE
          FFFDFFFFFEFEFFFEFDFBF9F5C0B2A6A69281D0BFAACFD2BFD1D3C4AFAEA3C6C1
          BCFFFDFCFFFCFEFCFBFDFAFEFE00FFFEFFFCFDFFFFFDFFFFFEFFFFFFFFDBD7D2
          746557B8A591EAD7BFD9D8BFE9E9D3FAF4E4A99E96E5E0DDFFFFFFFFFCFFFAFF
          FF00FFFEFFFEFEFFFFFEFFFFFDFFFFFFFFA9A09A9F9386DFCFBCE4D3BDE1D8BC
          E5DEC5ECE2D0C2B6ACBEB2ADFFFFFFFEFEFEFAFDFD00FFFEFFFFFEFFFFFEFFFF
          FDFFFFFFFFA49D98C5B9AFF4E6D6EEDCCAE4D6B9D9CCB0E2D3BFAB9D92BBADA8
          FFFFFEFEFEFFF9FCFE00FFFDFFFFFEFFFDFEFFFDFEFFFFFFFFCCC7C4B3AAA0FD
          F0E4E4D4C1DBC8AED3C2A7C3B49F8E8175E5DDD8FFFFFFFEFCFFFBFEFF00FFFD
          FFFFFDFFFBFEFFFCFEFFFFFFFFF3F0F0988E87BEB3A8CDBEAEBCA993B29E8983
          7262B1A69BFFFFFFFFFFFFFFFEFFFCFFFF00FFFFFFFFFDFFFBFEFFFCFEFFFFFC
          FFFFFFFFF6F1EF978F877B6E63725F53806E63ACA097FFFEFCFFFFFFFDFFFFFE
          FFFFFCFFFD00FFFFFFFFFDFFFCFEFFFCFEFFFDFEFFFBFAF9FFFFFFFFFFFFEEE8
          E1EAE4DFF2ECE8FFFFFFFCFCFEFCFDFCFBFEFFFCFFFFFFFFFD00FFFFFFFFFDFF
          FCFEFFFDFEFFF9F8FAFEFDFDFFFDFBFEFDF8FFFFFAFFFFFFFFFFFFFFFDFFF9F8
          FCF9FBFDF9FDFFFDFFFFFFFFFD00}
        OnClick = spBtnBuscaTipoImovelClick
      end
      object lblTipoImovel: TLabel
        Left = 2
        Top = 10
        Width = 73
        Height = 13
        Caption = 'Tipo do Im'#243'vel:'
      end
      object lblCampoObrigatorio3: TLabel
        Left = 77
        Top = 6
        Width = 6
        Height = 13
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object plsEdTipoImovel: TPlsEdit
        Left = 84
        Top = 6
        Width = 382
        Height = 21
        CharCase = ecUpperCase
        ReadOnly = True
        TabOrder = 0
        OnClick = plsEdTipoImovelClick
        OnKeyPress = plsEdTipoImovelKeyPress
        plsCorRecebeFoco = clSilver
        plsAceitaCaractres = False
      end
    end
    object pnlCliente: TPanel
      Left = 4
      Top = 51
      Width = 489
      Height = 30
      BevelOuter = bvNone
      TabOrder = 3
      object lblCliente: TLabel
        Left = 2
        Top = 10
        Width = 38
        Height = 13
        Caption = 'Cliente: '
      end
      object spBtnBuscaCliente: TSpeedButton
        Left = 466
        Top = 6
        Width = 22
        Height = 21
        Cursor = crHandPoint
        Flat = True
        Glyph.Data = {
          AA030000424DAA03000000000000360000002800000011000000110000000100
          18000000000074030000C40E0000C40E00000000000000000000FCFDFFF9FEFE
          FBFFFBFFFDFEFFFCFFEFF1FAD2E1EDF5FCFDFFFEFCFBFEFDF9FFFFFBFFFFFEFF
          FFFFFFFFFFFFFFFFFEFFFFFDFF00FFFBFEF6FEFCF1FFFBFEFDFEFFFFFFA5AFC9
          6E97AD9CBBC9FFFFFFFBFEFEFBFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFE
          FF00FFFAFEF2FFFAE7FFFAFBFFFEFFF8FF90A3C279BEDA5188A5EBF5FFFEFFFF
          FDFFFFFEFFFFFDFEFEFFFFFFFFFFFFFFFFFFFFFFFF00FFFAFDF2FFF9E2FFF8FA
          FDFDFFFEFFADC5DF73C3E34383A8C5D0E3FFFFFFFFFEFEFDFDFDFDFDFDFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFAFEF5FFFAE9FFF8FAFEFDFFFCFFC4DAE980C8E463
          9EBE99A5C0FFFFFFFEFEFEFBFBFBFDFEFEFEFEFEFFFFFFFDFFFFFDFFFF00FFFB
          FFF8FFFAF4FFF6FDFEF9FFFDFFE5F8FE8DBBD0ACD0E8777E96F5F5F6FFFFFFFD
          FCFCFDFCFCFDFDFDFEFFFFFBFFFFFBFFFF00FAFDFFFCFFFCFEFFF5FFFFF6FAFE
          FBF3FFFFBCCEDC8590A2828391F4F1F3FFFEFFFFFFFFFFFEFEFEFEFEFEFFFFFB
          FFFFFAFFFF00F5FDFFFDFFFDFFFFF8FEFFF6FAFFFAFBFFFFFFFFFFB3ACB1C3BC
          BDB4AFAEADAAA7D1CCCCFEFFFFFFFFFFFEFEFEFCFEFEFAFEFE00FBFDFFFCFDFE
          FFFDFFFFFEFEFFFEFDFBF9F5C0B2A6A69281D0BFAACFD2BFD1D3C4AFAEA3C6C1
          BCFFFDFCFFFCFEFCFBFDFAFEFE00FFFEFFFCFDFFFFFDFFFFFEFFFFFFFFDBD7D2
          746557B8A591EAD7BFD9D8BFE9E9D3FAF4E4A99E96E5E0DDFFFFFFFFFCFFFAFF
          FF00FFFEFFFEFEFFFFFEFFFFFDFFFFFFFFA9A09A9F9386DFCFBCE4D3BDE1D8BC
          E5DEC5ECE2D0C2B6ACBEB2ADFFFFFFFEFEFEFAFDFD00FFFEFFFFFEFFFFFEFFFF
          FDFFFFFFFFA49D98C5B9AFF4E6D6EEDCCAE4D6B9D9CCB0E2D3BFAB9D92BBADA8
          FFFFFEFEFEFFF9FCFE00FFFDFFFFFEFFFDFEFFFDFEFFFFFFFFCCC7C4B3AAA0FD
          F0E4E4D4C1DBC8AED3C2A7C3B49F8E8175E5DDD8FFFFFFFEFCFFFBFEFF00FFFD
          FFFFFDFFFBFEFFFCFEFFFFFFFFF3F0F0988E87BEB3A8CDBEAEBCA993B29E8983
          7262B1A69BFFFFFFFFFFFFFFFEFFFCFFFF00FFFFFFFFFDFFFBFEFFFCFEFFFFFC
          FFFFFFFFF6F1EF978F877B6E63725F53806E63ACA097FFFEFCFFFFFFFDFFFFFE
          FFFFFCFFFD00FFFFFFFFFDFFFCFEFFFCFEFFFDFEFFFBFAF9FFFFFFFFFFFFEEE8
          E1EAE4DFF2ECE8FFFFFFFCFCFEFCFDFCFBFEFFFCFFFFFFFFFD00FFFFFFFFFDFF
          FCFEFFFDFEFFF9F8FAFEFDFDFFFDFBFEFDF8FFFFFAFFFFFFFFFFFFFFFDFFF9F8
          FCF9FBFDF9FDFFFDFFFFFFFFFD00}
        OnClick = spBtnBuscaClienteClick
      end
      object lblCampoObrigatorio2: TLabel
        Left = 39
        Top = 6
        Width = 6
        Height = 13
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object plsEdCliente: TPlsEdit
        Left = 46
        Top = 6
        Width = 420
        Height = 21
        CharCase = ecUpperCase
        ReadOnly = True
        TabOrder = 0
        OnClick = plsEdClienteClick
        OnKeyPress = plsEdClienteKeyPress
        plsCorRecebeFoco = clSilver
        plsAceitaCaractres = False
      end
    end
    object grpBxFormaPagamento: TGroupBox
      Left = 4
      Top = 185
      Width = 489
      Height = 142
      Caption = 'Forma de Pagamento'
      TabOrder = 9
      object grpBxCondicaoPagamentoFinanciamento: TGroupBox
        Left = 2
        Top = 14
        Width = 481
        Height = 121
        Caption = 'Financiamento '
        TabOrder = 0
        object lblFinanciamentoCach: TLabel
          Left = 5
          Top = 20
          Width = 28
          Height = 13
          Caption = 'Cach:'
        end
        object lblFinanciamentoBemValor: TLabel
          Left = 5
          Top = 50
          Width = 51
          Height = 13
          Caption = 'Valor Bem:'
        end
        object lblFinanciamentoBemDescricao: TLabel
          Left = 5
          Top = 80
          Width = 51
          Height = 13
          Caption = 'Descri'#231#227'o:'
        end
        object lblFinanciamentoValorFinanciado: TLabel
          Left = 160
          Top = 20
          Width = 82
          Height = 13
          Caption = 'Valor Financiado:'
        end
        object plsEdFinanciamentoCach: TPlsEdit
          Left = 60
          Top = 14
          Width = 89
          Height = 21
          TabOrder = 0
          Text = 'plsEdFinanciamentoCach'
          plsCorRecebeFoco = clSilver
          plsEntraCaracteres = direitaEsquerda
          plsCaracteresAceitos = monetario
        end
        object plsEdFinanciamentoBemValor: TPlsEdit
          Left = 60
          Top = 44
          Width = 100
          Height = 21
          TabOrder = 2
          Text = 'plsEdFinanciamentoBemValor'
          plsCorRecebeFoco = clSilver
          plsEntraCaracteres = direitaEsquerda
          plsCaracteresAceitos = monetario
        end
        object plsMmFinanciamentoBemDescricao: TPlsMemo
          Left = 60
          Top = 80
          Width = 413
          Height = 35
          Lines.Strings = (
            'plsMmFinanciamentoBemDescricao')
          MaxLength = 500
          TabOrder = 3
          plsCorRecebeFoco = clSilver
        end
        object plsEdFinanciamentoValorFinanciado: TPlsEdit
          Left = 246
          Top = 14
          Width = 89
          Height = 21
          TabOrder = 1
          Text = 'plsEdFinanciamentoCach'
          plsCorRecebeFoco = clSilver
          plsEntraCaracteres = direitaEsquerda
          plsCaracteresAceitos = monetario
        end
      end
      object grpBxCondicaoPagamentoVista: TGroupBox
        Left = 2
        Top = 14
        Width = 481
        Height = 121
        Caption = 'Vista '
        TabOrder = 1
        object lblVistaCach: TLabel
          Left = 5
          Top = 20
          Width = 28
          Height = 13
          Caption = 'Cach:'
        end
        object lblVistaBemValor: TLabel
          Left = 5
          Top = 50
          Width = 51
          Height = 13
          Caption = 'Valor Bem:'
        end
        object lblVistaBemDescricao: TLabel
          Left = 5
          Top = 80
          Width = 51
          Height = 13
          Caption = 'Descri'#231#227'o:'
        end
        object plsEdVistaCach: TPlsEdit
          Left = 60
          Top = 14
          Width = 100
          Height = 21
          TabOrder = 0
          Text = 'plsEdVistaCach'
          plsCorRecebeFoco = clSilver
          plsEntraCaracteres = direitaEsquerda
          plsCaracteresAceitos = monetario
        end
        object plsEdVistaBemValor: TPlsEdit
          Left = 60
          Top = 44
          Width = 100
          Height = 21
          TabOrder = 1
          Text = 'plsEdVistaBemValor'
          plsCorRecebeFoco = clSilver
          plsEntraCaracteres = direitaEsquerda
          plsCaracteresAceitos = monetario
        end
        object plsMmVistaBemDescricao: TPlsMemo
          Left = 60
          Top = 80
          Width = 413
          Height = 35
          Lines.Strings = (
            'plsMmVistaBemDescricao')
          MaxLength = 500
          TabOrder = 2
          plsCorRecebeFoco = clSilver
        end
      end
    end
    object plsMmObservacao: TPlsMemo
      Left = 70
      Top = 374
      Width = 423
      Height = 33
      Lines.Strings = (
        'plsMmObservacao')
      MaxLength = 500
      TabOrder = 11
      plsCorRecebeFoco = clSilver
    end
    object plsCbBxFinalidade: TPlsComboBox
      Left = 88
      Top = 119
      Width = 141
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 5
      OnChange = plsCbBxFinalidadeChange
      Items.Strings = (
        'MORAR'
        'INVESTIR')
      plsCorRecebeFoco = clSilver
    end
    object plsCbBxSituacao: TPlsComboBox
      Left = 320
      Top = 119
      Width = 173
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 6
      OnChange = plsCbBxSituacaoChange
      Items.Strings = (
        'PLANTA'
        'PRONTO PARA MORAR'
        'DE TERCEIROS')
      plsCorRecebeFoco = clSilver
    end
    object plsEdRendimento: TPlsEdit
      Left = 69
      Top = 338
      Width = 100
      Height = 21
      TabOrder = 10
      Text = 'plsEdValorImovel'
      plsCorRecebeFoco = clSilver
      plsEntraCaracteres = direitaEsquerda
      plsCaracteresAceitos = monetario
    end
    object plsMmCaracteristicas: TPlsMemo
      Left = 70
      Top = 414
      Width = 423
      Height = 33
      Lines.Strings = (
        'plsMmCaracteristicas')
      MaxLength = 500
      TabOrder = 12
      plsCorRecebeFoco = clSilver
    end
    object plsCbBxCondicaoPagamento: TPlsComboBox
      Left = 141
      Top = 153
      Width = 180
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 7
      OnChange = plsCbBxCondicaoPagamentoChange
      Items.Strings = (
        'VISTA'
        'ACEITA FINANCIAMENTO')
      plsCorRecebeFoco = clSilver
    end
    object plsEdValorImovel: TPlsEdit
      Left = 400
      Top = 153
      Width = 93
      Height = 21
      TabOrder = 8
      Text = 'plsEdValorImovel'
      plsCorRecebeFoco = clSilver
      plsEntraCaracteres = direitaEsquerda
      plsCaracteresAceitos = monetario
    end
    object rdGrpTipoPessoa: TRadioGroup
      Left = 312
      Top = 11
      Width = 181
      Height = 35
      Caption = 'Tipo Pessoa * '
      Columns = 2
      Items.Strings = (
        'F'#237'sica'
        'Jur'#237'dica')
      TabOrder = 13
      OnClick = rdGrpTipoPessoaClick
    end
  end
  inherited ToolBar: TToolBar
    Width = 503
    inherited tlBtnEditar: TToolButton
      Visible = False
    end
    inherited tlBtnExcluir: TToolButton
      Visible = False
    end
  end
  inherited zQryDados: TZQuery
    SQL.Strings = (
      'SELECT * '
      'FROM imovel_de_interesse'
      'WHERE 1=2'
      'ORDER BY codigo')
    Left = 332
    Top = 14
    object zQryDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object zQryDadosDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object zQryDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 3
    end
    object zQryDadosDATA_CAPTACAO: TDateField
      FieldName = 'DATA_CAPTACAO'
    end
    object zQryDadosTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Size = 8
    end
    object zQryDadosCOD_FK_CLIENTE_PESSOA_FISICA: TIntegerField
      FieldName = 'COD_FK_CLIENTE_PESSOA_FISICA'
    end
    object zQryDadosCOD_FK_CLIENTE_PESSOA_JURIDICA: TIntegerField
      FieldName = 'COD_FK_CLIENTE_PESSOA_JURIDICA'
    end
    object zQryDadosCOD_FK_TIPO_IMOVEL: TIntegerField
      FieldName = 'COD_FK_TIPO_IMOVEL'
    end
    object zQryDadosFINALIDADE_IMOVEL: TStringField
      FieldName = 'FINALIDADE_IMOVEL'
      Size = 10
    end
    object zQryDadosIMOVEL_DESEJAVEL: TStringField
      FieldName = 'IMOVEL_DESEJAVEL'
    end
    object zQryDadosVALOR_IMOVEL: TStringField
      FieldName = 'VALOR_IMOVEL'
      Size = 8
    end
    object zQryDadosCONDICAO_PAGAMENTO: TStringField
      FieldName = 'CONDICAO_PAGAMENTO'
    end
    object zQryDadosPGTO_VISTA_CACH: TStringField
      FieldName = 'PGTO_VISTA_CACH'
      Size = 8
    end
    object zQryDadosPGTO_VISTA_VALOR_BEM: TStringField
      FieldName = 'PGTO_VISTA_VALOR_BEM'
      Size = 8
    end
    object zQryDadosPGTO_VISTA_DESCRICAO_BEM: TStringField
      FieldName = 'PGTO_VISTA_DESCRICAO_BEM'
      Size = 500
    end
    object zQryDadosPGTO_FINCTO_CACH_FINANCIADO: TStringField
      FieldName = 'PGTO_FINCTO_CACH_FINANCIADO'
      Size = 8
    end
    object zQryDadosPGTO_FINCTO_CACH: TStringField
      FieldName = 'PGTO_FINCTO_CACH'
      Size = 8
    end
    object zQryDadosPGTO_FINCTO_VALOR_BEM: TStringField
      FieldName = 'PGTO_FINCTO_VALOR_BEM'
      Size = 8
    end
    object zQryDadosPGTO_FINCTO_DESCRICAO_BEM: TStringField
      FieldName = 'PGTO_FINCTO_DESCRICAO_BEM'
      Size = 500
    end
    object zQryDadosRENDIMENTO: TStringField
      FieldName = 'RENDIMENTO'
      Size = 8
    end
    object zQryDadosOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 500
    end
    object zQryDadosDATA_BAIXA: TDateTimeField
      FieldName = 'DATA_BAIXA'
    end
    object zQryDadosCARACTERISTICAS: TStringField
      FieldName = 'CARACTERISTICAS'
      Size = 500
    end
  end
  inherited dsDados: TDataSource
    Left = 418
    Top = 14
  end
  inherited dspDados: TDataSetProvider
    Left = 361
    Top = 14
  end
  inherited cdsDados: TClientDataSet
    Left = 390
    Top = 14
    object cdsDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsDadosDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 3
    end
    object cdsDadosDATA_CAPTACAO: TDateField
      FieldName = 'DATA_CAPTACAO'
    end
    object cdsDadosTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Size = 8
    end
    object cdsDadosCOD_FK_CLIENTE_PESSOA_FISICA: TIntegerField
      FieldName = 'COD_FK_CLIENTE_PESSOA_FISICA'
    end
    object cdsDadosCOD_FK_CLIENTE_PESSOA_JURIDICA: TIntegerField
      FieldName = 'COD_FK_CLIENTE_PESSOA_JURIDICA'
    end
    object cdsDadosCOD_FK_TIPO_IMOVEL: TIntegerField
      FieldName = 'COD_FK_TIPO_IMOVEL'
    end
    object cdsDadosFINALIDADE_IMOVEL: TStringField
      FieldName = 'FINALIDADE_IMOVEL'
      Size = 10
    end
    object cdsDadosIMOVEL_DESEJAVEL: TStringField
      FieldName = 'IMOVEL_DESEJAVEL'
    end
    object cdsDadosVALOR_IMOVEL: TStringField
      FieldName = 'VALOR_IMOVEL'
      Size = 8
    end
    object cdsDadosCONDICAO_PAGAMENTO: TStringField
      FieldName = 'CONDICAO_PAGAMENTO'
    end
    object cdsDadosPGTO_VISTA_CACH: TStringField
      FieldName = 'PGTO_VISTA_CACH'
      Size = 8
    end
    object cdsDadosPGTO_VISTA_VALOR_BEM: TStringField
      FieldName = 'PGTO_VISTA_VALOR_BEM'
      Size = 8
    end
    object cdsDadosPGTO_VISTA_DESCRICAO_BEM: TStringField
      FieldName = 'PGTO_VISTA_DESCRICAO_BEM'
      Size = 500
    end
    object cdsDadosPGTO_FINCTO_CACH_FINANCIADO: TStringField
      FieldName = 'PGTO_FINCTO_CACH_FINANCIADO'
      Size = 8
    end
    object cdsDadosPGTO_FINCTO_CACH: TStringField
      FieldName = 'PGTO_FINCTO_CACH'
      Size = 8
    end
    object cdsDadosPGTO_FINCTO_VALOR_BEM: TStringField
      FieldName = 'PGTO_FINCTO_VALOR_BEM'
      Size = 8
    end
    object cdsDadosPGTO_FINCTO_DESCRICAO_BEM: TStringField
      FieldName = 'PGTO_FINCTO_DESCRICAO_BEM'
      Size = 500
    end
    object cdsDadosRENDIMENTO: TStringField
      FieldName = 'RENDIMENTO'
      Size = 8
    end
    object cdsDadosOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 500
    end
    object cdsDadosDATA_BAIXA: TDateTimeField
      FieldName = 'DATA_BAIXA'
    end
    object cdsDadosCARACTERISTICAS: TStringField
      FieldName = 'CARACTERISTICAS'
      Size = 500
    end
  end
end
