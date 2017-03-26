inherited fmWaveEditor: TfmWaveEditor
  Left = 186
  Top = 149
  Caption = 'fmWaveEditor'
  ClientWidth = 734
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 201
    Top = 0
    Width = 2
    Height = 485
    Cursor = crHSplit
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 201
    Height = 485
    Align = alLeft
    BevelOuter = bvLowered
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 203
    Top = 0
    Width = 531
    Height = 485
    Align = alClient
    BevelOuter = bvNone
    FullRepaint = False
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 531
      Height = 41
      Align = alTop
      Constraints.MinWidth = 252
      TabOrder = 0
      object ToolBar1: TToolBar
        Left = 445
        Top = 1
        Width = 85
        Height = 39
        Align = alRight
        AutoSize = True
        BorderWidth = 4
        Caption = 'ToolBar1'
        EdgeBorders = []
        Flat = True
        Images = ImageList1
        TabOrder = 0
        object btnStop: TToolButton
          Left = 0
          Top = 0
          Action = actWaveStop
          Grouped = True
          Style = tbsCheck
        end
        object btnPlay: TToolButton
          Left = 23
          Top = 0
          Action = actWavePlay
          Grouped = True
          Style = tbsCheck
        end
        object btnPause: TToolButton
          Left = 46
          Top = 0
          Action = actWavePause
          Style = tbsCheck
        end
      end
    end
    object ListView1: TListView
      Left = 0
      Top = 41
      Width = 531
      Height = 444
      Align = alClient
      Columns = <
        item
          Caption = 'Name'
        end
        item
        end>
      TabOrder = 1
      ViewStyle = vsReport
    end
  end
  object ImageList1: TImageList
    Left = 656
    Top = 256
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001001000000000000008
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF03FF03FF03FF03FF03FF03FF03
      FF03FF03FF03FF03FF03FF03FF03FF030000FF03FF03FF03FF03FF03FF03FF03
      FF03FF03FF03FF03FF03FF03FF03FF030000FF03FF03FF03FF03FF03FF03FF03
      FF03FF03FF03FF03FF03FF03FF03FF0300000000000000000000000000000000
      000000000000000000000000000000000000FF03000000000000000000000000
      0000000000000000000000000000FF030000FF03000000000000000000000000
      0000000000000000000000000000FF030000FF03000000000000000000000000
      0000000000000000000000000000FF0300000000000000000000000000000000
      000000000000000000000000000000000000FF030000FF7FEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3D0000FF030000FF030000FF7FEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3D0000FF030000FF030000FF7FEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3D0000FF0300000000000000000000000000000000
      000000000000000000000000000000000000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF030000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF030000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF0300000000000000000000000000000000
      000000000000000000000000000000000000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF030000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF030000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF0300000000000000000000000000000000
      000000000000000000000000000000000000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF030000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF030000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF0300000000000000000000000000000000
      000000000000000000000000000000000000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF030000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF030000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF0300000000000000000000000000000000
      000000000000000000000000000000000000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF030000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF030000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF0300000000000000000000000000000000
      000000000000000000000000000000000000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF030000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF030000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF0300000000000000000000000000000000
      000000000000000000000000000000000000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF030000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF030000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF0300000000000000000000000000000000
      000000000000000000000000000000000000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF030000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF030000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF0300000000000000000000000000000000
      000000000000000000000000000000000000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF030000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF030000FF030000FF7F0000000000000000
      00000000000000000000EF3D0000FF0300000000000000000000000000000000
      000000000000000000000000000000000000FF030000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000FF030000FF030000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000FF030000FF030000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000FF0300000000000000000000000000000000
      000000000000000000000000000000000000FF03000000000000000000000000
      0000000000000000000000000000FF030000FF03000000000000000000000000
      0000000000000000000000000000FF030000FF03000000000000000000000000
      0000000000000000000000000000FF0300000000000000000000000000000000
      000000000000000000000000000000000000FF03FF03FF03FF03FF03FF03FF03
      FF03FF03FF03FF03FF03FF03FF03FF030000FF03FF03FF03FF03FF03FF03FF03
      FF03FF03FF03FF03FF03FF03FF03FF030000FF03FF03FF03FF03FF03FF03FF03
      FF03FF03FF03FF03FF03FF03FF03FF0300000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF00000001000100010000
      000100010001000000010001000100001FF11FF11FF100001FF11DF11FF10000
      18311CF11931000018311C711931000018311C311931000018311C7119310000
      18311CF1193100001FF11DF11FF100001FF11FF11FF100000001000100010000
      0001000100010000000100010001000000000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 600
    Top = 240
    object actWaveStop: TAction
      Category = 'Wave'
      Caption = 'Stop'
      ImageIndex = 0
      OnExecute = actWaveStopExecute
    end
    object actWavePlay: TAction
      Category = 'Wave'
      Caption = 'Play'
      ImageIndex = 1
      OnExecute = actWavePlayExecute
    end
    object actWavePause: TAction
      Category = 'Wave'
      Caption = 'Pause'
      ImageIndex = 2
      OnExecute = actWavePauseExecute
    end
  end
end