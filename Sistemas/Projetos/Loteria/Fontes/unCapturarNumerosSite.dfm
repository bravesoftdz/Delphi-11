object frmCapturarNumerosSite: TfrmCapturarNumerosSite
  Left = 245
  Top = 28
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'TIME MONEY -> N'#250'meros do Sorteio'
  ClientHeight = 609
  ClientWidth = 893
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 590
    Width = 893
    Height = 19
    Panels = <>
  end
  object WebBrsr: TWebBrowser
    Left = 0
    Top = 41
    Width = 893
    Height = 455
    Align = alClient
    TabOrder = 1
    ControlData = {
      4C0000004B5C0000072F00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object pnlDados: TPanel
    Left = 0
    Top = 496
    Width = 893
    Height = 94
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Label2: TLabel
      Left = 140
      Top = 40
      Width = 36
      Height = 13
      Caption = 'Sorteio:'
    end
    object Label3: TLabel
      Left = 140
      Top = 70
      Width = 26
      Height = 13
      Caption = 'Data:'
    end
    object Label4: TLabel
      Left = 140
      Top = 10
      Width = 26
      Height = 13
      Caption = 'Jogo:'
    end
    object lblJogo: TLabel
      Left = 183
      Top = 10
      Width = 138
      Height = 13
      AutoSize = False
    end
    object Label5: TLabel
      Left = 323
      Top = 10
      Width = 45
      Height = 13
      Caption = 'N'#250'meros:'
    end
    object Label6: TLabel
      Left = 550
      Top = 10
      Width = 98
      Height = 13
      Caption = 'Ganhadores/Premio:'
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 24
      Width = 105
      Height = 60
      Caption = 'Capturar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object mmNumeros: TMemo
      Left = 323
      Top = 34
      Width = 200
      Height = 50
      TabOrder = 1
      OnEnter = mmNumerosEnter
      OnExit = mmNumerosExit
    end
    object edSorteio: TEdit
      Left = 180
      Top = 34
      Width = 121
      Height = 21
      TabOrder = 2
      OnEnter = edSorteioEnter
      OnExit = edSorteioExit
    end
    object mEdData: TMaskEdit
      Left = 180
      Top = 64
      Width = 89
      Height = 21
      EditMask = '00/00/0000;1;_'
      MaxLength = 10
      TabOrder = 3
      Text = '  /  /    '
      OnEnter = mEdDataEnter
      OnExit = mEdDataExit
    end
    object mmHTML: TMemo
      Left = 774
      Top = 28
      Width = 96
      Height = 49
      Lines.Strings = (
        'mmHTML')
      TabOrder = 4
    end
    object mmGanhadoresPremio: TMemo
      Left = 550
      Top = 34
      Width = 200
      Height = 50
      TabOrder = 5
    end
    object btBtnImportar: TBitBtn
      Left = 768
      Top = 24
      Width = 105
      Height = 60
      Caption = 'Importar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btBtnImportarClick
    end
  end
  object pnlLink: TPanel
    Left = 0
    Top = 0
    Width = 893
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 23
      Height = 13
      Caption = 'Link:'
    end
    object edSite: TEdit
      Left = 47
      Top = 14
      Width = 750
      Height = 21
      TabOrder = 0
      Text = 
        'http://www1.caixa.gov.br/loterias/loterias/lotofacil/lotofacil_r' +
        'esultado.asp'
      OnEnter = edSiteEnter
      OnExit = edSiteExit
      OnKeyDown = edSiteKeyDown
    end
  end
end
