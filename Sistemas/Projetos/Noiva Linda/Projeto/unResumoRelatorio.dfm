object frmResumoRelatorio: TfrmResumoRelatorio
  Left = 237
  Top = 114
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'NOIVA LINDA --> '
  ClientHeight = 201
  ClientWidth = 388
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
  PixelsPerInch = 96
  TextHeight = 13
  object lblData: TLabel
    Left = 20
    Top = 110
    Width = 93
    Height = 20
    Caption = 'Valor Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblValorTotal: TLabel
    Left = 188
    Top = 110
    Width = 101
    Height = 20
    Caption = 'lblValorTotal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 20
    Top = 30
    Width = 110
    Height = 20
    Caption = 'Pesquisa por:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPesquisaPor: TLabel
    Left = 188
    Top = 30
    Width = 119
    Height = 20
    Caption = 'lblPesquisaPor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 20
    Top = 70
    Width = 67
    Height = 20
    Caption = 'Per'#237'odo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPeriodo: TLabel
    Left = 188
    Top = 70
    Width = 80
    Height = 20
    Caption = 'lblPeriodo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 20
    Top = 150
    Width = 153
    Height = 20
    Caption = 'Total de Registros:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotalRegistros: TLabel
    Left = 188
    Top = 150
    Width = 136
    Height = 20
    Caption = 'lblTotalRegistros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 182
    Width = 388
    Height = 19
    Panels = <
      item
        Width = 250
      end
      item
        Width = 50
      end>
  end
  object ApplicationEvents: TApplicationEvents
    OnHint = ApplicationEventsHint
    Left = 8
    Top = 6
  end
end
