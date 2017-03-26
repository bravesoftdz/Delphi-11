object frmPrincipal: TfrmPrincipal
  Left = 210
  Top = 165
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'UBA INI'
  ClientHeight = 565
  ClientWidth = 885
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object lblTipoBanco: TLabel
    Left = 552
    Top = 136
    Width = 68
    Height = 13
    Caption = 'TIPO BANCO:'
  end
  object lblBaseDados: TLabel
    Left = 704
    Top = 136
    Width = 87
    Height = 13
    Caption = 'BASE DE DADOS'
  end
  object lblUsuario: TLabel
    Left = 584
    Top = 224
    Width = 52
    Height = 13
    Caption = 'USU'#193'RIO:'
  end
  object lblSenha: TLabel
    Left = 584
    Top = 248
    Width = 40
    Height = 13
    Caption = 'SENHA:'
  end
  object lblLotacao: TLabel
    Left = 584
    Top = 288
    Width = 53
    Height = 13
    Caption = 'LOTA'#199#195'O:'
  end
  object Label2: TLabel
    Left = 114
    Top = 236
    Width = 158
    Height = 13
    Caption = 'Posiciona '#218'ltimo Log Autom'#225'tico:'
  end
  object plsCbBxTipoBanco: TPlsComboBox
    Left = 544
    Top = 152
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    plsCorRecebeFoco = clSilver
  end
  object plsCbBxBaseDados: TPlsComboBox
    Left = 704
    Top = 152
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 1
    plsCorRecebeFoco = clSilver
  end
  object plsEdUsuario: TPlsEdit
    Left = 640
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'plsEdUsuario'
    plsCorRecebeFoco = clSilver
  end
  object plsEdSenha: TPlsEdit
    Left = 640
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'plsEdSenha'
    plsCorRecebeFoco = clSilver
  end
  object plsEdLotacao: TPlsEdit
    Left = 640
    Top = 264
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'plsEdLotacao'
    plsCorRecebeFoco = clSilver
  end
  object grpBxLocalSaida: TGroupBox
    Left = 536
    Top = 336
    Width = 289
    Height = 89
    Caption = 'Local de Sa'#237'da do .INI '
    TabOrder = 5
    object lblNome: TLabel
      Left = 24
      Top = 40
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object lblDiretorio: TLabel
      Left = 24
      Top = 72
      Width = 42
      Height = 13
      Caption = 'Diret'#243'rio:'
    end
    object plsEdDiretorio: TPlsEdit
      Left = 88
      Top = 76
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'plsEdDiretorio'
      plsCorRecebeFoco = clSilver
    end
    object plsEdNome: TPlsEdit
      Left = 88
      Top = 36
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'plsEdNome'
      plsCorRecebeFoco = clSilver
    end
  end
  object PageControl: TPageControl
    Left = 56
    Top = 16
    Width = 785
    Height = 513
    ActivePage = tbSheetServidor
    TabOrder = 6
    object tbSheetServidor: TTabSheet
      Caption = 'Servidor'
      object lblGUIDServidor: TLabel
        Left = 2
        Top = 20
        Width = 72
        Height = 13
        Caption = 'GUID Servidor:'
      end
      object lblNomeServidor: TLabel
        Left = 392
        Top = 20
        Width = 73
        Height = 13
        Caption = 'Nome Servidor:'
      end
      object lblUsuarioConexaoPro: TLabel
        Left = 2
        Top = 50
        Width = 103
        Height = 13
        Caption = 'Usu'#225'rio Conex'#227'o Pro:'
      end
      object lblSenhaConexaoPro: TLabel
        Left = 355
        Top = 50
        Width = 98
        Height = 13
        Caption = 'Senha Conex'#227'o Pro:'
      end
      object lblUsuarioConexaoSGC: TLabel
        Left = 2
        Top = 80
        Width = 109
        Height = 13
        Caption = 'Usu'#225'rio Conex'#227'o SGC:'
      end
      object lblSenhaConexaoSGC: TLabel
        Left = 355
        Top = 80
        Width = 104
        Height = 13
        Caption = 'Senha Conex'#227'o SGC:'
      end
      object lblNomeComputador: TLabel
        Left = 2
        Top = 110
        Width = 91
        Height = 13
        Caption = 'Nome Computador:'
      end
      object lblTipoConexao: TLabel
        Left = 314
        Top = 110
        Width = 69
        Height = 13
        Caption = 'Tipo Conex'#227'o:'
      end
      object lblPorta: TLabel
        Left = 586
        Top = 110
        Width = 28
        Height = 13
        Caption = 'Porta:'
      end
      object lblNomeExecutavelServidor: TLabel
        Left = 2
        Top = 140
        Width = 129
        Height = 13
        Caption = 'Nome Execut'#225'vel Servidor:'
      end
      object lblTimeOutRequisicaoCliente: TLabel
        Left = 2
        Top = 170
        Width = 134
        Height = 13
        Caption = 'TimeOut Requisi'#231#227'o Cliente:'
      end
      object lblPodeBalancear: TLabel
        Left = 306
        Top = 170
        Width = 79
        Height = 13
        Caption = 'Pode Balancear:'
      end
      object lblUsuarioConexaoEst: TLabel
        Left = 2
        Top = 200
        Width = 102
        Height = 13
        Caption = 'Usu'#225'rio Conex'#227'o Est:'
      end
      object lblDesabilitaRecalculaTotal: TLabel
        Left = 547
        Top = 170
        Width = 127
        Height = 13
        Caption = 'Desabilita Recalcula Total:'
      end
      object lblSenhaConexaoEst: TLabel
        Left = 355
        Top = 200
        Width = 97
        Height = 13
        Caption = 'Senha Conex'#227'o Est:'
      end
      object plsEdGUIDServidor: TPlsEdit
        Left = 114
        Top = 14
        Width = 266
        Height = 21
        TabOrder = 0
        Text = '{F67F7610-BDB7-4258-9B13-003C19084FDC}'
        plsCorRecebeFoco = clSilver
      end
      object plsEdNomeServidor: TPlsEdit
        Left = 468
        Top = 14
        Width = 273
        Height = 21
        TabOrder = 1
        Text = 'sg5Servidor.fsgServidorDM'
        plsCorRecebeFoco = clSilver
      end
      object plsEdUsuarioConexaoPro: TPlsEdit
        Left = 114
        Top = 44
        Width = 230
        Height = 21
        TabOrder = 3
        Text = 'SAJPRO'
        plsCorRecebeFoco = clSilver
      end
      object plsEdSenhaConexaoPro: TPlsEdit
        Left = 461
        Top = 44
        Width = 280
        Height = 21
        TabOrder = 4
        Text = 'A46CE3D5968C9BDC859792868291945657949287'
        plsCorRecebeFoco = clSilver
      end
      object plsEdUsuarioConexaoSGC: TPlsEdit
        Left = 114
        Top = 74
        Width = 230
        Height = 21
        TabOrder = 6
        Text = 'SAJPRO'
        plsCorRecebeFoco = clSilver
      end
      object plsEdSenhaConexaoSGC: TPlsEdit
        Left = 461
        Top = 74
        Width = 280
        Height = 21
        TabOrder = 7
        Text = 'A46CE3D5968C9BDC859792868291945657949287'
        plsCorRecebeFoco = clSilver
      end
      object plsEdNomeComputador: TPlsEdit
        Left = 100
        Top = 104
        Width = 165
        Height = 21
        TabOrder = 9
        Text = 'localhost'
        plsCorRecebeFoco = clSilver
      end
      object plsEdTipoConexao: TPlsEdit
        Left = 386
        Top = 104
        Width = 127
        Height = 21
        TabOrder = 11
        Text = 'socket'
        plsCorRecebeFoco = clSilver
      end
      object plsEdPorta: TPlsEdit
        Left = 624
        Top = 104
        Width = 118
        Height = 21
        MaxLength = 5
        TabOrder = 13
        Text = '211'
        plsCorRecebeFoco = clSilver
        plsCaracteresAceitos = numeros
      end
      object plsEdNomeExecutavelServidor: TPlsEdit
        Left = 136
        Top = 134
        Width = 200
        Height = 21
        TabOrder = 15
        Text = 'fsgServidor.exe'
        plsCorRecebeFoco = clSilver
      end
      object plsEdSenhaConexaoEst: TPlsEdit
        Left = 461
        Top = 194
        Width = 280
        Height = 21
        TabOrder = 24
        Text = 'A79EE0D5A7D1D4DF859792868291945657949287'
        plsCorRecebeFoco = clSilver
      end
      object plsEdUsuarioConexaoEst: TPlsEdit
        Left = 114
        Top = 194
        Width = 230
        Height = 21
        TabOrder = 23
        Text = 'saj'
        plsCorRecebeFoco = clSilver
      end
      object ckBxGUID_NomeServidor: TCheckBox
        Left = 746
        Top = 20
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object ckBxUsuarioSenhaPRO: TCheckBox
        Left = 746
        Top = 50
        Width = 17
        Height = 17
        TabOrder = 5
      end
      object ckBxUsuarioSenhaSGC: TCheckBox
        Left = 746
        Top = 80
        Width = 17
        Height = 17
        TabOrder = 8
      end
      object ckBxNomeComputador: TCheckBox
        Left = 270
        Top = 110
        Width = 17
        Height = 17
        TabOrder = 10
      end
      object ckBxTipoConexao: TCheckBox
        Left = 517
        Top = 110
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 12
      end
      object ckBxPorta: TCheckBox
        Left = 746
        Top = 110
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 14
      end
      object ckBxNomeExecutavelServidor: TCheckBox
        Left = 340
        Top = 140
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 16
      end
      object plsCbBxTimeOutRequisicaoCliente: TPlsComboBox
        Left = 148
        Top = 164
        Width = 60
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 17
        Text = 'N'
        Items.Strings = (
          'N'
          'S')
        plsCorRecebeFoco = clSilver
      end
      object ckBxTimeOutRequisicaoCliente: TCheckBox
        Left = 211
        Top = 170
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 18
      end
      object plsCbBxPodeBalancear: TPlsComboBox
        Left = 396
        Top = 164
        Width = 60
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 19
        Text = 'N'
        Items.Strings = (
          'N'
          'S')
        plsCorRecebeFoco = clSilver
      end
      object ckBxPodeBalancear: TCheckBox
        Left = 458
        Top = 170
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 20
      end
      object plsCbBxDesabilitaRecalculaTotal: TPlsComboBox
        Left = 681
        Top = 164
        Width = 60
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 21
        Text = 'S'
        Items.Strings = (
          'N'
          'S')
        plsCorRecebeFoco = clSilver
      end
      object ckBxDesabilitaRecalculaTotal: TCheckBox
        Left = 746
        Top = 170
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 22
      end
      object ckBxUsuarioSenhaEST: TCheckBox
        Left = 746
        Top = 200
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 25
      end
    end
    object tbSheetFluxoTrabalho: TTabSheet
      Caption = 'Fluxo Trabalho'
      ImageIndex = 1
      object lblUsuarioParaLogarEventosFluxo: TLabel
        Left = 16
        Top = 20
        Width = 164
        Height = 13
        Caption = 'Usu'#225'rio Para Logar Eventos Fluxo:'
      end
      object plsEdUsuarioParaLogarEventosFluxo: TPlsEdit
        Left = 185
        Top = 14
        Width = 266
        Height = 21
        TabOrder = 0
        Text = 'SOFTPLAN'
        plsCorRecebeFoco = clSilver
      end
      object ckBxUsuarioParaLogarEventosFluxo: TCheckBox
        Left = 456
        Top = 20
        Width = 17
        Height = 17
        TabOrder = 1
      end
    end
    object tbSheetServidoresAplicacao: TTabSheet
      Caption = 'Servidores de Aplica'#231#227'o'
      ImageIndex = 2
      object lblDesenvolvimento: TLabel
        Left = 2
        Top = 80
        Width = 85
        Height = 13
        Caption = 'Desenvolvimento:'
      end
      object lblNomeComputadorServidorAplicacao: TLabel
        Left = 2
        Top = 20
        Width = 106
        Height = 13
        Caption = 'Nome do Computador:'
      end
      object lblBaseTestesTJSP: TLabel
        Left = 2
        Top = 110
        Width = 91
        Height = 13
        Caption = 'Base Testes TJSP:'
      end
      object lblIP: TLabel
        Left = 2
        Top = 50
        Width = 261
        Height = 13
        Caption = 'CONFIGURANDO IP DO SERVIDOR DE APLICA'#199#195'O:'
      end
      object lblBaseHomologacaoTJSP: TLabel
        Left = 2
        Top = 140
        Width = 125
        Height = 13
        Caption = 'Base Homologa'#231#227'o TJSP:'
      end
      object lblBaseProducaoTJSP: TLabel
        Left = 2
        Top = 170
        Width = 105
        Height = 13
        Caption = 'Base Produ'#231#227'o TJSP:'
      end
      object lblMaquinaTestesTJSP: TLabel
        Left = 2
        Top = 200
        Width = 134
        Height = 13
        Caption = 'M'#225'quina de testes do TJSP:'
      end
      object lblBaseProducaoTJSC: TLabel
        Left = 2
        Top = 230
        Width = 105
        Height = 13
        Caption = 'Base Produ'#231#227'o TJSC:'
      end
      object plsEdDesenvolvimento: TPlsEdit
        Left = 140
        Top = 74
        Width = 121
        Height = 21
        TabOrder = 0
        Text = '127.0.0.1'
        plsCorRecebeFoco = clSilver
      end
      object plsEdBaseTestesTJSP: TPlsEdit
        Left = 140
        Top = 104
        Width = 121
        Height = 21
        TabOrder = 1
        Text = '10.33.192.112'
        plsCorRecebeFoco = clSilver
      end
      object plsEdBaseHomologacaoTJSP: TPlsEdit
        Left = 140
        Top = 134
        Width = 121
        Height = 21
        TabOrder = 2
        Text = '10.33.192.166'
        plsCorRecebeFoco = clSilver
      end
      object plsEdBaseProducaoTJSP: TPlsEdit
        Left = 140
        Top = 164
        Width = 121
        Height = 21
        TabOrder = 3
        Text = '10.33.192.127'
        plsCorRecebeFoco = clSilver
      end
      object plsEdMaquinaTestesTJSP: TPlsEdit
        Left = 140
        Top = 194
        Width = 121
        Height = 21
        TabOrder = 4
        Text = '10.33.88.119'
        plsCorRecebeFoco = clSilver
      end
      object plsEdBaseProducaoTJSC: TPlsEdit
        Left = 140
        Top = 224
        Width = 121
        Height = 21
        TabOrder = 5
        Text = '10.17.6.130'
        plsCorRecebeFoco = clSilver
      end
      object plsEdNomeComputadorServidorAplicacao: TPlsEdit
        Left = 140
        Top = 14
        Width = 357
        Height = 21
        TabOrder = 6
        Text = 'plsEdNomeComputadorServidorAplicacao'
      end
      object ckBxNomeComputadorServidorAplicacao: TCheckBox
        Left = 504
        Top = 20
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
      object rdBtnIPDesenvolvimento: TRadioButton
        Left = 264
        Top = 80
        Width = 16
        Height = 17
        Checked = True
        TabOrder = 8
        TabStop = True
      end
      object rdBtnIPBaseTestesTJSP: TRadioButton
        Left = 264
        Top = 110
        Width = 16
        Height = 17
        TabOrder = 9
      end
      object rdBtnIPBaseHomologacaoTJSP: TRadioButton
        Left = 264
        Top = 140
        Width = 16
        Height = 17
        TabOrder = 10
      end
      object rdBtnIPBaseProducaoTJSP: TRadioButton
        Left = 264
        Top = 170
        Width = 16
        Height = 17
        TabOrder = 11
      end
      object rdBtnIPMaquinaTestesTJSP: TRadioButton
        Left = 264
        Top = 200
        Width = 16
        Height = 17
        TabOrder = 12
      end
      object rdBtnIPBaseProducaoTJSC: TRadioButton
        Left = 264
        Top = 230
        Width = 16
        Height = 17
        TabOrder = 13
      end
    end
    object tbSheetFluxo: TTabSheet
      Caption = 'Fluxo'
      ImageIndex = 3
      object lblConsultarTotalFila: TLabel
        Left = 2
        Top = 20
        Width = 93
        Height = 13
        Caption = 'Consultar Total Fila:'
      end
      object plsCbBxConsultarTotalFila: TPlsComboBox
        Left = 102
        Top = 14
        Width = 60
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'N'
        Items.Strings = (
          'N'
          'S')
        plsCorRecebeFoco = clSilver
      end
      object ckBxConsultarTotalFila: TCheckBox
        Left = 165
        Top = 20
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
    end
    object tbSheetCliente: TTabSheet
      Caption = 'Cliente'
      ImageIndex = 4
      object lblTipoSistema: TLabel
        Left = 2
        Top = 20
        Width = 64
        Height = 13
        Caption = 'Tipo Sistema:'
      end
      object lblNomeSistema: TLabel
        Left = 175
        Top = 20
        Width = 31
        Height = 13
        Caption = 'Nome:'
      end
      object lblLoginAutomatico: TLabel
        Left = 2
        Top = 50
        Width = 85
        Height = 13
        Caption = 'Login Autom'#225'tico:'
      end
      object lblNovoLoginAutomatico: TLabel
        Left = 2
        Top = 80
        Width = 114
        Height = 13
        Caption = 'Novo Login Autom'#225'tico:'
      end
      object lblUsadoParaDepurarEditorInterno: TLabel
        Left = 2
        Top = 110
        Width = 173
        Height = 13
        Caption = 'Usado para depurar o editor interno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object lblDepurandoDraw: TLabel
        Left = 2
        Top = 140
        Width = 84
        Height = 13
        Caption = 'Depurando Draw:'
      end
      object lblResolucao: TLabel
        Left = 2
        Top = 170
        Width = 54
        Height = 13
        Caption = 'Resolu'#231#227'o:'
      end
      object lblUsadoTestesCarga: TLabel
        Left = 2
        Top = 200
        Width = 130
        Height = 13
        Caption = 'Usado em testes de carga'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object lblMostraBotoEsdeTeste: TLabel
        Left = 2
        Top = 230
        Width = 143
        Height = 13
        Caption = 'MOSTRABOTOESDETESTE:'
      end
      object lblNovoUsuario: TLabel
        Left = 154
        Top = 80
        Width = 39
        Height = 13
        Caption = 'Usu'#225'rio:'
      end
      object lblNovaSenha: TLabel
        Left = 397
        Top = 80
        Width = 34
        Height = 13
        Caption = 'Senha:'
      end
      object lblNovaLotacao: TLabel
        Left = 628
        Top = 80
        Width = 42
        Height = 13
        Caption = 'Lota'#231#227'o:'
      end
      object plsEdTipoSistema: TPlsEdit
        Left = 70
        Top = 14
        Width = 61
        Height = 21
        TabOrder = 0
        Text = 'SG'
        plsCorRecebeFoco = clSilver
      end
      object plsEdNomeSistema: TPlsEdit
        Left = 209
        Top = 14
        Width = 534
        Height = 21
        TabOrder = 1
        Text = 'Tribunal de Justi'#231'a de S'#227'o Paulo'
        plsCorRecebeFoco = clSilver
      end
      object plsCbBxLoginAutomatico: TPlsComboBox
        Left = 92
        Top = 44
        Width = 245
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
        Text = 'BEATRIZM,mira100,1'
        Items.Strings = (
          'BEATRIZM,mira100,1'
          'SOFTPLAN,agesune1,1'
          'SOFTPLAN,ejc4vvm,1'
          'ADMIN,agesune1,1'
          'CLAUDINEIM,123456,1')
        plsCorRecebeFoco = clSilver
      end
      object plsCbBxDepurandoDraw: TPlsComboBox
        Left = 90
        Top = 136
        Width = 64
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 3
        Text = 'N'
        Items.Strings = (
          'N'
          'S')
        plsCorRecebeFoco = clSilver
      end
      object plsEdResolucao: TPlsEdit
        Left = 90
        Top = 164
        Width = 64
        Height = 21
        TabOrder = 4
        Text = '1024'
        plsCorRecebeFoco = clSilver
        plsCaracteresAceitos = numeros
      end
      object plsCbBxMostraBotoEsdeTeste: TPlsComboBox
        Left = 151
        Top = 224
        Width = 60
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 5
        Text = 'N'
        Items.Strings = (
          'N'
          'S')
        plsCorRecebeFoco = clSilver
      end
      object plsEdNovoUsuario: TPlsEdit
        Left = 197
        Top = 74
        Width = 160
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 6
        Text = 'PLSEDNOVOUSUARIO'
        plsCorRecebeFoco = clSilver
      end
      object plsEdNovaSenha: TPlsEdit
        Left = 438
        Top = 74
        Width = 160
        Height = 21
        CharCase = ecLowerCase
        TabOrder = 7
        Text = 'plsednovasenha'
        plsCorRecebeFoco = clSilver
      end
      object plsEdNovaLotacao: TPlsEdit
        Left = 678
        Top = 74
        Width = 65
        Height = 21
        TabOrder = 8
        Text = 'plsEdNovaLotacao'
        plsCorRecebeFoco = clSilver
        plsCaracteresAceitos = numeros
      end
      object ckBxTipoSistema: TCheckBox
        Left = 135
        Top = 20
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 9
      end
      object ckBxNome: TCheckBox
        Left = 746
        Top = 20
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
      object ckBxDepurandoDraw: TCheckBox
        Left = 158
        Top = 140
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 11
      end
      object ckBxResolucao: TCheckBox
        Left = 158
        Top = 170
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 12
      end
      object ckBxMostraBotoEsdeTeste: TCheckBox
        Left = 214
        Top = 230
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 13
      end
      object rdBtnLoginAutomatico: TRadioButton
        Left = 339
        Top = 50
        Width = 16
        Height = 17
        Checked = True
        TabOrder = 14
        TabStop = True
      end
      object rdBtnNovoLoginAutomatico: TRadioButton
        Left = 746
        Top = 80
        Width = 16
        Height = 17
        TabOrder = 15
      end
    end
    object tbSheetDatabase: TTabSheet
      Caption = 'Database'
      ImageIndex = 5
      object lblEsquema: TLabel
        Left = 2
        Top = 20
        Width = 47
        Height = 13
        Caption = 'Esquema:'
      end
      object lblNumeroMaximoConexoes: TLabel
        Left = 2
        Top = 50
        Width = 129
        Height = 13
        Caption = 'N'#250'mero M'#225'ximo Conex'#245'es:'
      end
      object lblNumeroMinimoConexoes: TLabel
        Left = 2
        Top = 80
        Width = 128
        Height = 13
        Caption = 'N'#250'mero M'#237'nimo Conex'#245'es:'
      end
      object lblTempoDesconexaoConexaoInativa: TLabel
        Left = 2
        Top = 110
        Width = 179
        Height = 13
        Caption = 'Tempo Desconex'#227'o Conex'#227'o Inativa:'
      end
      object lblTempoAtualizacaoLogConexoes: TLabel
        Left = 2
        Top = 140
        Width = 165
        Height = 13
        Caption = 'Tempo Atualiza'#231#227'o Log Conex'#245'es:'
      end
      object lblTipoAcessoBD: TLabel
        Left = 2
        Top = 170
        Width = 80
        Height = 13
        Caption = 'Tipo Acesso BD:'
      end
      object Label1: TLabel
        Left = 224
        Top = 24
        Width = 139
        Height = 13
        Caption = 'Configura'#231#245'es para sqlServer'
      end
      object plsEdEsquema: TPlsEdit
        Left = 56
        Top = 14
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        Text = 'SAJ'
        plsCorRecebeFoco = clSilver
      end
      object plsEdNumeroMaximoConexoes: TPlsEdit
        Left = 136
        Top = 44
        Width = 50
        Height = 21
        MaxLength = 3
        TabOrder = 1
        Text = '2'
        plsCorRecebeFoco = clSilver
        plsCaracteresAceitos = numeros
      end
      object plsEdNumeroMinimoConexoes: TPlsEdit
        Left = 136
        Top = 74
        Width = 50
        Height = 21
        MaxLength = 3
        TabOrder = 2
        Text = '2'
        plsCorRecebeFoco = clSilver
        plsCaracteresAceitos = numeros
      end
      object plsEdTempoDesconexaoConexaoInativa: TPlsEdit
        Left = 186
        Top = 104
        Width = 50
        Height = 21
        MaxLength = 3
        TabOrder = 3
        Text = '1'
        plsCorRecebeFoco = clSilver
        plsCaracteresAceitos = numeros
      end
      object plsEdTempoAtualizacaoLogConexoes: TPlsEdit
        Left = 186
        Top = 134
        Width = 50
        Height = 21
        MaxLength = 3
        TabOrder = 4
        Text = '1'
        plsCorRecebeFoco = clSilver
        plsCaracteresAceitos = numeros
      end
      object plsEdTipoAcessoBD: TPlsEdit
        Left = 88
        Top = 164
        Width = 81
        Height = 21
        TabOrder = 5
        Text = 'sqld'
        plsCorRecebeFoco = clSilver
      end
      object ckBxTempoDesconexaoConexaoInativa: TCheckBox
        Left = 256
        Top = 110
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 6
      end
      object ckBxEsquema: TCheckBox
        Left = 140
        Top = 20
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
      object ckBxNumeroMaximoConexoes: TCheckBox
        Left = 204
        Top = 50
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 8
      end
      object ckBxNumeroMinimoConexoes: TCheckBox
        Left = 204
        Top = 80
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 9
      end
      object ckBxTempoAtualizacaoLogConexoes: TCheckBox
        Left = 256
        Top = 140
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
      object ckBxTipoAcessoBD: TCheckBox
        Left = 172
        Top = 170
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 11
      end
      object upDwTempoDesconexaoConexaoInativa: TUpDown
        Left = 236
        Top = 104
        Width = 16
        Height = 21
        Associate = plsEdTempoDesconexaoConexaoInativa
        Max = 999
        Position = 1
        TabOrder = 12
      end
      object upDwTempoAtualizacaoLogConexoes: TUpDown
        Left = 236
        Top = 134
        Width = 16
        Height = 21
        Associate = plsEdTempoAtualizacaoLogConexoes
        Max = 999
        Position = 1
        TabOrder = 13
      end
      object upDwNumeroMaximoConexoes: TUpDown
        Left = 186
        Top = 44
        Width = 16
        Height = 21
        Associate = plsEdNumeroMaximoConexoes
        Max = 999
        Position = 2
        TabOrder = 14
      end
      object upDwNumeroMinimoConexoes: TUpDown
        Left = 186
        Top = 74
        Width = 16
        Height = 21
        Associate = plsEdNumeroMinimoConexoes
        Max = 999
        Position = 2
        TabOrder = 15
      end
    end
    object tbSheetLog: TTabSheet
      Caption = 'Log'
      ImageIndex = 6
      object lblTempoReleituraINI: TLabel
        Left = 2
        Top = 20
        Width = 98
        Height = 13
        Caption = 'Tempo Releitura INI:'
      end
      object lblRegistraLogMetodo: TLabel
        Left = 2
        Top = 50
        Width = 102
        Height = 13
        Caption = 'Registra Log M'#233'todo:'
      end
      object lblTamanhoMaximoLogMetodo: TLabel
        Left = 2
        Top = 80
        Width = 147
        Height = 13
        Caption = 'Tamanho M'#225'ximo Log M'#233'todo:'
      end
      object lblQuantidadeArquivosLogMetodo: TLabel
        Left = 2
        Top = 110
        Width = 162
        Height = 13
        Caption = 'Quantidade Arquivos Log M'#233'todo:'
      end
      object lblRegistraLogSQL: TLabel
        Left = 2
        Top = 140
        Width = 87
        Height = 13
        Caption = 'Registra Log SQL:'
      end
      object plsEdTempoReleituraINI: TPlsEdit
        Left = 106
        Top = 14
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 3
        TabOrder = 0
        Text = '2'
        plsCorRecebeFoco = clSilver
        plsCaracteresAceitos = numeros
      end
      object ckBxTempoReleituraINI: TCheckBox
        Left = 175
        Top = 20
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object ckBxRegistraLogSQL: TCheckBox
        Left = 175
        Top = 140
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object ckBxQuantidadeArquivosLogMetodo: TCheckBox
        Left = 236
        Top = 110
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object upDwQuantidadeArquivosLogMetodo: TUpDown
        Left = 216
        Top = 104
        Width = 16
        Height = 21
        Associate = plsEdQuantidadeArquivosLogMetodo
        Max = 999
        Position = 3
        TabOrder = 4
      end
      object plsEdQuantidadeArquivosLogMetodo: TPlsEdit
        Left = 166
        Top = 104
        Width = 50
        Height = 21
        MaxLength = 3
        TabOrder = 5
        Text = '3'
        plsCorRecebeFoco = clSilver
        plsCaracteresAceitos = numeros
      end
      object ckBxTamanhoMaximoLogMetodo: TCheckBox
        Left = 236
        Top = 80
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 6
      end
      object upDwTamanhoMaximoLogMetodo: TUpDown
        Left = 216
        Top = 74
        Width = 16
        Height = 21
        Associate = plsEdTamanhoMaximoLogMetodo
        Max = 999
        Position = 5
        TabOrder = 7
      end
      object plsEdTamanhoMaximoLogMetodo: TPlsEdit
        Left = 166
        Top = 74
        Width = 50
        Height = 21
        MaxLength = 3
        TabOrder = 8
        Text = '5'
        plsCorRecebeFoco = clSilver
        plsCaracteresAceitos = numeros
      end
      object upDwTempoReleituraINI: TUpDown
        Left = 156
        Top = 14
        Width = 16
        Height = 21
        Associate = plsEdTempoReleituraINI
        Max = 999
        Position = 2
        TabOrder = 9
      end
      object ckBxRegistraLogMetodo: TCheckBox
        Left = 175
        Top = 50
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
      object plsCbBxRegistraLogMetodo: TPlsComboBox
        Left = 106
        Top = 44
        Width = 66
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 11
        Text = 'S'
        Items.Strings = (
          'N'
          'S')
        plsCorRecebeFoco = clSilver
      end
      object plsCbBxRegistraLogSQL: TPlsComboBox
        Left = 106
        Top = 134
        Width = 66
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 12
        Text = 'S'
        Items.Strings = (
          'N'
          'S')
        plsCorRecebeFoco = clSilver
      end
    end
    object tbSheetGeral: TTabSheet
      Caption = 'Geral'
      ImageIndex = 7
      object lblSiglaCliente: TLabel
        Left = 2
        Top = 20
        Width = 61
        Height = 13
        Caption = 'Sigla Cliente:'
      end
      object lblNomeCliente: TLabel
        Left = 2
        Top = 50
        Width = 66
        Height = 13
        Caption = 'Nome Cliente:'
      end
      object lblLogoCliente: TLabel
        Left = 2
        Top = 80
        Width = 62
        Height = 13
        Caption = 'Logo Cliente:'
      end
      object plsEdLogoCliente: TPlsEdit
        Left = 71
        Top = 74
        Width = 230
        Height = 21
        TabOrder = 0
        Text = 'LogoTJSP.bmp'
        plsCorRecebeFoco = clSilver
      end
      object plsEdNomeCliente: TPlsEdit
        Left = 71
        Top = 44
        Width = 230
        Height = 21
        TabOrder = 1
        Text = 'Tribunal de Justi'#231'a de S'#227'o Paulo'
        plsCorRecebeFoco = clSilver
      end
      object plsEdSiglaCliente: TPlsEdit
        Left = 71
        Top = 14
        Width = 230
        Height = 21
        TabOrder = 2
        Text = 'TJ/SP'
        plsCorRecebeFoco = clSilver
      end
      object ckBxNomeCliente: TCheckBox
        Left = 304
        Top = 50
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object ckBxSiglaCliente: TCheckBox
        Left = 304
        Top = 20
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object ckBxLogoCliente: TCheckBox
        Left = 304
        Top = 80
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
    end
    object TbSheetSpUpdate: TTabSheet
      Caption = 'spUpdate'
      ImageIndex = 8
      object lblPodeAtualizar: TLabel
        Left = 2
        Top = 20
        Width = 71
        Height = 13
        Caption = 'Pode Atualizar:'
      end
      object lblAlias: TLabel
        Left = 2
        Top = 50
        Width = 25
        Height = 13
        Caption = 'Alias:'
      end
      object lblUsuarioSpUpdate: TLabel
        Left = 2
        Top = 80
        Width = 39
        Height = 13
        Caption = 'Usu'#225'rio:'
      end
      object lblSenhaSpUpdate: TLabel
        Left = 2
        Top = 110
        Width = 34
        Height = 13
        Caption = 'Senha:'
      end
      object lblEsquemaSpUpdate: TLabel
        Left = 2
        Top = 140
        Width = 47
        Height = 13
        Caption = 'Esquema:'
      end
      object lblCDSistema: TLabel
        Left = 2
        Top = 170
        Width = 58
        Height = 13
        Caption = 'CD Sistema:'
      end
      object plsCbBxPodeAtualizar: TPlsComboBox
        Left = 80
        Top = 14
        Width = 66
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'N'
        Items.Strings = (
          'N'
          'S')
        plsCorRecebeFoco = clSilver
      end
      object ckBxPodeAtualizar: TCheckBox
        Left = 147
        Top = 20
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object plsEdAlias: TPlsEdit
        Left = 80
        Top = 44
        Width = 280
        Height = 21
        TabOrder = 2
        Text = 'SG5MSP'
        plsCorRecebeFoco = clSilver
      end
      object plsEdUsuarioSpUpdate: TPlsEdit
        Left = 80
        Top = 74
        Width = 280
        Height = 21
        TabOrder = 3
        Text = 'saj'
        plsCorRecebeFoco = clSilver
      end
      object plsEdSenhaSpUpdate: TPlsEdit
        Left = 80
        Top = 104
        Width = 280
        Height = 21
        TabOrder = 4
        Text = 'A79EE0D5A7D1D4DF859792868291945657949287'
        plsCorRecebeFoco = clSilver
      end
      object plsEdEsquemaSpUpdate: TPlsEdit
        Left = 80
        Top = 134
        Width = 280
        Height = 21
        TabOrder = 5
        Text = 'saj'
        plsCorRecebeFoco = clSilver
      end
      object plsEdCDSistema: TPlsEdit
        Left = 80
        Top = 164
        Width = 61
        Height = 21
        TabOrder = 6
        Text = '58'
        plsCorRecebeFoco = clSilver
        plsCaracteresAceitos = numeros
      end
      object ckBxAlias: TCheckBox
        Left = 364
        Top = 50
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
      object ckBxUsuarioSpUpdate: TCheckBox
        Left = 364
        Top = 80
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 8
      end
      object ckBxSenhaSpUpdate: TCheckBox
        Left = 364
        Top = 110
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 9
      end
      object ckBxEsquemaSpUpdate: TCheckBox
        Left = 364
        Top = 140
        Width = 16
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
      object ckBxCDSistema: TCheckBox
        Left = 145
        Top = 170
        Width = 16
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 11
      end
    end
    object TbSheetSpMonitor: TTabSheet
      Caption = 'spMonitor'
      ImageIndex = 9
      object lblTimerLog: TLabel
        Left = 2
        Top = 20
        Width = 50
        Height = 13
        Caption = 'Timer Log:'
      end
      object lblTimerUsuarios: TLabel
        Left = 2
        Top = 50
        Width = 73
        Height = 13
        Caption = 'Timer Usu'#225'rios:'
      end
      object lblReleituraAutomaticaLog: TLabel
        Left = 2
        Top = 80
        Width = 122
        Height = 13
        Caption = 'Releitura Autom'#225'tica Log:'
      end
      object lblAvaliaTravamentoAutomatico: TLabel
        Left = 2
        Top = 110
        Width = 148
        Height = 13
        Caption = 'Avalia Travamento Autom'#225'tico:'
      end
      object lblPosicionaUltimoLogAutomatico: TLabel
        Left = 2
        Top = 140
        Width = 158
        Height = 13
        Caption = 'Posiciona '#218'ltimo Log Autom'#225'tico:'
      end
      object lblAtualizacaoAutomatcaUsuarios: TLabel
        Left = 2
        Top = 170
        Width = 156
        Height = 13
        Caption = 'Atualiza'#231#227'o Autom'#225'tca Usu'#225'rios:'
      end
      object lblCarregaLogMaisRecente: TLabel
        Left = 2
        Top = 200
        Width = 130
        Height = 13
        Caption = 'Carrega Log Mais Recente:'
      end
      object lblDiretorioLog: TLabel
        Left = 2
        Top = 230
        Width = 63
        Height = 13
        Caption = 'Diret'#243'rio Log:'
      end
      object ckBxTimerLog: TCheckBox
        Left = 150
        Top = 20
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object upDwTimerLog: TUpDown
        Left = 128
        Top = 14
        Width = 16
        Height = 21
        Associate = plsEdTimerLog
        Max = 999
        Position = 2
        TabOrder = 1
      end
      object plsEdTimerLog: TPlsEdit
        Left = 78
        Top = 14
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 3
        TabOrder = 2
        Text = '2'
        plsCorRecebeFoco = clSilver
        plsCaracteresAceitos = numeros
      end
      object plsEdTimerUsuarios: TPlsEdit
        Left = 78
        Top = 44
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 3
        TabOrder = 3
        Text = '10'
        plsCorRecebeFoco = clSilver
        plsCaracteresAceitos = numeros
      end
      object upDwTimerUsuarios: TUpDown
        Left = 128
        Top = 44
        Width = 16
        Height = 21
        Associate = plsEdTimerUsuarios
        Max = 999
        Position = 10
        TabOrder = 4
      end
      object ckBxTimerUsuarios: TCheckBox
        Left = 150
        Top = 50
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
      object ckBxReleituraAutomaticaLog: TCheckBox
        Left = 235
        Top = 80
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 6
      end
      object plsCbBxReleituraAutomaticaLog: TPlsComboBox
        Left = 165
        Top = 74
        Width = 66
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 7
        Text = 'N'
        Items.Strings = (
          'N'
          'S')
        plsCorRecebeFoco = clSilver
      end
      object ckBxAvaliaTravamentoAutomatico: TCheckBox
        Left = 235
        Top = 110
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 8
      end
      object plsCbBxAvaliaTravamentoAutomatico: TPlsComboBox
        Left = 165
        Top = 104
        Width = 66
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 9
        Text = 'N'
        Items.Strings = (
          'N'
          'S')
        plsCorRecebeFoco = clSilver
      end
      object ckBxPosicionaUltimoLogAutomatico: TCheckBox
        Left = 235
        Top = 140
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
      object plsCbBxPosicionaUltimoLogAutomatico: TPlsComboBox
        Left = 165
        Top = 134
        Width = 66
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 11
        Text = 'S'
        Items.Strings = (
          'N'
          'S')
        plsCorRecebeFoco = clSilver
      end
      object plsCbBxCarregaLogMaisRecente: TPlsComboBox
        Left = 165
        Top = 194
        Width = 66
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 12
        Text = 'S'
        Items.Strings = (
          'N'
          'S')
        plsCorRecebeFoco = clSilver
      end
      object ckBxCarregaLogMaisRecente: TCheckBox
        Left = 235
        Top = 200
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 13
      end
      object ckBxAtualizacaoAutomaticaUsuarios: TCheckBox
        Left = 235
        Top = 170
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 14
      end
      object plsCbBxAtualizacaoAutomaticaUsuarios: TPlsComboBox
        Left = 165
        Top = 164
        Width = 66
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 15
        Text = 'N'
        Items.Strings = (
          'N'
          'S')
        plsCorRecebeFoco = clSilver
      end
      object plsEdDiretorioLog: TPlsEdit
        Left = 70
        Top = 224
        Width = 259
        Height = 21
        MaxLength = 3
        TabOrder = 16
        Text = 'Q:\Bin'
        plsCorRecebeFoco = clSilver
        plsCaracteresAceitos = letras
      end
      object ckBxDiretorioLog: TCheckBox
        Left = 331
        Top = 230
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 17
      end
    end
  end
  object btBtnSalvar: TBitBtn
    Left = 752
    Top = 536
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 7
    OnClick = btBtnSalvarClick
  end
end
