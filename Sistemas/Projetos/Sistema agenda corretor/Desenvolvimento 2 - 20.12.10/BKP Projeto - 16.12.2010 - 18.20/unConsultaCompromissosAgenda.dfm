object frmConsultaCompromissosAgenda: TfrmConsultaCompromissosAgenda
  Left = 495
  Top = 183
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'CONSULTAR COMPROMISSOS'
  ClientHeight = 466
  ClientWidth = 619
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 447
    Width = 619
    Height = 19
    Panels = <
      item
        Width = 470
      end
      item
        Width = 50
      end>
  end
  object grpBxPesquisar: TGroupBox
    Left = 0
    Top = 0
    Width = 619
    Height = 71
    Align = alTop
    Caption = 'Pesquisar '
    TabOrder = 1
    object lblEntre: TLabel
      Left = 106
      Top = 34
      Width = 24
      Height = 13
      Caption = 'entre'
    end
    object dtTmPkrDataInicio: TDateTimePicker
      Left = 14
      Top = 18
      Width = 84
      Height = 21
      Date = 40393.907000682870000000
      Time = 40393.907000682870000000
      TabOrder = 0
      OnKeyPress = dtTmPkrDataInicioKeyPress
    end
    object dtTmPkrDataFim: TDateTimePicker
      Left = 139
      Top = 18
      Width = 84
      Height = 21
      Date = 40393.907000682870000000
      Time = 40393.907000682870000000
      TabOrder = 1
      OnKeyPress = dtTmPkrDataFimKeyPress
    end
    object dtTmPkrHoraInicio: TDateTimePicker
      Left = 14
      Top = 44
      Width = 84
      Height = 21
      Date = 40393.907000682870000000
      Time = 40393.907000682870000000
      Kind = dtkTime
      TabOrder = 2
      OnKeyPress = dtTmPkrHoraInicioKeyPress
    end
    object dtTmPkrHoraFim: TDateTimePicker
      Left = 139
      Top = 44
      Width = 84
      Height = 21
      Date = 40393.907000682870000000
      Time = 40393.907000682870000000
      Kind = dtkTime
      TabOrder = 3
      OnKeyPress = dtTmPkrHoraFimKeyPress
    end
  end
  object btBtnPesquisar: TBitBtn
    Left = 238
    Top = 18
    Width = 47
    Height = 46
    Hint = 'Pesquisar.'
    Default = True
    TabOrder = 2
    OnClick = btBtnPesquisarClick
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000894CE005AC6EF004ABDE70039B5E70029ADE70029ADE7000894
      CE000894CE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000894CE006BD6F70073CEEF004AADCE0042B5E70029ADE70021ADE70021A5
      DE0029ADE700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000894CE008CDEF7006B7373008C6B6B006B52520039B5DE0031B5E70029AD
      E70029ADE700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000894CE008CD6E7006B5A5A007B6B63008C6B6B003994AD0039BDEF0031B5
      E70031B5E700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000894CE00A5EFFF00BDE7EF00BDADAD00BDB5B5005A524A004ABDDE0042C6
      EF0039BDEF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000894CE00A5EFFF00C6EFFF007B6B6B00DED6D6006B5A52004AA5BD004ACE
      F70042C6EF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000894CE00A5EFFF00CEF7FF00B5DEEF0073848400E7E7DE0073635A006B73
      6B0052D6F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000894CE00A5EFFF00CEF7FF00C6EFFF00A5D6E700D6C6C600CEC6C600C6AD
      AD00634A4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000894CE00A5EFFF00CEF7FF00C6EFFF00ADEFFF005A949C00948C84008C7B
      7B009C8C8400AD9C9400A58C8C00B5A59C00735A5200FF00FF00FF00FF00FF00
      FF000894CE00A5EFFF00CEF7FF00C6EFFF00ADEFFF0063CEE7005A848400EFE7
      E700736B5A00EFDEDE00DECECE00EFE7E7009C8C8400FF00FF00FF00FF00FF00
      FF000894CE00A5EFFF00CEF7FF00C6EFFF00B5EFFF006BE7FF0063BDD600DECE
      CE00E7DEDE00E7DEDE00E7DEDE00EFE7E700F7F7F7005A423900FF00FF00FF00
      FF000894CE00ADEFFF00D6F7FF00C6F7FF00B5EFFF006BD6EF00526B6300F7EF
      F700EFE7E700EFE7E700F7EFEF00E7E7E700E7E7E70031211000FF00FF00FF00
      FF000894CE0039ADDE005ABDE7007BD6EF007BD6F70063CEEF006394A500F7F7
      F700F7F7F700E7E7DE00CEC6C60039291800DED6D600FF00FF00FF00FF00FF00
      FF000894CE00C6F7FF00C6F7FF00A5EFFF0094EFFF007BEFFF0073EFFF00BDB5
      AD00F7F7F700C6BDBD005239310073635A00E7DEDE00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00088CCE001094CE001094CE001094CE001094CE00FF00
      FF00524239005A4A4200948C7B007B7363005A4A3900FF00FF00}
  end
  object dbGrdCompromissos: TDBGrid
    Left = 0
    Top = 71
    Width = 619
    Height = 376
    Align = alClient
    DataSource = dsCompromissos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA_AVISO'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA_AVISO'
        Title.Caption = 'Hora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPROMISSO'
        Title.Caption = 'Compromisso'
        Width = 453
        Visible = True
      end>
  end
  object PopupMenu: TPopupMenu
    Left = 8
    Top = 113
    object mnItDeletarCompromisso: TMenuItem
      Caption = 'Deletar Compromisso'
      OnClick = mnItDeletarCompromissoClick
    end
  end
  object zQryCompromissos: TZQuery
    Connection = DM.ZConnection
    SQL.Strings = (
      'SELECT * FROM agenda'
      'WHERE 1=2')
    Params = <>
    Left = 8
    Top = 144
    object zQryCompromissosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object zQryCompromissosDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object zQryCompromissosDATA_AVISO: TDateField
      FieldName = 'DATA_AVISO'
      Required = True
    end
    object zQryCompromissosHORA_AVISO: TTimeField
      FieldName = 'HORA_AVISO'
      Required = True
    end
    object zQryCompromissosCOMPROMISSO: TStringField
      FieldName = 'COMPROMISSO'
      Size = 300
    end
    object zQryCompromissosDATA_HORA_AUX: TDateTimeField
      FieldName = 'DATA_HORA_AUX'
    end
    object zQryCompromissosSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
  end
  object dsCompromissos: TDataSource
    DataSet = zQryCompromissos
    Left = 36
    Top = 144
  end
end
