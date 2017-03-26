object DM: TDM
  OldCreateOrder = False
  Left = 508
  Top = 121
  Height = 347
  Width = 371
  object SQLConnection: TSQLConnection
    ConnectionName = 'Emporio'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=C:\Emporio\BD\BD.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'C:\WINDOWS\system32\FBCLIENT.DLL'
    Connected = True
    Left = 104
    Top = 24
  end
  object qryCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM Cliente')
    SQLConnection = SQLConnection
    Left = 72
    Top = 84
    object qryClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qryClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qryClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 80
    end
    object qryClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object qryClienteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qryClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qryClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object qryClienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object qryClienteCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object qryClienteIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 30
    end
    object qryClienteDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
    end
    object qryClienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 9
    end
    object qryClienteESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Size = 15
    end
    object qryClienteNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 50
    end
    object qryClienteDATA_FICHA: TSQLTimeStampField
      FieldName = 'DATA_FICHA'
    end
  end
  object qryFornecedor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM Fornecedor')
    SQLConnection = SQLConnection
    Left = 152
    Top = 84
    object qryFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryFornecedorRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 80
    end
    object qryFornecedorNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 80
    end
    object qryFornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qryFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 80
    end
    object qryFornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object qryFornecedorUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qryFornecedorCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qryFornecedorE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 50
    end
    object qryFornecedorHOME_PAGE: TStringField
      FieldName = 'HOME_PAGE'
      Size = 80
    end
    object qryFornecedorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object qryFornecedorCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object qryFornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object qryFornecedorINSCRICAO_ESTADUAL: TStringField
      FieldName = 'INSCRICAO_ESTADUAL'
      Size = 30
    end
    object qryFornecedorREPRESENTANTE: TStringField
      FieldName = 'REPRESENTANTE'
      Size = 80
    end
    object qryFornecedorDATA_FICHA: TSQLTimeStampField
      FieldName = 'DATA_FICHA'
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = qryCliente
    Left = 72
    Top = 125
  end
  object dspFornecedor: TDataSetProvider
    DataSet = qryFornecedor
    Left = 152
    Top = 125
  end
  object cdsCliente: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 72
    Top = 166
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object cdsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 80
    end
    object cdsClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsClienteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object cdsClienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object cdsClienteCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsClienteIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 30
    end
    object cdsClienteDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
    end
    object cdsClienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 9
    end
    object cdsClienteESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Size = 15
    end
    object cdsClienteNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 50
    end
    object cdsClienteDATA_FICHA: TSQLTimeStampField
      FieldName = 'DATA_FICHA'
    end
  end
  object cdsFornecedor: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 152
    Top = 166
    object cdsFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFornecedorRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 80
    end
    object cdsFornecedorNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 80
    end
    object cdsFornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 80
    end
    object cdsFornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsFornecedorUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsFornecedorCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsFornecedorE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 50
    end
    object cdsFornecedorHOME_PAGE: TStringField
      FieldName = 'HOME_PAGE'
      Size = 80
    end
    object cdsFornecedorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object cdsFornecedorCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object cdsFornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsFornecedorINSCRICAO_ESTADUAL: TStringField
      FieldName = 'INSCRICAO_ESTADUAL'
      Size = 30
    end
    object cdsFornecedorREPRESENTANTE: TStringField
      FieldName = 'REPRESENTANTE'
      Size = 80
    end
    object cdsFornecedorDATA_FICHA: TSQLTimeStampField
      FieldName = 'DATA_FICHA'
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 72
    Top = 208
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 152
    Top = 208
  end
end