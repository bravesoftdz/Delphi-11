object frmPrincipal: TfrmPrincipal
  Left = 395
  Top = 241
  Width = 245
  Height = 183
  Caption = 'Principal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 20
    Width = 34
    Height = 13
    Caption = 'Nome :'
  end
  object Label2: TLabel
    Left = 20
    Top = 50
    Width = 52
    Height = 13
    Caption = 'Endere�o :'
  end
  object Label3: TLabel
    Left = 20
    Top = 80
    Width = 48
    Height = 13
    Caption = 'Telefone :'
  end
  object btnSet: TButton
    Left = 22
    Top = 110
    Width = 183
    Height = 25
    Caption = 'Set'
    TabOrder = 0
    OnClick = btnSetClick
  end
  object edNome: TEdit
    Left = 80
    Top = 14
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edNome'
  end
  object edEndereco: TEdit
    Left = 80
    Top = 44
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'edEndereco'
  end
  object edTelefone: TEdit
    Left = 80
    Top = 74
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'edTelefone'
  end
end
