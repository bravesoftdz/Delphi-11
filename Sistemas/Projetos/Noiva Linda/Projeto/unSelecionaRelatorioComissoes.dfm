object frmSelecionaRelatorioComissoes: TfrmSelecionaRelatorioComissoes
  Left = 247
  Top = 204
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'NOIVA LINDA --> Seleciona Relat'#243'rio Comiss'#245'es'
  ClientHeight = 212
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
    Height = 193
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label3: TLabel
      Left = 10
      Top = 50
      Width = 58
      Height = 13
      Caption = 'Funcion'#225'rio:'
    end
    object Label10: TLabel
      Left = 10
      Top = 110
      Width = 26
      Height = 13
      Caption = 'Data:'
    end
    object Label15: TLabel
      Left = 114
      Top = 110
      Width = 24
      Height = 13
      Caption = 'entre'
    end
    object Label14: TLabel
      Left = 261
      Top = 110
      Width = 6
      Height = 13
      Caption = 'e'
    end
    object Label11: TLabel
      Left = 10
      Top = 7
      Width = 85
      Height = 16
      Caption = 'Comiss'#245'es'
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
    object Label1: TLabel
      Left = 8
      Top = 80
      Width = 68
      Height = 13
      Caption = 'Comiss'#245'es de:'
    end
    object edFuncionario: TEdit
      Left = 114
      Top = 44
      Width = 217
      Height = 21
      Hint = 'Funcion'#225'rio da Comiss'#227'o'
      CharCase = ecUpperCase
      Enabled = False
      MaxLength = 80
      TabOrder = 2
      OnEnter = edFuncionarioEnter
      OnExit = edFuncionarioExit
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
    object mEdData1: TMaskEdit
      Left = 158
      Top = 104
      Width = 76
      Height = 21
      Hint = 'Data de Pesquisa da Comiss'#227'o'
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 6
      Text = '  /  /    '
      OnEnter = mEdData1Enter
      OnExit = mEdData1Exit
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
    object mEdData2: TMaskEdit
      Left = 294
      Top = 104
      Width = 76
      Height = 21
      Hint = 'Data de Pesquisa da Comiss'#227'o'
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 7
      Text = '  /  /    '
      OnEnter = mEdData2Enter
      OnExit = mEdData2Exit
    end
    object btBtnAbreFuncionario: TBitBtn
      Left = 331
      Top = 42
      Width = 39
      Height = 25
      Hint = 'Abre Funcion'#225'rio Para Sele'#231#227'o de Relat'#243'rio de Comiss'#245'es'
      Caption = '...'
      TabOrder = 3
      OnClick = btBtnAbreFuncionarioClick
    end
    object rdBtnComissaoResumo: TRadioButton
      Left = 120
      Top = 12
      Width = 65
      Height = 17
      Hint = 'Exibe Relat'#243'rio de Loca'#231#245'es de Forma Resumida'
      Caption = 'Resumo'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rdBtnComissaoDetalhado: TRadioButton
      Left = 192
      Top = 12
      Width = 81
      Height = 17
      Hint = 'Exibe Relat'#243'rio de Loca'#231#245'es de Forma Detalhado'
      Caption = 'Detalhado'
      TabOrder = 1
    end
    object ckBxLocacoes: TCheckBox
      Left = 114
      Top = 80
      Width = 79
      Height = 17
      Hint = 'Comiss'#245'es de Loca'#231#245'es'
      Caption = 'Loca'#231#245'es'
      TabOrder = 4
    end
    object ckBxVendas: TCheckBox
      Left = 208
      Top = 80
      Width = 97
      Height = 17
      Hint = 'Comiss'#245'es de Vendas'
      Caption = 'Vendas'
      TabOrder = 5
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 193
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
    Left = 15
    Top = 19
  end
  object qryComissoes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT c.codigo,c.cod_funcionario,c.cod_locacao,c.cod_venda,c.va' +
        'lor,c.data,'
      '       u.nome,'
      
        '       l.data_inicio,l.observacoes,l.valor_total,l.valor_pago,(l' +
        '.valor_total-l.valor_pago) AS "Valor_Resta"'
      'FROM comissao_funcionario c, usuario u, locacao l'
      'WHERE c.cod_funcionario=u.codigo'
      'AND c.cod_locacao=l.codigo'
      ''
      'UNION'
      ''
      
        'SELECT c.codigo,c.cod_funcionario,c.cod_locacao,c.cod_venda,c.va' +
        'lor,c.data,'
      '       u.nome,'
      
        '       v.data_venda,v.observacoes,v.valor_total,v.valor_pago,(v.' +
        'valor_total-v.valor_pago) AS "Valor_Resta"'
      'FROM comissao_funcionario c, usuario u, venda v'
      'WHERE c.cod_funcionario=u.codigo'
      'AND c.cod_venda=v.codigo'
      ''
      'order by 6--data')
    SQLConnection = DM.SQLConnection
    Left = 15
    Top = 78
    object qryComissoesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryComissoesCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
    end
    object qryComissoesCOD_LOCACAO: TIntegerField
      FieldName = 'COD_LOCACAO'
    end
    object qryComissoesCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object qryComissoesVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object qryComissoesDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object qryComissoesNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qryComissoesDATA_INICIO: TSQLTimeStampField
      FieldName = 'DATA_INICIO'
    end
    object qryComissoesOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 300
    end
    object qryComissoesVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryComissoesVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object qryComissoesValor_Resta: TFMTBCDField
      FieldName = 'Valor_Resta'
      Precision = 15
      Size = 2
    end
  end
  object dspComissoes: TDataSetProvider
    DataSet = qryComissoes
    Left = 43
    Top = 78
  end
  object cdsComissoes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspComissoes'
    Left = 72
    Top = 78
    object cdsComissoesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsComissoesCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
    end
    object cdsComissoesCOD_LOCACAO: TIntegerField
      FieldName = 'COD_LOCACAO'
    end
    object cdsComissoesCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object cdsComissoesVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsComissoesDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object cdsComissoesNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsComissoesDATA_INICIO: TSQLTimeStampField
      FieldName = 'DATA_INICIO'
    end
    object cdsComissoesOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 300
    end
    object cdsComissoesVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsComissoesVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsComissoesValor_Resta: TFMTBCDField
      FieldName = 'Valor_Resta'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
  end
  object qrySomaLocacoes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT SUM(c.valor) AS "Total",u.nome'
      'FROM comissao_funcionario c, usuario u'
      'WHERE c.cod_funcionario=u.codigo'
      'AND c.cod_locacao IS NOT null'
      'GROUP BY u.nome')
    SQLConnection = DM.SQLConnection
    Left = 15
    Top = 123
    object qrySomaLocacoesTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 15
      Size = 2
    end
    object qrySomaLocacoesNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspSomaLocacoes: TDataSetProvider
    DataSet = qrySomaLocacoes
    Left = 43
    Top = 123
  end
  object cdsSomaLocacoes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSomaLocacoes'
    Left = 72
    Top = 123
    object cdsSomaLocacoesTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 15
      Size = 2
    end
    object cdsSomaLocacoesNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object qrySomaVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT SUM(c.valor) AS "Total",u.nome'
      'FROM comissao_funcionario c, usuario u'
      'WHERE c.cod_funcionario=u.codigo'
      'AND c.cod_venda IS NOT null'
      'GROUP BY u.nome')
    SQLConnection = DM.SQLConnection
    Left = 16
    Top = 160
    object qrySomaVendasTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 15
      Size = 2
    end
    object qrySomaVendasNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspSomaVendas: TDataSetProvider
    DataSet = qrySomaVendas
    Left = 43
    Top = 160
  end
  object cdsSomaVendas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSomaVendas'
    Left = 72
    Top = 160
    object cdsSomaVendasTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 15
      Size = 2
    end
    object cdsSomaVendasNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
end
