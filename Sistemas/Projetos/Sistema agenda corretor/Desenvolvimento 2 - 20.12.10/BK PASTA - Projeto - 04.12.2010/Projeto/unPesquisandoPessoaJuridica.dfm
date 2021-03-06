inherited frmPesquisandoPessoaJuridica: TfrmPesquisandoPessoaJuridica
  Caption = 'PESQUISANDO PESSOA JUR'#205'DICA'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbGrdRegistros: TDBGrid
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 143
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Title.Caption = 'E-Mail'
        Width = 144
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE_RESIDENCIAL'
        Title.Caption = 'Telefone Residencial'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE_COMERCIAL'
        Title.Caption = 'Telefone Comercial'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE_CELULAR'
        Title.Caption = 'Telefone Celular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SIGLA_ESTADO'
        Title.Caption = 'Estado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CIDADE'
        Title.Caption = 'Cidade'
        Width = 143
        Visible = True
      end>
  end
  inherited pnlTopo: TPanel
    inherited plsEdValorPesquisa: TPlsEdit
      Left = 150
      Width = 400
      plsCorRecebeFoco = clSilver
    end
    object plsCbBxCampoPesquisar: TPlsComboBox
      Left = 0
      Top = 3
      Width = 145
      Height = 21
      Style = csDropDownList
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 1
      OnChange = plsCbBxCampoPesquisarChange
      Items.Strings = (
        'C'#211'DIGO'
        'NOME'
        'CNPJ'
        'ESTADO'
        'CIDADE')
      plsCorRecebeFoco = clSilver
    end
  end
  inherited cdsPesquisando: TClientDataSet
    ProviderName = 'dspPesquisando'
    Left = 59
    Top = 71
    object cdsPesquisandoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPesquisandoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsPesquisandoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object cdsPesquisandoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 30
    end
    object cdsPesquisandoTELEFONE_RESIDENCIAL: TStringField
      FieldName = 'TELEFONE_RESIDENCIAL'
      Size = 13
    end
    object cdsPesquisandoTELEFONE_COMERCIAL: TStringField
      FieldName = 'TELEFONE_COMERCIAL'
      Size = 13
    end
    object cdsPesquisandoTELEFONE_CELULAR: TStringField
      FieldName = 'TELEFONE_CELULAR'
      Size = 13
    end
    object cdsPesquisandoCOD_FK_ESTADO: TIntegerField
      FieldName = 'COD_FK_ESTADO'
    end
    object cdsPesquisandoCOD_FK_CIDADE: TIntegerField
      FieldName = 'COD_FK_CIDADE'
    end
    object cdsPesquisandoSIGLA_ESTADO: TStringField
      FieldName = 'SIGLA_ESTADO'
      Required = True
      Size = 2
    end
    object cdsPesquisandoNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Required = True
      Size = 100
    end
    object cdsPesquisandoCC_CODIGO: TStringField
      FieldName = 'CC_CODIGO'
      ReadOnly = True
      Size = 10
    end
  end
  inherited dsPesquisando: TDataSource
    Left = 87
    Top = 71
  end
  object dspPesquisando: TDataSetProvider
    DataSet = zQryPesquisando
    Left = 30
    Top = 71
  end
  object zQryPesquisando: TZQuery
    Connection = DM.ZConnection
    SQL.Strings = (
      'SELECT'
      '  p.codigo,p.nome,p.email,p.cnpj,'
      
        '  p.telefone_residencial,p.telefone_comercial,p.telefone_celular' +
        ','
      '  p.cod_fk_estado,p.cod_fk_cidade,'
      '  e.sigla as sigla_estado,'
      '  c.nome as nome_cidade,'
      '  CAST(p.codigo AS VARCHAR(10))AS cc_codigo'
      'FROM pessoa_juridica p'
      'JOIN estado e ON p.cod_fk_estado=e.codigo'
      'JOIN cidade c ON p.cod_fk_cidade=c.codigo')
    Params = <>
    Left = 2
    Top = 71
    object zQryPesquisandoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object zQryPesquisandoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object zQryPesquisandoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object zQryPesquisandoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 30
    end
    object zQryPesquisandoTELEFONE_RESIDENCIAL: TStringField
      FieldName = 'TELEFONE_RESIDENCIAL'
      Size = 13
    end
    object zQryPesquisandoTELEFONE_COMERCIAL: TStringField
      FieldName = 'TELEFONE_COMERCIAL'
      Size = 13
    end
    object zQryPesquisandoTELEFONE_CELULAR: TStringField
      FieldName = 'TELEFONE_CELULAR'
      Size = 13
    end
    object zQryPesquisandoCOD_FK_ESTADO: TIntegerField
      FieldName = 'COD_FK_ESTADO'
    end
    object zQryPesquisandoCOD_FK_CIDADE: TIntegerField
      FieldName = 'COD_FK_CIDADE'
    end
    object zQryPesquisandoSIGLA_ESTADO: TStringField
      FieldName = 'SIGLA_ESTADO'
      Required = True
      Size = 2
    end
    object zQryPesquisandoNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Required = True
      Size = 100
    end
    object zQryPesquisandoCC_CODIGO: TStringField
      FieldName = 'CC_CODIGO'
      ReadOnly = True
      Size = 10
    end
  end
end
