object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Header dropdown menus demo 69'
  ClientHeight = 281
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object AdvStringGrid1: TAdvStringGrid
    Left = 8
    Top = 8
    Width = 409
    Height = 265
    Cursor = crDefault
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    GridFixedLineColor = 13947601
    OnFixedDropDownClick = AdvStringGrid1FixedDropDownClick
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ActiveCellColor = clBtnFace
    ActiveCellColorTo = clBtnFace
    ControlLook.FixedGradientMirrorFrom = 16447735
    ControlLook.FixedGradientMirrorTo = 16052977
    ControlLook.FixedGradientHoverFrom = 16775139
    ControlLook.FixedGradientHoverTo = 16775139
    ControlLook.FixedGradientHoverMirrorFrom = 16772541
    ControlLook.FixedGradientHoverMirrorTo = 16508855
    ControlLook.FixedGradientDownFrom = 16377020
    ControlLook.FixedGradientDownTo = 16377020
    ControlLook.FixedGradientDownMirrorFrom = 16242317
    ControlLook.FixedGradientDownMirrorTo = 16109962
    ControlLook.FixedGradientDownBorder = 11440207
    ControlLook.FixedDropDownButton = True
    Filter = <>
    FixedRowHeight = 22
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    HoverFixedCells = hfFixedRows
    Look = glVista
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -11
    PrintSettings.Font.Name = 'Tahoma'
    PrintSettings.Font.Style = []
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -11
    PrintSettings.FixedFont.Name = 'Tahoma'
    PrintSettings.FixedFont.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -11
    PrintSettings.HeaderFont.Name = 'Tahoma'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -11
    PrintSettings.FooterFont.Name = 'Tahoma'
    PrintSettings.FooterFont.Style = []
    PrintSettings.PageNumSep = '/'
    SearchFooter.Color = clBtnFace
    SearchFooter.FindNextCaption = 'Find &next'
    SearchFooter.FindPrevCaption = 'Find &previous'
    SearchFooter.Font.Charset = DEFAULT_CHARSET
    SearchFooter.Font.Color = clWindowText
    SearchFooter.Font.Height = -11
    SearchFooter.Font.Name = 'Tahoma'
    SearchFooter.Font.Style = []
    SearchFooter.HighLightCaption = 'Highlight'
    SearchFooter.HintClose = 'Close'
    SearchFooter.HintFindNext = 'Find next occurence'
    SearchFooter.HintFindPrev = 'Find previous occurence'
    SearchFooter.HintHighlight = 'Highlight occurences'
    SearchFooter.MatchCaseCaption = 'Match case'
    SelectionColor = clHighlight
    SelectionTextColor = clWhite
    SortSettings.HeaderColor = 16579058
    SortSettings.HeaderColorTo = 16579058
    SortSettings.HeaderMirrorColor = 16380385
    SortSettings.HeaderMirrorColorTo = 16182488
  end
  object AdvStickyPopupMenu1: TAdvStickyPopupMenu
    ButtonBar = <>
    ItemImages = ImageList1
    MenuItems = <
      item
        Style = isCheckBox
        Caption = '0..25'
      end
      item
        Style = isCheckBox
        Caption = '26..50'
      end
      item
        Style = isCheckBox
        Caption = '51..75'
      end
      item
        Style = isCheckBox
        Caption = '76..100'
      end
      item
        Style = isSplitter
      end
      item
        Style = isMenuItem
        Caption = 'Sort ascending'
        ImageIndex = 1
      end
      item
        Style = isMenuItem
        Caption = 'Sort descending'
        ImageIndex = 0
      end>
    ShowButtonBar = False
    Styler = AdvMenuOfficeStyler1
    Version = '1.3.0.5'
    OnItemClick = AdvStickyPopupMenu1ItemClick
    OnCheckClick = AdvStickyPopupMenu1CheckClick
    OnMenuHide = AdvStickyPopupMenu1MenuHide
    Left = 352
    Top = 168
  end
  object AdvMenuOfficeStyler1: TAdvMenuOfficeStyler
    AntiAlias = aaNone
    AutoThemeAdapt = False
    Style = osVista
    Background.Position = bpCenter
    Background.Color = 15658734
    ButtonAppearance.DownColor = 13421257
    ButtonAppearance.DownColorTo = 15395047
    ButtonAppearance.HoverColor = 14737117
    ButtonAppearance.HoverColorTo = 16052977
    ButtonAppearance.DownBorderColor = 11906984
    ButtonAppearance.HoverBorderColor = 11906984
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Tahoma'
    ButtonAppearance.CaptionFont.Style = []
    IconBar.Color = 15658734
    IconBar.ColorTo = clNone
    IconBar.CheckColor = 16052198
    IconBar.CheckBorder = 15127501
    IconBar.RadioColor = 16052198
    IconBar.RadioBorder = 15127501
    IconBar.SeparatorColor = 12961221
    SelectedItem.Color = 16052715
    SelectedItem.ColorTo = 15985626
    SelectedItem.BorderColor = 15456424
    SelectedItem.Font.Charset = DEFAULT_CHARSET
    SelectedItem.Font.Color = clWindowText
    SelectedItem.Font.Height = -11
    SelectedItem.Font.Name = 'Tahoma'
    SelectedItem.Font.Style = []
    SelectedItem.NotesFont.Charset = DEFAULT_CHARSET
    SelectedItem.NotesFont.Color = clWindowText
    SelectedItem.NotesFont.Height = -8
    SelectedItem.NotesFont.Name = 'Tahoma'
    SelectedItem.NotesFont.Style = []
    SelectedItem.CheckColor = 16052198
    SelectedItem.CheckBorder = 15127501
    SelectedItem.RadioColor = 16052198
    SelectedItem.RadioBorder = 15127501
    RootItem.Color = clWhite
    RootItem.ColorTo = 15653844
    RootItem.GradientDirection = gdVertical
    RootItem.Font.Charset = DEFAULT_CHARSET
    RootItem.Font.Color = clMenuText
    RootItem.Font.Height = -11
    RootItem.Font.Name = 'Tahoma'
    RootItem.Font.Style = []
    RootItem.SelectedColor = 12302518
    RootItem.SelectedColorTo = 14799049
    RootItem.SelectedColorMirror = 14799049
    RootItem.SelectedColorMirrorTo = 15325909
    RootItem.SelectedBorderColor = 5459275
    RootItem.HoverColor = clWhite
    RootItem.HoverColorTo = 15194579
    RootItem.HoverColorMirror = 15194579
    RootItem.HoverColorMirrorTo = 16380399
    RootItem.HoverBorderColor = 10984085
    Glyphs.SubMenu.Data = {
      5A000000424D5A000000000000003E0000002800000004000000070000000100
      0100000000001C0000000000000000000000020000000200000000000000FFFF
      FF0070000000300000001000000000000000100000003000000070000000}
    Glyphs.Check.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FDFF0000F8FF0000F07F0000F23F
      0000F71F0000FF8F0000FFCF0000FFEF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    Glyphs.Radio.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FC3F0000F81F0000F81F
      0000F81F0000F81F0000FC3F0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    SideBar.Font.Charset = DEFAULT_CHARSET
    SideBar.Font.Color = clWhite
    SideBar.Font.Height = -19
    SideBar.Font.Name = 'Tahoma'
    SideBar.Font.Style = [fsBold, fsItalic]
    SideBar.Image.Position = bpCenter
    SideBar.Background.Position = bpCenter
    SideBar.SplitterColorTo = clBlack
    Separator.Color = 14737632
    Separator.ColorTo = clWhite
    Separator.GradientType = gtBoth
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clGray
    NotesFont.Height = -8
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    MenuBorderColor = 9934743
    Left = 352
    Top = 208
  end
  object ImageList1: TImageList
    Left = 352
    Top = 240
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004490600055B0900066C0C00066C0C00055E0A00044C06000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004490600055B0900066C0C00066C0C00055E0A00044C06000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D060000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B116006FD17700BCEAC10020B92F0009B2190009B4
      190009BA1A000784100006670C0000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B11600C2ECC600FFFFFF0050C85C0009B2190009B4
      190009BA1A000784100006670C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0058CB6300F2FBF300FFFFFF00A6E3AC000BB31B0009B2
      190009B3190009BA1A0006670C0000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0009B21900C0EBC400FFFFFF0051C95D0009B2190009B2
      190009B3190009BA1A0006670C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210001B9A3A002AC65B001DBB
      45000EB425005BCC6600F6FCF700FFFFFF00FFFFFF00FFFFFF0096DE9D000BB3
      1B0009B2190009B81A0008941300045D0900087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0009B21A00BFEBC300FFFFFF0050C85C0009B2190009B2
      190009B2190009B81A0008941300045D09000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210002AB65B002CC5650022BD
      4D0067CF7300F7FDF800FDFEFD00F8FDF900FDFEFD00FAFDFA00FFFFFF008EDC
      95000EB41E0009B51A0008AB1700045D0900087210002AB65B002CC5650022BD
      4D002DBD3E0012B421000CB31C00C0EBC300FFFFFF0050C85C0009B219002ABC
      380017B6260009B51A0008AB1700045D09000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F821C0037C26C0033C76C0036C5
      6A00F0FAF300FFFFFF009CE2AF00C7EED200FFFFFF0083D88B00E4F7E600FFFF
      FF0097DE9E0008B4190009B3190005650B000F821C0037C26C0033C76C0036C5
      6A00E4F7E900A5E4B5002AC05300C5EED000FFFFFF0041C34D004FC85A00F5FC
      F600ADE5B20008B4190009B3190005650B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000138D230058CC830042C9770037C5
      6E00E6F8ED00ADE8C40038C67000C9F0D900FFFFFF0044C551004FC85C00F5FC
      F600ADE5B2000AB41A0009B31900066D0D00138D230058CC830042C9770037C5
      6E00F1FBF500FFFFFF00A3E5BD00CBF0DA00FFFFFF0085D98E00E4F7E600FFFF
      FF0097DE9E000AB41A0009B31900066D0D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D006FD293005FD38D0031C3
      690050CC80003DC7730038C56F00CAF0D800FFFFFF005CCE76001AB93E0037C1
      530025BC440011B82B0008B1190005610A000F911D006FD293005FD38D0031C3
      690080DAA300F9FDFA00FDFFFE00F9FDFB00FDFEFE00FBFEFB00FFFFFF0095DE
      A4001DB93D0011B82B0008B1190005610A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F00CBF0D900FFFFFF0061D081001EBC49001EBC
      47001AB93E0010BA290008A3170005610A000F911D0067CC83009BE5BA0038C6
      700030C369007AD89E00F8FDFA00FFFFFF00FFFFFF00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000037B65000BCEDD20082DB
      A40028C063002FC2670038C56F00CCF0DA00FFFFFF0067D2890020BB4A001DBA
      410018B7360014C030000A851700000000000000000037B65000BCEDD20082DB
      A40028C063002FC2670078D89D00F5FCF800FFFFFF00B1E8C30022BC4B001DBA
      410018B7360014C030000A851700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000037B6500071D28C00D2F4
      E10080DAA30036C46D002DC26700CDF1DB00FFFFFF0067D38E0024BE560023BC
      4D001FC1460016AE34000A851700000000000000000037B6500071D28C00D2F4
      E10080DAA30036C46D002DC267008ADDAA00C9EFD8003DC76F0024BE560023BC
      4D001FC1460016AE34000A851700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000066CD
      810066CD8100ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB1570000000000000000000000000000000000000000000000000066CD
      810066CD8100ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032B74E0052C46F0061CB80005DC87D0043B9640024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032B74E0052C46F0061CB80005DC87D0043B9640024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F81FF81F00000000E007E00700000000
      C003C00300000000800180010000000080018001000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000080018001000000008001800100000000C003C00300000000
      E007E00700000000F81FF81F0000000000000000000000000000000000000000
      000000000000}
  end
end