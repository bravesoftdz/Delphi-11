inherited frmCadVenda: TfrmCadVenda
  Left = 380
  Top = 85
  VertScrollBar.Range = 0
  BorderStyle = bsSingle
  Caption = 'CADASTRO DE VENDAS'
  ClientHeight = 427
  ClientWidth = 501
  KeyPreview = True
  OldCreateOrder = True
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar: TStatusBar
    Top = 408
    Width = 501
    Panels = <
      item
        Width = 360
      end
      item
        Width = 50
      end>
  end
  inherited grpBxDados: TGroupBox
    Width = 501
    Height = 368
    object lblCampoObrigatorio1: TLabel
      Left = 214
      Top = 14
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
    object lblDataVenda: TLabel
      Left = 151
      Top = 20
      Width = 63
      Height = 13
      Caption = 'Data Venda: '
    end
    object lblCodigo: TLabel
      Left = 5
      Top = 20
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object lblObservacao: TLabel
      Left = 5
      Top = 308
      Width = 61
      Height = 13
      Caption = 'Observa'#231#227'o:'
    end
    object pnlDataCancelamento: TPanel
      Left = 316
      Top = 12
      Width = 177
      Height = 26
      BevelOuter = bvNone
      TabOrder = 2
      object lblDataCancelamento: TLabel
        Left = 1
        Top = 9
        Width = 100
        Height = 13
        Caption = 'Data Cancelamento: '
      end
      object plsMedDataCancelamento: TPlsMaskEdit
        Left = 101
        Top = 2
        Width = 73
        Height = 21
        EditMask = '99/99/9999'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
        plsCorRecebeFoco = clSilver
      end
    end
    object plsMedDataVenda: TPlsMaskEdit
      Left = 223
      Top = 14
      Width = 73
      Height = 21
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      plsCorRecebeFoco = clSilver
    end
    object plsEdCodigo: TPlsEdit
      Left = 54
      Top = 14
      Width = 67
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      plsCorRecebeFoco = clSilver
      plsCaracteresAceitos = numeros
    end
    object pnlCliente: TPanel
      Left = 156
      Top = 77
      Width = 334
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
        Left = 308
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
        Left = 40
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
        Width = 262
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 100
        TabOrder = 0
        OnExit = plsEdClienteExit
        plsCorRecebeFoco = clSilver
      end
    end
    object pnlImovel: TPanel
      Left = 3
      Top = 139
      Width = 492
      Height = 30
      BevelOuter = bvNone
      TabOrder = 5
      object spBtnBuscaImovel: TSpeedButton
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
        OnClick = spBtnBuscaImovelClick
      end
      object lblImovel: TLabel
        Left = 2
        Top = 10
        Width = 34
        Height = 13
        Caption = 'Im'#243'vel:'
      end
      object lblCampoObrigatorio3: TLabel
        Left = 40
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
      object plsEdImovel: TPlsEdit
        Left = 46
        Top = 6
        Width = 420
        Height = 21
        CharCase = ecUpperCase
        ReadOnly = True
        TabOrder = 0
        OnKeyPress = plsEdImovelKeyPress
        plsCorRecebeFoco = clSilver
        plsAceitaCaractres = False
      end
    end
    object pnlTipoVenda: TPanel
      Left = 2
      Top = 44
      Width = 489
      Height = 29
      BevelOuter = bvNone
      TabOrder = 4
      object lblTipoVenda: TLabel
        Left = 2
        Top = 9
        Width = 76
        Height = 13
        Caption = 'Tipo de Venda: '
      end
      object lblCampoObrigatorio5: TLabel
        Left = 78
        Top = 3
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
      object lblImovelDe: TLabel
        Left = 288
        Top = 8
        Width = 51
        Height = 13
        Caption = 'Im'#243'vel De:'
      end
      object Label2: TLabel
        Left = 342
        Top = 3
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
      object plsCbBxTipoVenda: TPlsComboBox
        Left = 87
        Top = 3
        Width = 164
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        OnChange = plsCbBxTipoVendaChange
        Items.Strings = (
          'MEU AGENCIAMENTO'
          'PAUTA')
        plsCorRecebeFoco = clSilver
      end
      object plsCbBxImovelDe: TPlsComboBox
        Left = 352
        Top = 4
        Width = 135
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
        OnChange = plsCbBxImovelDeChange
        plsCorRecebeFoco = clSilver
      end
    end
    object pnlConstrutora: TPanel
      Left = 3
      Top = 111
      Width = 492
      Height = 30
      BevelOuter = bvNone
      TabOrder = 6
      object spBtnBuscaConstrutora: TSpeedButton
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
        OnClick = spBtnBuscaConstrutoraClick
      end
      object lblConstrutora: TLabel
        Left = 2
        Top = 10
        Width = 60
        Height = 13
        Caption = 'Construtora: '
      end
      object Label3: TLabel
        Left = 62
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
      object plsEdConstrutora: TPlsEdit
        Left = 72
        Top = 6
        Width = 394
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 100
        TabOrder = 0
        OnExit = plsEdConstrutoraExit
        plsCorRecebeFoco = clSilver
      end
    end
    object plsMmObservacao: TPlsMemo
      Left = 70
      Top = 308
      Width = 416
      Height = 48
      Lines.Strings = (
        'plsMmObservacao')
      MaxLength = 500
      TabOrder = 8
      plsCorRecebeFoco = clSilver
    end
    object pnlValores: TPanel
      Left = 5
      Top = 169
      Width = 461
      Height = 137
      BevelOuter = bvNone
      TabOrder = 7
      object lblValorVenda: TLabel
        Left = 2
        Top = 20
        Width = 79
        Height = 13
        Caption = 'Valor da Venda: '
      end
      object lblDeducoes: TLabel
        Left = 240
        Top = 20
        Width = 72
        Height = 13
        Caption = ' % Dedu'#231#245'es:  '
      end
      object lblValorBemNegociavel: TLabel
        Left = 2
        Top = 50
        Width = 123
        Height = 13
        Caption = 'Valor do Bem Negoci'#225'vel:'
      end
      object lblDeduzirBemNegociavelValorVenda: TLabel
        Left = 240
        Top = 50
        Width = 39
        Height = 13
        Caption = 'Deduzir:'
      end
      object lblValorCalculoComissao: TLabel
        Left = 2
        Top = 110
        Width = 113
        Height = 13
        Caption = 'Valor C'#225'lculo Comiss'#227'o:'
      end
      object lblPercentualSobreComissao: TLabel
        Left = 240
        Top = 80
        Width = 90
        Height = 13
        Caption = '% Sobre Comiss'#227'o:'
      end
      object lblPercentualSobreVenda: TLabel
        Left = 240
        Top = 80
        Width = 76
        Height = 13
        Caption = '% Sobre Venda:'
      end
      object lblValorTotalComissao: TLabel
        Left = 240
        Top = 110
        Width = 102
        Height = 13
        Caption = 'Valor Total Comiss'#227'o:'
      end
      object lblTipoCalculoComissao: TLabel
        Left = 2
        Top = 80
        Width = 110
        Height = 13
        Caption = 'Tipo C'#225'lculo Comiss'#227'o:'
      end
      object plsMedValorVenda: TPlsEdit
        Left = 128
        Top = 14
        Width = 100
        Height = 21
        TabOrder = 0
        Text = 'plsMedValorVenda'
        plsCorRecebeFoco = clSilver
        plsEntraCaracteres = direitaEsquerda
        plsCaracteresAceitos = monetario2
      end
      object plsMedDeducoes: TPlsEdit
        Left = 348
        Top = 14
        Width = 100
        Height = 21
        TabOrder = 1
        Text = 'plsMedDeducoes'
        plsCorRecebeFoco = clSilver
        plsEntraCaracteres = direitaEsquerda
        plsCaracteresAceitos = percentagem
      end
      object plsMedValorBemNegociavel: TPlsEdit
        Left = 128
        Top = 44
        Width = 100
        Height = 21
        TabOrder = 2
        Text = 'plsMedValorBemNegociavel'
        plsCorRecebeFoco = clSilver
        plsEntraCaracteres = direitaEsquerda
        plsCaracteresAceitos = monetario2
      end
      object plsCbBxDeduzirBemNegociavel: TPlsComboBox
        Left = 348
        Top = 44
        Width = 100
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 3
        OnChange = lsCbBxDeduzirBemNegociavelChange
        Items.Strings = (
          'SIM'
          'N'#195'O')
        plsCorRecebeFoco = clSilver
      end
      object plsMedValorCalculoComissao: TPlsEdit
        Left = 128
        Top = 104
        Width = 100
        Height = 21
        Enabled = False
        TabOrder = 7
        Text = 'plsMedValorCalculoComissao'
        plsCorRecebeFoco = clSilver
        plsEntraCaracteres = direitaEsquerda
        plsCaracteresAceitos = monetario2
      end
      object plsMedPercentualSobreComissao: TPlsEdit
        Left = 348
        Top = 74
        Width = 100
        Height = 21
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 6
        Text = 'plsMedPercentualSobreComissao'
        plsCorRecebeFoco = clSilver
        plsEntraCaracteres = direitaEsquerda
        plsCaracteresAceitos = percentagem
      end
      object plsMedPercentualSobreVenda: TPlsEdit
        Left = 348
        Top = 74
        Width = 100
        Height = 21
        TabOrder = 5
        Text = 'plsMedPercentualSobreVenda'
        plsCorRecebeFoco = clSilver
        plsEntraCaracteres = direitaEsquerda
        plsCaracteresAceitos = percentagem
      end
      object plsMedValorTotalComissao: TPlsEdit
        Left = 348
        Top = 104
        Width = 100
        Height = 21
        Enabled = False
        TabOrder = 8
        Text = 'plsMedValorTotalComissao'
        plsCorRecebeFoco = clSilver
        plsEntraCaracteres = direitaEsquerda
        plsCaracteresAceitos = monetario2
      end
      object plsCbBxTipoCalculoComissao: TPlsComboBox
        Left = 128
        Top = 74
        Width = 100
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 4
        OnChange = plsCbBxTipoCalculoComissaoChange
        Items.Strings = (
          'VENDA'
          'COMISS'#195'O')
        plsCorRecebeFoco = clSilver
      end
    end
    object rdGrpTipoPessoa: TRadioGroup
      Left = 5
      Top = 74
      Width = 149
      Height = 34
      Caption = 'Tipo Pessoa * '
      Columns = 2
      Items.Strings = (
        'F'#237'sica'
        'Jur'#237'dica')
      TabOrder = 9
      OnClick = rdGrpTipoPessoaClick
    end
  end
  inherited ToolBar: TToolBar
    Width = 501
  end
  inherited zQryDados: TZQuery
    SQL.Strings = (
      'SELECT * '
      'FROM vendas'
      'WHERE 1=2'
      'ORDER BY codigo')
    Left = 380
    Top = 6
    object zQryDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object zQryDadosDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object zQryDadosDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object zQryDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      Size = 3
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
    object zQryDadosCOD_FK_IMOVEL: TIntegerField
      FieldName = 'COD_FK_IMOVEL'
      Required = True
    end
    object zQryDadosCOD_FK_AGENCIAMENTO: TIntegerField
      FieldName = 'COD_FK_AGENCIAMENTO'
    end
    object zQryDadosTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Required = True
      Size = 16
    end
    object zQryDadosVENDA_MEU_AGENCIAMENTO_MEU: TStringField
      FieldName = 'VENDA_MEU_AGENCIAMENTO_MEU'
      Size = 3
    end
    object zQryDadosVENDA_MEU_AGENCIAMENTO_COLEGAS: TStringField
      FieldName = 'VENDA_MEU_AGENCIAMENTO_COLEGAS'
      Size = 3
    end
    object zQryDadosVENDA_PAUTA_CONSTRUTORA: TStringField
      FieldName = 'VENDA_PAUTA_CONSTRUTORA'
      Size = 3
    end
    object zQryDadosVENDA_PAUTA_TERCEIROS: TStringField
      FieldName = 'VENDA_PAUTA_TERCEIROS'
      Size = 3
    end
    object zQryDadosCOD_FK_TP_VND_CONSTRUTORA: TIntegerField
      FieldName = 'COD_FK_TP_VND_CONSTRUTORA'
    end
    object zQryDadosVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
      Required = True
    end
    object zQryDadosDEDUCOES: TFloatField
      FieldName = 'DEDUCOES'
    end
    object zQryDadosVALOR_BEM_NEGOCIAVEL: TFloatField
      FieldName = 'VALOR_BEM_NEGOCIAVEL'
    end
    object zQryDadosDEDUZIR_BEM_NEGOC_VALOR_VENDA: TStringField
      FieldName = 'DEDUZIR_BEM_NEGOC_VALOR_VENDA'
      Size = 3
    end
    object zQryDadosTIPO_CALCULO_COMISSAO: TStringField
      FieldName = 'TIPO_CALCULO_COMISSAO'
      Size = 8
    end
    object zQryDadosVALOR_PARA_CALCULO_COMISSAO: TFloatField
      FieldName = 'VALOR_PARA_CALCULO_COMISSAO'
    end
    object zQryDadosPERCENTUAL_SOBRE_VENDA: TFloatField
      FieldName = 'PERCENTUAL_SOBRE_VENDA'
    end
    object zQryDadosVALOR_TOTAL_COMISSAO: TFloatField
      FieldName = 'VALOR_TOTAL_COMISSAO'
    end
    object zQryDadosPERCENTUAL_SOBRE_COMISSAO: TFloatField
      FieldName = 'PERCENTUAL_SOBRE_COMISSAO'
    end
    object zQryDadosOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 500
    end
    object zQryDadosDATA_CANCELAMENTO: TDateTimeField
      FieldName = 'DATA_CANCELAMENTO'
    end
  end
  inherited dsDados: TDataSource
    Left = 467
    Top = 6
  end
  inherited dspDados: TDataSetProvider
    Left = 409
    Top = 6
  end
  inherited cdsDados: TClientDataSet
    Left = 439
    Top = 6
    object cdsDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsDadosDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsDadosDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object cdsDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      Size = 3
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
    object cdsDadosCOD_FK_IMOVEL: TIntegerField
      FieldName = 'COD_FK_IMOVEL'
      Required = True
    end
    object cdsDadosCOD_FK_AGENCIAMENTO: TIntegerField
      FieldName = 'COD_FK_AGENCIAMENTO'
    end
    object cdsDadosTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Required = True
      Size = 16
    end
    object cdsDadosVENDA_MEU_AGENCIAMENTO_MEU: TStringField
      FieldName = 'VENDA_MEU_AGENCIAMENTO_MEU'
      Size = 3
    end
    object cdsDadosVENDA_MEU_AGENCIAMENTO_COLEGAS: TStringField
      FieldName = 'VENDA_MEU_AGENCIAMENTO_COLEGAS'
      Size = 3
    end
    object cdsDadosVENDA_PAUTA_CONSTRUTORA: TStringField
      FieldName = 'VENDA_PAUTA_CONSTRUTORA'
      Size = 3
    end
    object cdsDadosVENDA_PAUTA_TERCEIROS: TStringField
      FieldName = 'VENDA_PAUTA_TERCEIROS'
      Size = 3
    end
    object cdsDadosCOD_FK_TP_VND_CONSTRUTORA: TIntegerField
      FieldName = 'COD_FK_TP_VND_CONSTRUTORA'
    end
    object cdsDadosVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
      Required = True
    end
    object cdsDadosDEDUCOES: TFloatField
      FieldName = 'DEDUCOES'
    end
    object cdsDadosVALOR_BEM_NEGOCIAVEL: TFloatField
      FieldName = 'VALOR_BEM_NEGOCIAVEL'
    end
    object cdsDadosDEDUZIR_BEM_NEGOC_VALOR_VENDA: TStringField
      FieldName = 'DEDUZIR_BEM_NEGOC_VALOR_VENDA'
      Size = 3
    end
    object cdsDadosTIPO_CALCULO_COMISSAO: TStringField
      FieldName = 'TIPO_CALCULO_COMISSAO'
      Size = 8
    end
    object cdsDadosVALOR_PARA_CALCULO_COMISSAO: TFloatField
      FieldName = 'VALOR_PARA_CALCULO_COMISSAO'
    end
    object cdsDadosPERCENTUAL_SOBRE_VENDA: TFloatField
      FieldName = 'PERCENTUAL_SOBRE_VENDA'
    end
    object cdsDadosVALOR_TOTAL_COMISSAO: TFloatField
      FieldName = 'VALOR_TOTAL_COMISSAO'
    end
    object cdsDadosPERCENTUAL_SOBRE_COMISSAO: TFloatField
      FieldName = 'PERCENTUAL_SOBRE_COMISSAO'
    end
    object cdsDadosOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 500
    end
    object cdsDadosDATA_CANCELAMENTO: TDateTimeField
      FieldName = 'DATA_CANCELAMENTO'
    end
  end
end
