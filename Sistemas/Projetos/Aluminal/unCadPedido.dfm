object frmCadPedido: TfrmCadPedido
  Left = 254
  Top = 117
  Width = 1026
  Height = 648
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Aluminal'
  Color = clBtnFace
  Constraints.MinHeight = 648
  Constraints.MinWidth = 1026
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgCtrlPedido: TAdvPageControl
    Left = 0
    Top = 0
    Width = 1018
    Height = 614
    ActivePage = tbPedido
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    Align = alClient
    TabBackGroundColor = clBtnFace
    TabMargin.RightMargin = 0
    TabOverlap = 0
    Version = '1.6.1.1'
    TabOrder = 0
    OnChange = pgCtrlPedidoChange
    OnChanging = pgCtrlPedidoChanging
    object tbCliente: TAdvTabSheet
      Caption = 'Cliente'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object grpBxEndereco: TGroupBox
        Left = 0
        Top = 161
        Width = 1010
        Height = 165
        Align = alTop
        Caption = 'Endere'#231'o '
        TabOrder = 3
        object lblEnderecoEstado: TLabel
          Left = 10
          Top = 20
          Width = 36
          Height = 13
          Caption = 'Estado:'
        end
        object lblEnderecoBairro: TLabel
          Left = 10
          Top = 44
          Width = 30
          Height = 13
          Caption = 'Bairro:'
        end
        object lblEnderecoRua: TLabel
          Left = 10
          Top = 68
          Width = 23
          Height = 13
          Caption = 'Rua:'
        end
        object lblEnderecoCEP: TLabel
          Left = 862
          Top = 68
          Width = 24
          Height = 13
          Caption = 'CEP:'
        end
        object lblEnderecoComplemento: TLabel
          Left = 10
          Top = 92
          Width = 67
          Height = 13
          Caption = 'Complemento:'
        end
        object lbllblEnderecoCidade: TLabel
          Left = 130
          Top = 20
          Width = 36
          Height = 13
          Caption = 'Cidade:'
        end
        object lblEnderecoNumero: TLabel
          Left = 728
          Top = 68
          Width = 15
          Height = 13
          Caption = 'N'#186':'
        end
        object cbBxEnderecoEstado: TPlsComboBox
          Left = 48
          Top = 14
          Width = 60
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 0
          OnExit = cbBxEnderecoEstadoExit
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object edEnderecoBairro: TPlsEdit
          Left = 48
          Top = 38
          Width = 945
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
          OnExit = edEnderecoBairroExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object edEnderecoRua: TPlsEdit
          Left = 48
          Top = 62
          Width = 657
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          OnExit = edEnderecoRuaExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object medEnderecoCEP: TPlsMaskEdit
          Left = 891
          Top = 62
          Width = 102
          Height = 21
          CharCase = ecUpperCase
          EditMask = '99999-999'
          MaxLength = 9
          TabOrder = 5
          Text = '     -   '
          OnExit = medEnderecoCEPExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object mmEnderecoComplemento: TPlsMemo
          Left = 8
          Top = 109
          Width = 985
          Height = 43
          TabOrder = 6
          OnExit = mmEnderecoComplementoExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object edEnderecoCidade: TPlsEdit
          Left = 168
          Top = 14
          Width = 825
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          OnExit = edEnderecoCidadeExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object edEnderecoNumero: TPlsEdit
          Left = 747
          Top = 62
          Width = 99
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
          OnExit = edEnderecoNumeroExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
      end
      object sbCliente: TStatusBar
        Left = 0
        Top = 567
        Width = 1010
        Height = 19
        Panels = <
          item
            Width = 500
          end
          item
            Width = 300
          end
          item
            Width = 50
          end>
      end
      object pnlDadosCliente: TPanel
        Left = 0
        Top = 41
        Width = 1010
        Height = 108
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          1010
          108)
        object lblCodigo: TLabel
          Left = 3
          Top = 15
          Width = 36
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object lblNome: TLabel
          Left = 3
          Top = 39
          Width = 31
          Height = 13
          Caption = 'Nome:'
        end
        object lblCPF: TLabel
          Left = 3
          Top = 63
          Width = 23
          Height = 13
          Caption = 'CPF:'
        end
        object lblDataNascimento: TLabel
          Left = 543
          Top = 63
          Width = 100
          Height = 13
          Caption = 'Data de Nascimento:'
        end
        object lblEmail: TLabel
          Left = 3
          Top = 87
          Width = 28
          Height = 13
          Caption = 'Email:'
        end
        object lblTelefone1: TLabel
          Left = 626
          Top = 87
          Width = 45
          Height = 13
          Caption = 'Telefone:'
        end
        object lblTelefone2: TLabel
          Left = 824
          Top = 87
          Width = 45
          Height = 13
          Caption = 'Telefone:'
        end
        object lblCNPJ: TLabel
          Left = 358
          Top = 63
          Width = 33
          Height = 13
          Caption = 'CNPJ: '
        end
        object lblIdentidade: TLabel
          Left = 172
          Top = 63
          Width = 53
          Height = 13
          Caption = 'Identidade:'
        end
        object lblProfissao: TLabel
          Left = 742
          Top = 63
          Width = 46
          Height = 13
          Caption = 'Profiss'#227'o:'
        end
        object lblData: TLabel
          Left = 150
          Top = 15
          Width = 26
          Height = 13
          Caption = 'Data:'
        end
        object edEmail: TPlsEdit
          Left = 42
          Top = 81
          Width = 568
          Height = 21
          CharCase = ecLowerCase
          TabOrder = 8
          OnExit = edEmailExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object medTelefone1: TPlsMaskEdit
          Left = 675
          Top = 81
          Width = 120
          Height = 21
          CharCase = ecUpperCase
          EditMask = '(99)9999-9999'
          MaxLength = 13
          TabOrder = 9
          Text = '(  )    -    '
          OnExit = medTelefone1Exit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object medTelefone2: TPlsMaskEdit
          Left = 874
          Top = 81
          Width = 120
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          EditMask = '(99)9999-9999'
          MaxLength = 13
          TabOrder = 10
          Text = '(  )    -    '
          OnExit = medTelefone2Exit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object edProfissao: TPlsEdit
          Left = 793
          Top = 57
          Width = 201
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          TabOrder = 7
          OnExit = edProfissaoExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object medCNPJ: TPlsMaskEdit
          Left = 392
          Top = 57
          Width = 132
          Height = 21
          CharCase = ecUpperCase
          EditMask = '99.999.999/9999-99'
          MaxLength = 18
          TabOrder = 5
          Text = '  .   .   /    -  '
          OnExit = medCNPJExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object edIdentidade: TPlsEdit
          Left = 229
          Top = 57
          Width = 110
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
          OnExit = edIdentidadeExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object medDataNascimento: TPlsMaskEdit
          Left = 647
          Top = 57
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          EditMask = '99/99/9999'
          MaxLength = 10
          TabOrder = 6
          Text = '  /  /    '
          OnExit = medDataNascimentoExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object medCPF: TPlsMaskEdit
          Left = 42
          Top = 57
          Width = 110
          Height = 21
          CharCase = ecUpperCase
          EditMask = '999.999.999-99'
          MaxLength = 14
          TabOrder = 3
          Text = '   .   .   -  '
          OnExit = medCPFExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object edNome: TPlsEdit
          Left = 42
          Top = 33
          Width = 952
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          TabOrder = 2
          OnExit = edNomeExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object edCodigo: TPlsEdit
          Left = 42
          Top = 9
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnExit = edCodigoExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
          plsCaracteresAceitos = numeros
        end
        object edData: TPlsEdit
          Left = 180
          Top = 9
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          ReadOnly = True
          TabOrder = 1
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
      end
      object tlBotoesCliente: TToolBar
        Left = 0
        Top = 0
        Width = 1010
        Height = 41
        ButtonHeight = 36
        ButtonWidth = 53
        Caption = 'tlBotoesCliente'
        Images = imgBotoes
        ShowCaptions = True
        TabOrder = 0
        object tlBtnNovoCliente: TToolButton
          Left = 0
          Top = 2
          Caption = 'Novo'
          ImageIndex = 0
          OnClick = tlBtnNovoClienteClick
        end
        object tlBtnEditarCliente: TToolButton
          Left = 53
          Top = 2
          Caption = 'Editar'
          ImageIndex = 4
          OnClick = tlBtnEditarClienteClick
        end
        object tlBtnExcluirCliente: TToolButton
          Left = 106
          Top = 2
          Caption = 'Excluir'
          ImageIndex = 1
          OnClick = tlBtnExcluirClienteClick
        end
        object tlBtnSalvarCliente: TToolButton
          Left = 159
          Top = 2
          Caption = 'Salvar'
          ImageIndex = 2
          OnClick = tlBtnSalvarClienteClick
        end
        object tlBtnRestaurarCliente: TToolButton
          Left = 212
          Top = 2
          Caption = 'Restaurar'
          ImageIndex = 3
          OnClick = tlBtnRestaurarClienteClick
        end
        object tlBtnLimparCliente: TToolButton
          Left = 265
          Top = 2
          Caption = 'Limpar'
          ImageIndex = 7
          OnClick = tlBtnLimparClienteClick
        end
      end
      object pnlSeparaDadosEndereco: TPanel
        Left = 0
        Top = 149
        Width = 1010
        Height = 12
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
      end
    end
    object tbPedido: TAdvTabSheet
      Caption = 'Pedido'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object sbPedido: TStatusBar
        Left = 0
        Top = 567
        Width = 1010
        Height = 19
        Panels = <
          item
            Width = 500
          end
          item
            Width = 300
          end
          item
            Width = 50
          end>
      end
      object pnlTopo: TPanel
        Left = 0
        Top = 41
        Width = 1010
        Height = 41
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        DesignSize = (
          1010
          41)
        object lblNumeroPedido: TLabel
          Left = 7
          Top = 20
          Width = 22
          Height = 16
          Caption = 'N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblClientePedido: TLabel
          Left = 238
          Top = 20
          Width = 53
          Height = 16
          Cursor = crHandPoint
          Hint = 'Clique aqui para alterar o Cliente do Pedido'
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = lblClientePedidoClick
        end
        object lblNomeClientePedido: TLabel
          Left = 291
          Top = 20
          Width = 5
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblValorTotalPedido: TLabel
          Left = 816
          Top = 20
          Width = 82
          Height = 16
          Caption = 'Valor Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblInfStatusPedido: TLabel
          Left = 96
          Top = 20
          Width = 48
          Height = 16
          Caption = 'Status:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblStatusPedido: TLabel
          Left = 147
          Top = 20
          Width = 5
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTotalPedidosCliente: TLabel
          Left = 632
          Top = 20
          Width = 80
          Height = 16
          Cursor = crHandPoint
          Caption = '(0 pedidos)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = lblTotalPedidosClienteClick
        end
        object edCodigoPedido: TPlsEdit
          Left = 30
          Top = 12
          Width = 58
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnExit = edCodigoPedidoExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
          plsCaracteresAceitos = numeros
        end
        object edValorTotalPedido: TPlsEdit
          Left = 899
          Top = 12
          Width = 94
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          plsCorRecebeFoco = clSilver
          plsCaracteresAceitos = monetario2
        end
      end
      object grpBxEnderecoEntrega: TGroupBox
        Left = 0
        Top = 353
        Width = 1010
        Height = 125
        Align = alTop
        Caption = 'Endere'#231'o de Entrega '
        TabOrder = 3
        DesignSize = (
          1010
          125)
        object lblEnderecoEstadoEntrega: TLabel
          Left = 10
          Top = 20
          Width = 36
          Height = 13
          Caption = 'Estado:'
        end
        object lblEnderecoBairroEntrega: TLabel
          Left = 586
          Top = 20
          Width = 30
          Height = 13
          Caption = 'Bairro:'
        end
        object lblEnderecoRuaEntrega: TLabel
          Left = 10
          Top = 44
          Width = 23
          Height = 13
          Caption = 'Rua:'
        end
        object lblEnderecoCEPEntrega: TLabel
          Left = 858
          Top = 44
          Width = 24
          Height = 13
          Caption = 'CEP:'
        end
        object lblEnderecoComplementoEntrega: TLabel
          Left = 10
          Top = 59
          Width = 67
          Height = 13
          Caption = 'Complemento:'
        end
        object lbllblEnderecoCidadeEntrega: TLabel
          Left = 117
          Top = 20
          Width = 36
          Height = 13
          Caption = 'Cidade:'
        end
        object lblEnderecoNumeroEntrega: TLabel
          Left = 586
          Top = 44
          Width = 15
          Height = 13
          Caption = 'N'#186':'
        end
        object cbBxEnderecoEstadoEntrega: TPlsComboBox
          Left = 48
          Top = 14
          Width = 60
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 0
          OnExit = cbBxEnderecoEstadoExit
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object edEnderecoBairroEntrega: TPlsEdit
          Left = 619
          Top = 14
          Width = 374
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          TabOrder = 2
          OnExit = edEnderecoBairroExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object edEnderecoRuaEntrega: TPlsEdit
          Left = 48
          Top = 38
          Width = 521
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          OnExit = edEnderecoRuaExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object medEnderecoCEPEntrega: TPlsMaskEdit
          Left = 888
          Top = 38
          Width = 105
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          EditMask = '99999-999'
          MaxLength = 9
          TabOrder = 5
          Text = '     -   '
          OnExit = medEnderecoCEPExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object mmEnderecoComplementoEntrega: TPlsMemo
          Left = 10
          Top = 75
          Width = 983
          Height = 43
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 6
          OnExit = mmEnderecoComplementoExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object edEnderecoCidadeEntrega: TPlsEdit
          Left = 158
          Top = 14
          Width = 411
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          OnExit = edEnderecoCidadeExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
        object edEnderecoNumeroEntrega: TPlsEdit
          Left = 619
          Top = 38
          Width = 110
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
          OnExit = edEnderecoNumeroExit
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
      end
      object grpBxItensPedido: TGroupBox
        Left = 0
        Top = 82
        Width = 1010
        Height = 271
        Align = alTop
        Caption = 'Itens do Pedido '
        TabOrder = 2
        object grItensPedido: TDBGrid
          Left = 2
          Top = 15
          Width = 970
          Height = 254
          Align = alClient
          DataSource = dsItensPedido
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = grItensPedidoColEnter
          OnColExit = grItensPedidoColExit
          OnKeyDown = grItensPedidoKeyDown
          OnKeyPress = grItensPedidoKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'quantidade'
              Title.Caption = 'Qtde'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unidadeCombo'
              Title.Caption = 'Unid'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descricao'
              Title.Caption = 'Descri'#231#227'o'
              Width = 500
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_unitario'
              Title.Caption = 'Vlr Unit'#225'rio'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_total'
              Title.Caption = 'Vlr Total'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'complemento'
              Title.Caption = 'Complemento'
              Width = 180
              Visible = True
            end>
        end
        object pnlLateralDireita: TPanel
          Left = 972
          Top = 15
          Width = 36
          Height = 254
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object btnAdicionarItemPedido: TSpeedButton
            Left = 2
            Top = 14
            Width = 30
            Height = 30
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FF00004300004300003C000037000036000036FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000930000930002841518892B
              2D8C2A2A830F0F6200004000003A00003AFF00FFFF00FFFF00FFFF00FFFF00FF
              0004B30104A73D45C3B3B7EAFFFFFFFFFFFFFFFFFFFFFFFFA0A2CC2D2D740000
              3A00004EFF00FFFF00FFFF00FF0005CC0107BA7F89E2FFFFFFFFFFFF9B9CDB5E
              5EB75F5FB6ADADDDFFFFFFFFFFFF5E5E9B00003A000043FF00FFFF00FF0005CC
              6472E5FFFFFFD7DAF52427B300008300007200006800006A31319CE6E6F7FFFF
              FF36367D000043FF00FF0007E80B1BD8F8F8FFF2F3FC1621C400009F04079C89
              8FD8797BCD010275000061262695FFFFFFC3C3DB01015000004B0007E84358F0
              FFFFFF6476ED0002C40001B60407AEE8EDFDCACFF000018000006E0000668484
              C9FFFFFF27278800004B0009F37F94FAFFFFFF1932F00512E07587EA979CE8F3
              F5FDEBEDF89194DB6A6DC70202782D2E9EFFFFFF5558BE00004A0218FDA6B4FD
              FFFFFF112CFD0B20F5F7FAFFFFFFFFFFFFFFFFFFFFFFFFFFDFE0F504058B2024
              A0FFFFFF6267C30000781735FFA4B6FFFFFFFF2C4AFF000FFF142FF82B3EEDE6
              EBFDD2D7F7232DCA121EB9000093464DBEFFFFFF4A4EBD00007F0318FF91A6FF
              FFFFFFA9B9FF000EFF0008FF0515F8EBF0FFCFD5F70108C70001B30206AEC3C7
              EFFCFCFD1017AA00007FFF00FF5F7AFFFFFFFFFFFFFF5C75FF000BFF000EFF1E
              3BFF1A35F30007DB0006CC7684E8FFFFFF8F97E2000198FF00FFFF00FF425FFF
              C4CFFFFFFFFFFFFFFF8B9FFF162FFF0414FF0515FD2037F39FADF7FFFFFFE2E5
              FA101ABA000198FF00FFFF00FFFF00FF5975FFD7DFFFFFFFFFFFFFFFFCFCFFD1
              DBFFD4DFFFFFFFFFFFFFFFC6CDF71825CD0001B0FF00FFFF00FFFF00FFFF00FF
              FF00FF5C76FF97A9FDDAE0FFFFFFFFFFFFFFFFFFFFD4DBFD596FF00514D70001
              B0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5C75FF5C79FF62
              7DFF4A66FD203CF50619E5FF00FFFF00FFFF00FFFF00FFFF00FF}
            OnClick = btnAdicionarItemPedidoClick
          end
          object btnDeletarItemPedido: TSpeedButton
            Left = 2
            Top = 44
            Width = 30
            Height = 30
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FF00004300004300003C000037000036000036FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000930000930002841518892B
              2D8C2A2A830F0F6200004000003A00003AFF00FFFF00FFFF00FFFF00FFFF00FF
              0004B30104A73D45C3B3B7EAFFFFFFFFFFFFFFFFFFFFFFFFA0A2CC2D2D740000
              3A00004EFF00FFFF00FFFF00FF0005CC0107BA7F89E2FFFFFFFFFFFF9B9CDB5E
              5EB75F5FB6ADADDDFFFFFFFFFFFF5E5E9B00003A000043FF00FFFF00FF0005CC
              6472E5FFFFFFD7DAF52427B300008304079C06068B00006A31319CE6E6F7FFFF
              FF36367D000043FF00FF0007E80B1BD8F8F8FFF2F3FC1621C400009F04079C04
              058F010276010174000061262695FFFFFFC3C3DB01015000004B0007E84358F0
              FFFFFF6476ED0002C40001B60407AE07078702027500017E00006E0000668484
              C9FFFFFF27278800004B0009F37F94FAFFFFFF1932F00512E0F3F5FDF3F5FDF3
              F5FDEBEDF8EBEDF8EBEDF80202782D2E9EFFFFFF5558BE00004A0218FDA6B4FD
              FFFFFF112CFD0B20F5A6B4FCFFFFFFFFFFFFFFFFFFFFFFFFDFE0F504058B2024
              A0FFFFFF6267C30000781735FFA4B6FFFFFFFF2C4AFF000FFF0316FD030FDF02
              0AD10105C30205B7000093000093464DBEFFFFFF4A4EBD00007F0318FF91A6FF
              FFFFFFA9B9FF000EFF0008FF010CFD0410DF0005D10005C30103B60206AEC3C7
              EFFCFCFD1017AA00007FFF00FF5F7AFFFFFFFFFFFFFF5C75FF000BFF000EFF00
              0AFF0618F80007DB0006CC7684E8FFFFFF8F97E2000198FF00FFFF00FF425FFF
              C4CFFFFFFFFFFFFFFF8B9FFF162FFF0414FF0515FD2037F39FADF7FFFFFFE2E5
              FA101ABA000198FF00FFFF00FFFF00FF5975FFD7DFFFFFFFFFFFFFFFFCFCFFD1
              DBFFD4DFFFFFFFFFFFFFFFC6CDF71825CD0001B0FF00FFFF00FFFF00FFFF00FF
              FF00FF5C76FF97A9FDDAE0FFFFFFFFFFFFFFFFFFFFD4DBFD596FF00514D70001
              B0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5C75FF5C79FF62
              7DFF4A66FD203CF50619E5FF00FFFF00FFFF00FFFF00FFFF00FF}
            OnClick = btnDeletarItemPedidoClick
          end
        end
      end
      object grpBxOutros: TGroupBox
        Left = 0
        Top = 478
        Width = 1010
        Height = 75
        Align = alTop
        Caption = 'Outros '
        TabOrder = 4
        DesignSize = (
          1010
          75)
        object lblDescricaoPedido: TLabel
          Left = 10
          Top = 16
          Width = 51
          Height = 13
          Caption = 'Descri'#231#227'o:'
        end
        object mmDescricaoPedido: TPlsMemo
          Left = 10
          Top = 34
          Width = 983
          Height = 33
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          plsCorRecebeFoco = clSilver
          plsEnterMudaCampo = True
        end
      end
      object tlBtnBotoesPedido: TToolBar
        Left = 0
        Top = 0
        Width = 1010
        Height = 41
        ButtonHeight = 36
        ButtonWidth = 54
        Caption = 'tlBotoesCliente'
        Images = imgBotoes
        ShowCaptions = True
        TabOrder = 0
        object tlBtnNovoPedido: TToolButton
          Left = 0
          Top = 2
          Caption = 'Novo'
          ImageIndex = 0
          OnClick = tlBtnNovoPedidoClick
        end
        object tlBtnFinalizarPedido: TToolButton
          Left = 54
          Top = 2
          Caption = 'Finalizar'
          ImageIndex = 2
          OnClick = tlBtnFinalizarPedidoClick
        end
        object tlBtnLimparPedido: TToolButton
          Left = 108
          Top = 2
          Caption = 'Limpar'
          ImageIndex = 7
          OnClick = tlBtnLimparPedidoClick
        end
        object tlBtnRelatoriosPedido: TToolButton
          Left = 162
          Top = 2
          Caption = 'Relat'#243'rios'
          DropdownMenu = pmRelatoriosPedido
          ImageIndex = 8
          Style = tbsDropDown
        end
      end
    end
  end
  object imgBotoes: TImageList
    Left = 924
    Bitmap = {
      494C010109000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A87D7800B781
      8300B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B7818300B7818300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A97F7A00FEE5
      C800FFE3C500FEE1C000FEE0BD00FEDEB900FEDDB700FEDAB200FEDAB100FED9
      AE00FED8AC00FED7AB00B3897B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A97F7A00FEE7
      CC00FEE5C900FEE3C300FEE1C100FEDFBC00FEDEBA00FEDCB60000990000FFD9
      B000FED9AE00FED8AC00B3897B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A97F7B00FEEA
      D300DF993E00DF993E00DF993E00DF993E00FEE1C0004B903C007EA45E006F9C
      5100FEDAB200FED9AF00B3897B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AA807B00FFEB
      D700FFEBD400FEE7CE00FEE7CB00FEE4C600FFE3C300F8DDBA00FFDFBC000099
      000000990000FEDAB100B3897B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2887E00FEF0
      DE00FEEEDB00FEEBD600FEEAD300FEE7CD00FFE6CB00FEE3C500FEE2C200FEE0
      BD00FEDEBB00FEDCB600B3897B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B68B8000FFF1
      E100FEEFDE00FFEDD900FEECD700FEE9D100FEE8CE00FFE5C80000990000FEE2
      C000FEE0BD00FEDEB900B3897B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BE928300FFF5
      E900DF993E00DF993E00DF993E00DF993E00FFEBD5004B9341007EA967006FA0
      5800FEE3C500FEE0BF00B48A7D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2968500FFF5
      EC00FFF4E900FFF2E400FFF0E100FEEEDC00FEEDD800F8E7CE00FEE9D0000099
      000000990000FEE2C200B48B7E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CA9C8800FEF9
      F200FEF8F000FEF5EB00FFF4E800FFF1E200FEF0E000FEEEDA00FEECD800FEEA
      D200FEE8CF00FEE5CA00A0847D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CEA08900FFFA
      F500FFF9F200FFF7ED00FEF6EC00FFF3E600FFF1E300FFEFDE0000990000FEEB
      D500FFEAD300FEE8CD0098817C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7A78C00FFFC
      FA00DF993E00DF993E00DF993E00DF993E00FEF5EA004B9547007EAE71006FA5
      6200FFEDDA00FFEBD400AD827400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DAAB8D00FFFE
      FC00FFFCFA00FEFBF600FFFAF400FFF7F000FEF6ED00F9F2E300FFF3E6000099
      000000990000FFEDD700B8828500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEAD8E00FFFF
      FF00FFFEFE00FFFDFB00FFFCF900FFFAF500FFF9F300FEF7EE00FFF6EC00FFF4
      E700FFF3E500FEF0DF009C837E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEAD8E00FFFF
      FF00FFFFFF00FFFEFC00FEFEFC00FFFCF700FFFAF600FFF9F200FFF7EF00FEF5
      EB00FEF4E800FFF1E3009C837E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000006900000069000000690000006900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000043000000430000003C000000370000003600000036000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000043000000430000003C000000370000003600000036000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000359600003596000035960000359600000000000000
      0000000000000000000000000000000000000000000000000000000000000013
      C000000CBC000B16AD004149B6007C7FC5007C7FC50030319600010272000000
      730000006E000000000000000000000000000000000000000000000000000000
      93000000930000028400151889002B2D8C002A2A83000F0F6200000040000000
      3A0000003A000000000000000000000000000000000000000000000000000000
      93000000930000028400151889002B2D8C002A2A83000F0F6200000040000000
      3A0000003A000000000000000000000000000000000000000000000000000063
      FC00005CF600166EE7004C93E6008CBBED008BBAED004186D7000D58BF00002E
      7F0000266200000000000000000000000000000000000000000000000000000B
      C3001E2DC800D2D6F400FDFDFE00FFFFFF00FFFFFF00F6F6FB00C0C1E0000F0F
      73000000610000000000000000000000000000000000000000000004B3000104
      A7003D45C300B3B7EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A2CC002D2D
      740000003A0000004E00000000000000000000000000000000000004B3000104
      A7003D45C300B3B7EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A2CC002D2D
      740000003A0000004E000000000000000000000000000000000000000000005D
      FF001F7FFC00F0F7FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3EFFC001159
      BC0000339100000000000000000000000000000000000020DB000013D300FBFC
      FE00FFFFFF00C8CAEC00595EC40006079900060696006566BF00CBCBE900FFFF
      FF00E6E6F1000000610000007B0000000000000000000005CC000107BA007F89
      E200FFFFFF00FFFFFF009B9CDB005E5EB7005F5FB600ADADDD00FFFFFF00FFFF
      FF005E5E9B0000003A000000430000000000000000000005CC000107BA007F89
      E200FFFFFF00FFFFFF009B9CDB005E5EB7005F5FB600ADADDD00FFFFFF00FFFF
      FF005E5E9B0000003A00000043000000000000000000036AFF00036AFF00FFFF
      FF00FFFFFF009CC6F800095CE5000251E000014FE0000B5BE100B1D1F800FFFF
      FF00FFFFFF00003596000027640000000000000000000018DC003D54E300FFFF
      FF00FFFFFF000C17B2000009A70000049D00000298000000930010109A00FFFF
      FF00FFFFFF0018187A000000710000000000000000000005CC006472E500FFFF
      FF00D7DAF5002427B3000000830004079C0006068B0000006A0031319C00E6E6
      F700FFFFFF0036367D000000430000000000000000000005CC006472E500FFFF
      FF00D7DAF5002427B30000008300000072000000680000006A0031319C00E6E6
      F700FFFFFF0036367D000000430000000000000000000166FF0062ABFF00FFFF
      FF00D9E9FC00065AE6000557E500085AE3000352E100014FE000014FDE00D7E6
      FB00FFFFFF001B63BD0000348F0000000000000000004A64EA00FFFFFF00BDC5
      F2000622D0000016C1000012BA00000CAD000009A70000049D00000298000B0B
      9900C7C7E700E1E1EC0015158300000000000007E8000B1BD800F8F8FF00F2F3
      FC001621C40000009F0004079C0004058F000102760001017400000061002626
      9500FFFFFF00C3C3DB000101500000004B000007E8000B1BD800F8F8FF00F2F3
      FC001621C40000009F0004079C00898FD800797BCD0001027500000061002626
      9500FFFFFF00C3C3DB000101500000004B00000000005EA9FF00FFFFFF0073B1
      FA000D66EF00FCFEFF0074ACF4000659E6000C5FE60087B6F300E0EDFC00014F
      E0008EBCF400FCFCFC00286FC70000000000002AF20090A2F700FFFFFF003D59
      E7000021D800001BCB000017C4000010B600000DB0000008A40000069F000001
      96005151B500FFFFFF006464AD00000082000007E8004358F000FFFFFF006476
      ED000002C4000001B6000407AE00070787000202750000017E0000006E000000
      66008484C900FFFFFF002727880000004B000007E8004358F000FFFFFF006476
      ED000002C4000001B6000407AE00E8EDFD00CACFF0000001800000006E000000
      66008484C900FFFFFF002727880000004B000D73FF00B5D8FF00FFFFFF00116D
      F3000F6AF200BFDAFB00FFFFFF00095DE900075CE700FFFFFF008AB8F4000252
      E1001365E500FFFFFF0078ABE20000399300002DFB00EDF1FF00FFFFFF00002C
      F100002AEC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BEC1EB000008
      A40002079F00FFFFFF00C3C6EA00000074000009F3007F94FA00FFFFFF001932
      F0000512E000F3F5FD00F3F5FD00F3F5FD00EBEDF800EBEDF800EBEDF8000202
      78002D2E9E00FFFFFF005558BE0000004A000009F3007F94FA00FFFFFF001932
      F0000512E0007587EA00979CE800F3F5FD00EBEDF8009194DB006A6DC7000202
      78002D2E9E00FFFFFF005558BE0000004A000E74FF00FBFCFF00FFFFFF001675
      F7001B78F600116DF300227AF400F3F8FE00E7F2FE000C63E900075BE7000557
      E5000455E300FFFFFF00E3EFFC000058E7000336FF00F7F8FF00FFFFFF000030
      F800002EF300BEC8F900FFFFFF00FFFFFF00FFFFFF00D6D9F5001D2EC100000C
      AD00010BA700FFFFFF00CBCCEC000002A3000218FD00A6B4FD00FFFFFF00112C
      FD000B20F500A6B4FC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFE0F5000405
      8B002024A000FFFFFF006267C300000078000218FD00A6B4FD00FFFFFF00112C
      FD000B20F500F7FAFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFE0F5000405
      8B002024A000FFFFFF006267C300000078001378FF00FEFFFF00FFFFFF001878
      FB001676F8001774F600126EF400FFFFFF00FBFEFF000C65ED00095FEA00065A
      E6000558E600FFFFFF00EDF6FF00005CED00466BFF00EDF1FF00FFFFFF001342
      FF000033FF000030F8004767F600FFFFFF00FCFCFF00001FD500001CCE000015
      C1002634C200FFFFFF00A1A6E3000008AD001735FF00A4B6FF00FFFFFF002C4A
      FF00000FFF000316FD00030FDF00020AD1000105C3000205B700000093000000
      9300464DBE00FFFFFF004A4EBD0000007F001735FF00A4B6FF00FFFFFF002C4A
      FF00000FFF00142FF8002B3EED00E6EBFD00D2D7F700232DCA00121EB9000000
      9300464DBE00FFFFFF004A4EBD0000007F001D7FFF00F8FCFF00FFFFFF001C7E
      FC001C7DFC009ECBFE00FFFFFF001472F6001F79F600FFFFFF0079B2F8000B63
      ED000A60EB00FFFFFF00B7DAFF00005EF4000838FF00E1E7FF00FFFFFF00728F
      FF000031FF000032FD000031FA00F7F8FF00738AF4000024DF000021D9000019
      CA008E96E100FFFFFF005965D700000000000318FF0091A6FF00FFFFFF00A9B9
      FF00000EFF000008FF00010CFD000410DF000005D1000005C3000103B6000206
      AE00C3C7EF00FCFCFD001017AA0000007F000318FF0091A6FF00FFFFFF00A9B9
      FF00000EFF000008FF000515F800EBF0FF00CFD5F7000108C7000001B3000206
      AE00C3C7EF00FCFCFD001017AA0000007F003D95FF00E9F4FF00FFFFFF002D8A
      FF001D7FFE00FFFFFF00A0CCFE001676F8001674F700C4DEFC00FFFFFF000D67
      EE002A7FF300FFFFFF0073B5FF00005EF4000000000095AAFF00FEFEFF00FFFF
      FF00DFE5FF000031FF000033FF000032FD000031FA00002CF1000027E900F1F3
      FD00FFFFFF00727FDE000007BE0000000000000000005F7AFF00FFFFFF00FFFF
      FF005C75FF00000BFF00000EFF00000AFF000618F8000007DB000006CC007684
      E800FFFFFF008F97E2000001980000000000000000005F7AFF00FFFFFF00FFFF
      FF005C75FF00000BFF00000EFF001E3BFF001A35F3000007DB000006CC007684
      E800FFFFFF008F97E20000019800000000000000000097C9FF00FEFFFF00FFFF
      FF0075B6FF001E80FF001D7FFF001C7DFC001A79FB001676F8001673F700BBDD
      FF00FFFFFF0097C9FF000065FF0000000000000000006281FF00E1E7FF00FFFF
      FF00FFFFFF005475FF000535FF000032FF000032FF000D37F6006981F500FFFF
      FF00FFFFFF000F23CB000011C3000000000000000000425FFF00C4CFFF00FFFF
      FF00FFFFFF008B9FFF00162FFF000414FF000515FD002037F3009FADF700FFFF
      FF00E2E5FA00101ABA00000198000000000000000000425FFF00C4CFFF00FFFF
      FF00FFFFFF008B9FFF00162FFF000414FF000515FD002037F3009FADF700FFFF
      FF00E2E5FA00101ABA0000019800000000000000000054A4FF00E1F0FF00FFFF
      FF00FFFFFF001F81FF001E80FF001D7EFE001C7DFE001879FA001B79FA00FFFF
      FF00FFFFFF00177BFF000065FF000000000000000000000000007590FF00F3F6
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B8C2
      F600223ADD0000000000000000000000000000000000000000005975FF00D7DF
      FF00FFFFFF00FFFFFF00FCFCFF00D1DBFF00D4DFFF00FFFFFF00FFFFFF00C6CD
      F7001825CD000001B000000000000000000000000000000000005975FF00D7DF
      FF00FFFFFF00FFFFFF00FCFCFF00D1DBFF00D4DFFF00FFFFFF00FFFFFF00C6CD
      F7001825CD000001B000000000000000000000000000000000005BA6FF00F2F8
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D1E7
      FF00459AFF00066CFF000000000000000000000000000000000000000000849C
      FF00CED7FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFE00CAD1FB00082B
      E200001ADC000000000000000000000000000000000000000000000000005C76
      FF0097A9FD00DAE0FF00FFFFFF00FFFFFF00FFFFFF00D4DBFD00596FF0000514
      D7000001B0000000000000000000000000000000000000000000000000005C76
      FF0097A9FD00DAE0FF00FFFFFF00FFFFFF00FFFFFF00D4DBFD00596FF0000514
      D7000001B00000000000000000000000000000000000000000000000000078B8
      FF00D0E7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7F3FF001F81
      FF00056BFF000000000000000000000000000000000000000000000000000000
      0000000000007F98FF006585FF006987FF005B7CFF003559F7003355F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005C75FF005C79FF00627DFF004A66FD00203CF5000619E5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005C75FF005C79FF00627DFF004A66FD00203CF5000619E5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005AA6FF005AA6FF0060AAFF0052A1FF002C8AFF00197DFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000006900000069000000690000006900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000006900000069000000690000006900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000004EAB00004EAB00004EAB00004EAB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000004EAB00004EAB00004EAB00004EAB00000000000000
      0000000000000000000000000000000000000000000000000000000000000013
      C000000CBC000B16AD004149B6007C7FC5007C7FC50030319600010272000000
      730000006E000000000000000000000000000000000000000000000000000013
      C000000CBC000B16AD004149B6007C7FC5007C7FC50030319600010272000000
      730000006E00000000000000000000000000000000000000000000000000007D
      FD000077F8002988ED0067A9EC00A3CAF100A2C9F1005C9DE0001C73CD000047
      9700003D7C00000000000000000000000000000000000000000000000000007D
      FD000077F8002988ED0067A9EC00A3CAF100A2C9F1005C9DE0001C73CD000047
      9700003D7C00000000000000000000000000000000000000000000000000000B
      C3001E2DC800D2D6F400FDFDFE00FFFFFF00FFFFFF00F6F6FB00C0C1E0000F0F
      730000006100000000000000000000000000000000000000000000000000000B
      C3001E2DC800D2D6F400FDFDFE00FFFFFF00FFFFFF00F6F6FB00C0C1E0000F0F
      7300000061000000000000000000000000000000000000000000000000000078
      FF003597FD00F4F9FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAF3FD002274
      CB00004CA7000000000000000000000000000000000000000000000000000078
      FF003597FD00F4F9FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAF3FD002274
      CB00004CA700000000000000000000000000000000000020DB000013D300FBFC
      FE00FFFFFF00FBFCFE00B3B7E9005B5CBE005B5CBE00CBCCEC00FFFFFF00FFFF
      FF00E6E6F1000000610000007B0000000000000000000020DB000013D300FBFC
      FE00FFFFFF00FBFCFE00B3B7E9005758BE005759BF00CBCCEC00FFFFFF00FFFF
      FF00E6E6F1000000610000007B0000000000000000000A84FF000A84FF00FFFF
      FF00FFFFFF00E3F1FF008CC2FB00489BF1003A93EF0099C7F700EEF7FF00FFFF
      FF00FFFFFF00004EAB00003E7E0000000000000000000A84FF000A84FF00FFFF
      FF00FFFFFF00B0D3FA001577EB00076CE700056AE7001876E800C2DCFA00FFFF
      FF00FFFFFF00004EAB00003E7E0000000000000000000018DC003D54E300FFFF
      FF00FFFFFF00464ECA000004AD00000099000000930006069A006060BF00FFFF
      FF00FFFFFF0018187A000000710000000000000000000018DC003D54E300FFFF
      FF00FFFFFF00464ECA000509AF001113AF001217A6001818A2006262C000FFFF
      FF00FFFFFF0018187A000000710000000000000000000380FF007CBDFF00FFFF
      FF00FFFFFF001B89FE00006BF800C5E0FC00298BEE00006DE7002988ED00FFFF
      FF00FFFFFF002F7DCC00004DA50000000000000000000380FF007CBDFF00FFFF
      FF00E2EEFD000F75EC000D72EB001375EA00086DE800056AE700056AE600E0EC
      FC00FFFFFF002F7DCC00004DA50000000000000000004A64EA00FFFFFF00EDEF
      FA00263EDA000017C7000002BA00FBFBFE00FBFBFE000000990000009A004545
      B600FAFAFD00E1E1EC001515830000000000000000004A64EA00FFFFFF00EDEF
      FA00263EDA00071EC900151EC4001821BF00272AB0001C1CA2001212A1004545
      B600FAFAFD00E1E1EC0015158300000000000000000079BBFF00FFFFFF00C7E3
      FF001087FF0053A8FF00EEF7FF00FFFFFF00CAE5FF000073EB000073E800147D
      EB00DCEDFD00FDFDFD003F89D400000000000000000079BBFF00FFFFFF008CC2
      FB001B80F300B0D3FA00FFFFFF0061A3F20067A7F200FFFFFF00A1C7F600056A
      E700A4CBF700FDFDFD003F89D40000000000002AF20090A2F700FFFFFF007B8E
      F0000013DB000017CF000002C300FFFFFF00FFFFFF000000A10000009E000000
      9500A2A3D800FFFFFF006464AD0000008200002AF20090A2F700FFFFFF007B8E
      F0000013DB00041BCF000C15C7001823BE002124AF0010109F000606A0000000
      9500A2A3D800FFFFFF006464AD00000082001B8CFF00C5E1FF00FFFFFF005AAC
      FF00027FFF00F7FBFF00FFFFFF00FFFFFF00FCFEFF000073F2000075ED00006A
      E6006BAFF400FFFFFF0091BDE9000053A9001B8CFF00C5E1FF00FFFFFF002287
      F6001F84F500FFFFFF005DA4F4001478EE001176ED00569DF000FFFFFF00076D
      E800247FEB00FFFFFF0091BDE9000053A900002DFB00EDF1FF00FFFFFF000430
      F5000022ED00F1F3FD00F0F0FC00FFFFFF00FFFFFF00F0F0FA00F0F0FA000000
      9C001618A600FFFFFF00C3C6EA0000007400002DFB00EDF1FF00FFFFFF000430
      F5000022ED00F0F2FD00E6E6FB00DDDDF300DBDBF400E7E7F700EFEFFA000000
      9C001618A600FFFFFF00C3C6EA00000074001D8DFF00FCFDFF00FFFFFF002A94
      FF00CEE6FF00F9FCFF007CBDFF001087FF00DBEDFF000B83FF000079FA000075
      EF000477EC00FFFFFF00EAF3FD000073ED001D8DFF00FCFDFF00FFFFFF00298E
      F9002F91F80067ADF9002A8BF6001B80F200187DF1001379EE0060A4F3000D72
      EB000B70EA00FFFFFF00EAF3FD000073ED000336FF00F7F8FF00FFFFFF000233
      FD000026F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      A5000C12AA00FFFFFF00CBCCEC000002A3000336FF00F7F8FF00FFFFFF000233
      FD000026F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      A5000C12AA00FFFFFF00CBCCEC000002A3002591FF00FEFFFF00FFFFFF002591
      FF0049A3FF0065B2FF001087FF000782FF005AACFF0057AAFF000078FF000079
      F7000379F100FFFFFF00F1F8FF000077F1002591FF00FEFFFF00FFFFFF002C91
      FC00298FFA006BB0FA002388F7001D83F6001C81F300197FF1001E7FF0001075
      EC000E73EC00FFFFFF00F1F8FF000077F100466BFF00EDF1FF00FFFFFF002652
      FF00002EFF000434F9000421F000FFFFFF00FFFFFF000413CF00041CCA000004
      B8004C57CC00FFFFFF00A1A6E3000008AD00466BFF00EDF1FF00FFFFFF002652
      FF00002EFF000434F9000724EE002239DB002536DA000413CE00041CCA000004
      B8004C57CC00FFFFFF00A1A6E3000008AD003297FF00FAFDFF00FFFFFF003D9D
      FF003097FF002E96FF002A94FF00218FFF001388FF00DFEFFF003D9DFF00007C
      FF002791FF00FFFFFF00C7E3FF000079F7003297FF00FAFDFF00FFFFFF003196
      FD003095FD00F8FCFF005BA9FC00FFFFFF00E4F1FE002788F4001E83F400187D
      F100177BF000FFFFFF00C7E3FF000079F7000838FF00E1E7FF00FFFFFF008FA6
      FF000027FF000031FF00001FFA00FFFFFF00FFFFFF000011D7000019D200000F
      C400B3B7E900FFFFFF005965D700000000000838FF00E1E7FF00FFFFFF008FA6
      FF000027FF000031FF000B2BF6001E3DEC00011ADF000012D5000019D200000F
      C400B3B7E900FFFFFF005965D7000000000057AAFF00EEF7FF00FFFFFF0079BB
      FF002792FF003398FF003097FF002591FF00218FFF006DB5FF0099CCFF00007A
      FF0082C0FF00FFFFFF008CC5FF000079F70057AAFF00EEF7FF00FFFFFF0045A1
      FF003297FE00CAE4FE00F8FBFF00FFFFFF00FFFFFF00D3E7FE0060A8F9001B81
      F2004297F600FFFFFF008CC5FF000079F7000000000095AAFF00FEFEFF00FFFF
      FF00DFE5FF000027FF00002EFF000F3FFE000F3CF9000022EA000017E100F1F3
      FD00FFFFFF00727FDE000007BE00000000000000000095AAFF00FEFEFF00FFFF
      FF00DFE5FF000229FF000832FF001B46FF001838EE000222E9000017E100F1F3
      FD00FFFFFF00727FDE000007BE000000000000000000ACD5FF00FEFFFF00FFFF
      FF00BDDEFF002993FF003297FF003297FF002E95FF001E8DFF001F8EFF00CAE5
      FF00FFFFFF00ACD5FF00017FFF000000000000000000ACD5FF00FEFFFF00FFFF
      FF008EC6FF003398FF003297FF00FFFFFF00C2DFFE00298FFA00288CF900CAE5
      FF00FFFFFF00ACD5FF00017FFF0000000000000000006281FF00E1E7FF00FFFF
      FF00FFFFFF006A86FF000B38FF000021FF000021FF001B3FF3008497F500FFFF
      FF00FFFFFF000F23CB000011C30000000000000000006281FF00E1E7FF00FFFF
      FF00FFFFFF006C87FF00113DFF000023FF000021FC001B3FF3008497F500FFFF
      FF00FFFFFF000F23CB000011C30000000000000000006FB7FF00E8F4FF00FFFF
      FF00FFFFFF005AACFF002D95FF002993FF002792FF002792FF005EAEFF00FFFF
      FF00FFFFFF002A94FF00027FFF0000000000000000006FB7FF00E8F4FF00FFFF
      FF00FFFFFF003599FF003C9CFF007ABBFE003095FE002C92FB002F92FB00FFFF
      FF00FFFFFF002A94FF00027FFF000000000000000000000000007590FF00F3F6
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B8C2
      F600223ADD0000000000000000000000000000000000000000007590FF00F3F6
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B8C2
      F600223ADD00000000000000000000000000000000000000000076B9FF00F5FA
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCED
      FF0060AFFF000F86FF000000000000000000000000000000000076B9FF00F5FA
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCED
      FF0060AFFF000F86FF000000000000000000000000000000000000000000849C
      FF00CED7FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFE00CAD1FB00082B
      E200001ADC00000000000000000000000000000000000000000000000000849C
      FF00CED7FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFE00CAD1FB00082B
      E200001ADC0000000000000000000000000000000000000000000000000091C8
      FF00DBEDFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDF6FF003599
      FF000E85FF0000000000000000000000000000000000000000000000000091C8
      FF00DBEDFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDF6FF003599
      FF000E85FF000000000000000000000000000000000000000000000000000000
      0000000000007F98FF006585FF006987FF005B7CFF003559F7003355F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F98FF006585FF006987FF005B7CFF003559F7003355F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000075B9FF0075B9FF007BBCFF006DB5FF0044A1FF002D95FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000075B9FF0075B9FF007BBCFF006DB5FF0044A1FF002D95FF000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C001000000000000C001000000000000
      C001000000000000C001000000000000C001000000000000C001000000000000
      C001000000000000C001000000000000C001000000000000C001000000000000
      C001000000000000C001000000000000C001000000000000C001000000000000
      C001000000000000FFFF000000000000FC3FF81FF81FFC3FE007E007E007E007
      E007C003C003E007800180018001800180018001800180018001000000008001
      0000000000000000000000000000000000000000000000000000000000000000
      000100000000000080018001800180018001800180018001C007C003C003C003
      E007E007E007E007F81FF81FF81FF81FFC3FFC3FFC3FFC3FE007E007E007E007
      E007E007E007E007800180018001800180018001800180018001800180018001
      0000000000000000000000000000000000000000000000000000000000000000
      000100010000000080018001800180018001800180018001C007C007C003C003
      E007E007E007E007F81FF81FF81FF81F00000000000000000000000000000000
      000000000000}
  end
  object ApplicationEvents: TApplicationEvents
    OnHint = ApplicationEventsHint
    OnMessage = ApplicationEventsMessage
    Left = 896
  end
  object cdsItensPedidoUnidadeComboBox: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 490
    object cdsItensPedidoUnidadeComboBoxunidade: TStringField
      FieldName = 'unidade'
      Size = 10
    end
  end
  object cdsItensPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 464
    object cdsItensPedidoquantidade: TIntegerField
      FieldName = 'quantidade'
    end
    object cdsItensPedidounidade: TStringField
      FieldName = 'unidade'
      Size = 10
    end
    object cdsItensPedidodescricao: TStringField
      FieldName = 'descricao'
      Size = 1000
    end
    object cdsItensPedidovalor_unitario: TStringField
      FieldName = 'valor_unitario'
      Size = 50
    end
    object cdsItensPedidovalor_total: TStringField
      FieldName = 'valor_total'
      Size = 50
    end
    object cdsItensPedidocomplemento: TStringField
      FieldName = 'complemento'
      Size = 1000
    end
    object cdsItensPedidounidadeCombo: TStringField
      FieldKind = fkLookup
      FieldName = 'unidadeCombo'
      LookupDataSet = cdsItensPedidoUnidadeComboBox
      LookupKeyFields = 'unidade'
      LookupResultField = 'unidade'
      KeyFields = 'unidade'
      LookupCache = True
      Size = 10
      Lookup = True
    end
    object cdsItensPedidostatus: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'status'
      Calculated = True
    end
  end
  object dsItensPedido: TDataSource
    DataSet = cdsItensPedido
    Left = 64
    Top = 464
  end
  object pmRelatoriosPedido: TPopupMenu
    Left = 248
    Top = 24
    object mitRelatorioPedido: TMenuItem
      Caption = 'Pedido...'
      OnClick = mitRelatorioPedidoClick
    end
  end
end
