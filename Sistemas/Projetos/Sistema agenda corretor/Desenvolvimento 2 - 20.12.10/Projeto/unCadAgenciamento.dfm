inherited frmCadAgenciamento: TfrmCadAgenciamento
  Left = 560
  Top = 70
  VertScrollBar.Range = 0
  BorderStyle = bsSingle
  Caption = 'CADASTRO DE AGENCIAMENTO'
  ClientHeight = 627
  ClientWidth = 507
  KeyPreview = True
  OldCreateOrder = True
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar: TStatusBar
    Top = 608
    Width = 507
    Panels = <
      item
        Width = 380
      end
      item
        Width = 50
      end>
  end
  inherited grpBxDados: TGroupBox
    Width = 507
    Height = 449
    Align = alTop
    object pnlDadosAgenciamento: TPanel
      Left = 2
      Top = 15
      Width = 503
      Height = 432
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblCodigo: TLabel
        Left = 5
        Top = 20
        Width = 36
        Height = 13
        Caption = 'C'#243'digo:'
      end
      object lblCampoObrigatorio1: TLabel
        Left = 254
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
      object lblDataAgenciamento: TLabel
        Left = 155
        Top = 20
        Width = 100
        Height = 13
        Caption = 'Data Agenciamento: '
      end
      object lblObservacao: TLabel
        Left = 5
        Top = 345
        Width = 61
        Height = 13
        Caption = 'Observa'#231#227'o:'
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
      object rdGrpTipoAgenciamento: TRadioGroup
        Left = 5
        Top = 50
        Width = 240
        Height = 40
        Caption = 'Tipo Agenciamento * '
        Columns = 2
        Items.Strings = (
          'Normal'
          'Stand By')
        TabOrder = 3
        OnClick = rdGrpTipoAgenciamentoClick
      end
      object rdGrpTipoPessoa: TRadioGroup
        Left = 253
        Top = 50
        Width = 240
        Height = 40
        Caption = 'Tipo Pessoa * '
        Columns = 2
        Items.Strings = (
          'F'#237'sica'
          'Jur'#237'dica')
        TabOrder = 4
        OnClick = rdGrpTipoPessoaClick
      end
      object plsMedDataAgenciamento: TPlsMaskEdit
        Left = 261
        Top = 14
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
        object lblDataBaixa: TLabel
          Left = 1
          Top = 8
          Width = 55
          Height = 13
          Caption = 'Data Baixa:'
        end
        object plsMedDataBaixa: TPlsMaskEdit
          Left = 64
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
      object pnlPessoa: TPanel
        Left = 4
        Top = 96
        Width = 489
        Height = 30
        BevelOuter = bvNone
        TabOrder = 5
        object lblPessoa: TLabel
          Left = 2
          Top = 10
          Width = 38
          Height = 13
          Caption = 'Pessoa:'
        end
        object spBtnBuscaPessoa: TSpeedButton
          Left = 466
          Top = 8
          Width = 22
          Height = 19
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
          OnClick = spBtnBuscaPessoaClick
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
        object plsEdPessoa: TPlsEdit
          Left = 46
          Top = 6
          Width = 420
          Height = 21
          CharCase = ecUpperCase
          ReadOnly = True
          TabOrder = 0
          OnClick = plsEdPessoaClick
          OnKeyPress = plsEdPessoaKeyPress
          plsCorRecebeFoco = clSilver
          plsAceitaCaractres = False
        end
      end
      object pnlImovel: TPanel
        Left = 4
        Top = 125
        Width = 489
        Height = 30
        BevelOuter = bvNone
        TabOrder = 6
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
          OnClick = plsEdImovelClick
          OnKeyPress = plsEdImovelKeyPress
          plsCorRecebeFoco = clSilver
          plsAceitaCaractres = False
        end
      end
      object pnlOutrosDados: TPanel
        Left = 4
        Top = 158
        Width = 490
        Height = 29
        BevelOuter = bvNone
        TabOrder = 7
        object lblCondicaoPagamento: TLabel
          Left = 2
          Top = 9
          Width = 120
          Height = 13
          Caption = 'Condi'#231#227'o de Pagamento:'
        end
        object lblValorTotal: TLabel
          Left = 323
          Top = 9
          Width = 54
          Height = 13
          Caption = 'Valor Total:'
        end
        object lblCampoObrigatorio6: TLabel
          Left = 378
          Top = 4
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
        object lblCampoObrigatorio5: TLabel
          Left = 125
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
        object plsCbBxCondicaoPagamento: TPlsComboBox
          Left = 133
          Top = 3
          Width = 178
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 0
          OnChange = plsCbBxCondicaoPagamentoChange
          Items.Strings = (
            'VISTA'
            'ACEITA FINANCIAMENTO')
          plsCorRecebeFoco = clSilver
        end
        object plsEdValorTotal: TPlsEdit
          Left = 386
          Top = 3
          Width = 100
          Height = 21
          TabOrder = 1
          Text = 'plsEdValorTotal'
          plsCorRecebeFoco = clSilver
          plsEntraCaracteres = direitaEsquerda
          plsCaracteresAceitos = monetario
        end
      end
      object grpBxFormaPagamento: TGroupBox
        Left = 4
        Top = 190
        Width = 489
        Height = 142
        Caption = 'Forma de Pagamento'
        TabOrder = 8
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
        Top = 345
        Width = 423
        Height = 33
        Lines.Strings = (
          'plsMmObservacao')
        MaxLength = 500
        TabOrder = 9
        plsCorRecebeFoco = clSilver
      end
      object pnlDataReagenciamento: TPanel
        Left = 182
        Top = 384
        Width = 219
        Height = 24
        BevelOuter = bvNone
        TabOrder = 10
        object lblDataReagenciamento: TLabel
          Left = 27
          Top = 8
          Width = 110
          Height = 13
          Caption = 'Data Reagenciamento:'
        end
        object plsMedReagenciamento: TPlsMaskEdit
          Left = 139
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
      object pnlDataAutorizacao: TPanel
        Left = 6
        Top = 379
        Width = 180
        Height = 33
        BevelOuter = bvNone
        TabOrder = 11
        object lblPrazoAutorizacao: TLabel
          Left = 5
          Top = 12
          Width = 89
          Height = 13
          Caption = 'Prazo Autoriza'#231#227'o:'
        end
        object lblCampoObrigatorio7: TLabel
          Left = 96
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
        object plsMedPrazoAutorizacao: TPlsMaskEdit
          Left = 104
          Top = 6
          Width = 73
          Height = 21
          EditMask = '99/99/9999'
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
          plsCorRecebeFoco = clSilver
        end
      end
    end
  end
  inherited ToolBar: TToolBar
    Width = 507
    inherited tlBtnEditar: TToolButton
      Visible = False
    end
    inherited tlBtnExcluir: TToolButton
      Visible = False
    end
  end
  object grpBxEditarAgenciamentoExpirou: TGroupBox [3]
    Left = 0
    Top = 489
    Width = 507
    Height = 118
    Align = alTop
    Caption = 'Editar Agenciamento Expirou '
    Color = clActiveBorder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    object lblInformacaoEditarAgenciamentoExpirou: TLabel
      Left = 80
      Top = 18
      Width = 247
      Height = 13
      Caption = 'Deseja Re-agenciar ou dar baixo no Agenciamento?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btBtnDarBaixaAgenciamento: TBitBtn
      Left = 16
      Top = 69
      Width = 120
      Height = 30
      Caption = 'Dar Baixa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btBtnDarBaixaAgenciamentoClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btBtnReagenciarAgenciamento: TBitBtn
      Left = 264
      Top = 69
      Width = 120
      Height = 30
      Caption = 'Re-Agenciar'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btBtnReagenciarAgenciamentoClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object plsMedReagenciamentoAgenciamento: TPlsMaskEdit
      Left = 284
      Top = 41
      Width = 73
      Height = 21
      EditMask = '99/99/9999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
      plsCorRecebeFoco = clSilver
    end
  end
  inherited zQryDados: TZQuery
    SQL.Strings = (
      'SELECT * FROM agenciamentos'
      'WHERE 1=2'
      '')
    Left = 348
    Top = 6
    object zQryDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object zQryDadosDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object zQryDadosDATA_AGENCIAMENTO: TDateField
      FieldName = 'DATA_AGENCIAMENTO'
      Required = True
    end
    object zQryDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 3
    end
    object zQryDadosNORMAL: TStringField
      FieldName = 'NORMAL'
      Size = 5
    end
    object zQryDadosSTAND_BY: TStringField
      FieldName = 'STAND_BY'
      Size = 5
    end
    object zQryDadosTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Size = 8
    end
    object zQryDadosCOD_FK_PESSOA_FISICA: TIntegerField
      FieldName = 'COD_FK_PESSOA_FISICA'
    end
    object zQryDadosCOD_FK_PESSOA_JURIDICA: TIntegerField
      FieldName = 'COD_FK_PESSOA_JURIDICA'
    end
    object zQryDadosCOD_FK_IMOVEL: TIntegerField
      FieldName = 'COD_FK_IMOVEL'
    end
    object zQryDadosCONDICAO_PAGAMENTO: TStringField
      FieldName = 'CONDICAO_PAGAMENTO'
    end
    object zQryDadosVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object zQryDadosPGTO_VISTA_CACH: TFloatField
      FieldName = 'PGTO_VISTA_CACH'
    end
    object zQryDadosPGTO_VISTA_VALOR_BEM: TFloatField
      FieldName = 'PGTO_VISTA_VALOR_BEM'
    end
    object zQryDadosPGTO_VISTA_DESCRICAO_BEM: TStringField
      FieldName = 'PGTO_VISTA_DESCRICAO_BEM'
      Size = 500
    end
    object zQryDadosPGTO_FINCTO_CACH_FINANCIADO: TFloatField
      FieldName = 'PGTO_FINCTO_CACH_FINANCIADO'
    end
    object zQryDadosPGTO_FINCTO_CACH: TFloatField
      FieldName = 'PGTO_FINCTO_CACH'
    end
    object zQryDadosPGTO_FINCTO_VALOR_BEM: TFloatField
      FieldName = 'PGTO_FINCTO_VALOR_BEM'
    end
    object zQryDadosPGTO_FINCTO_DESCRICAO_BEM: TStringField
      FieldName = 'PGTO_FINCTO_DESCRICAO_BEM'
      Size = 500
    end
    object zQryDadosOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 500
    end
    object zQryDadosPRAZO_AUTORIZACAO: TDateField
      FieldName = 'PRAZO_AUTORIZACAO'
    end
    object zQryDadosDATA_REAGENCIAMENTO: TDateField
      FieldName = 'DATA_REAGENCIAMENTO'
    end
    object zQryDadosDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
  end
  inherited dsDados: TDataSource
    Left = 434
    Top = 6
  end
  inherited dspDados: TDataSetProvider
    Left = 377
    Top = 6
  end
  inherited cdsDados: TClientDataSet
    Left = 406
    Top = 6
    object cdsDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsDadosDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsDadosDATA_AGENCIAMENTO: TDateField
      FieldName = 'DATA_AGENCIAMENTO'
      Required = True
    end
    object cdsDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 3
    end
    object cdsDadosNORMAL: TStringField
      FieldName = 'NORMAL'
      Size = 5
    end
    object cdsDadosSTAND_BY: TStringField
      FieldName = 'STAND_BY'
      Size = 5
    end
    object cdsDadosTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Size = 8
    end
    object cdsDadosCOD_FK_PESSOA_FISICA: TIntegerField
      FieldName = 'COD_FK_PESSOA_FISICA'
    end
    object cdsDadosCOD_FK_PESSOA_JURIDICA: TIntegerField
      FieldName = 'COD_FK_PESSOA_JURIDICA'
    end
    object cdsDadosCOD_FK_IMOVEL: TIntegerField
      FieldName = 'COD_FK_IMOVEL'
    end
    object cdsDadosCONDICAO_PAGAMENTO: TStringField
      FieldName = 'CONDICAO_PAGAMENTO'
    end
    object cdsDadosVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object cdsDadosPGTO_VISTA_CACH: TFloatField
      FieldName = 'PGTO_VISTA_CACH'
    end
    object cdsDadosPGTO_VISTA_VALOR_BEM: TFloatField
      FieldName = 'PGTO_VISTA_VALOR_BEM'
    end
    object cdsDadosPGTO_VISTA_DESCRICAO_BEM: TStringField
      FieldName = 'PGTO_VISTA_DESCRICAO_BEM'
      Size = 500
    end
    object cdsDadosPGTO_FINCTO_CACH_FINANCIADO: TFloatField
      FieldName = 'PGTO_FINCTO_CACH_FINANCIADO'
    end
    object cdsDadosPGTO_FINCTO_CACH: TFloatField
      FieldName = 'PGTO_FINCTO_CACH'
    end
    object cdsDadosPGTO_FINCTO_VALOR_BEM: TFloatField
      FieldName = 'PGTO_FINCTO_VALOR_BEM'
    end
    object cdsDadosPGTO_FINCTO_DESCRICAO_BEM: TStringField
      FieldName = 'PGTO_FINCTO_DESCRICAO_BEM'
      Size = 500
    end
    object cdsDadosOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 500
    end
    object cdsDadosPRAZO_AUTORIZACAO: TDateField
      FieldName = 'PRAZO_AUTORIZACAO'
    end
    object cdsDadosDATA_REAGENCIAMENTO: TDateField
      FieldName = 'DATA_REAGENCIAMENTO'
    end
    object cdsDadosDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
  end
end
