object Form1: TForm1
  Left = 313
  Top = 209
  Caption = 'TAdvGridRTFIO demo 64'
  ClientHeight = 422
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object AdvStringGrid1: TAdvStringGrid
    Left = 8
    Top = 40
    Width = 705
    Height = 361
    Cursor = crDefault
    ColCount = 8
    DefaultColWidth = 96
    DefaultRowHeight = 64
    RowCount = 6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ControlLook.NoDisabledCheckRadioLook = True
    Filter = <>
    FixedColWidth = 20
    FixedRowHeight = 25
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    GridImages = ImageList1
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -11
    PrintSettings.Font.Name = 'MS Sans Serif'
    PrintSettings.Font.Style = []
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -11
    PrintSettings.FixedFont.Name = 'MS Sans Serif'
    PrintSettings.FixedFont.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -11
    PrintSettings.HeaderFont.Name = 'MS Sans Serif'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -11
    PrintSettings.FooterFont.Name = 'MS Sans Serif'
    PrintSettings.FooterFont.Style = []
    PrintSettings.PageNumSep = '/'
    SearchFooter.FindNextCaption = 'Find next'
    SearchFooter.FindPrevCaption = 'Find previous'
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
    URLShow = True
    ColWidths = (
      20
      96
      96
      96
      96
      96
      96
      96)
    RowHeights = (
      25
      64
      64
      64
      64
      64)
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 153
    Height = 25
    Caption = 'Export to RTF file'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ImageList1: TImageList
    Left = 204
    Top = 8
    Bitmap = {
      494C010105000A00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF0000007B7B7B00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF0000007B7B7B00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF0000007B7B7B00FFFFFF0000FFFF007B0000007B0000007B00
      00007B7B7B00FFFFFF007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF0000007B7B7B00FFFFFF007B7B0000FF000000FF000000FF00
      00007B000000FFFFFF007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF0000007B7B7B00FFFFFF007B7B00007B7B7B00007B0000FF00
      00007B000000FFFFFF007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000007B0000007B00007B7B7B00FFFFFF007B7B0000FFFFFF007B7B7B00007B
      00007B000000FFFFFF007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000007B
      0000007B0000007B00007B7B7B00FFFFFF0000FFFF007B7B00007B7B00007B7B
      00007B7B7B00FFFFFF007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000007B
      0000007B0000007B00007B7B7B00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF0000000000
      0000007B0000007B00007B7B7B00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF007B7B7B00FFFFFF007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00FF000000FF00
      0000FFFFFF00000000007B7B7B00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00FF000000FFFF
      FF0000000000FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FF00
      0000FF00000000000000FFFFFF0000000000007B0000007B0000007B0000007B
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B00FF000000FF000000FFFFFF0000000000007B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000007B00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00BDBDBD0000FFFF00BDBDBD00BDBDBD00000000007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      7B00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF000000000000FFFF00BDBD
      BD007B7B7B007B7B7B000000000000000000000000000000000000007B000000
      7B0000007B00FFFFFF0000000000000000000000000000000000000000000000
      000000007B00FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000007B7B7B00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD007B7B7B0000000000000000000000000000000000000000000000
      00007B7B7B0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000FFFF
      FF0000FFFF00BDBDBD007B7B7B0000000000000000000000000000007B000000
      7B0000007B00FFFFFF0000000000000000000000000000000000000000000000
      7B00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000007B7B7B00007B7B00BDBD
      BD00BDBDBD00BDBDBD00007B7B00007B7B00007B7B00BDBDBD00BDBDBD00BDBD
      BD00007B7B007B7B7B0000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000000000007B7B7B00000000000000000000000000000000000000
      7B0000007B0000007B00FFFFFF0000000000000000000000000000007B000000
      7B00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000007B7B7B0000FFFF00007B
      7B00BDBDBD00007B7B00000000000000000000000000007B7B00BDBDBD00007B
      7B00BDBDBD007B7B7B0000000000000000000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF0000FFFF007B7B7B000000
      0000FFFFFF0000FFFF00BDBDBD00000000000000000000000000000000000000
      000000007B0000007B0000007B00FFFFFF000000000000007B0000007B00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000007B7B7B00FFFFFF00FFFF
      FF00007B7B0000000000FFFFFF00FFFFFF0000FFFF0000000000007B7B00BDBD
      BD00BDBDBD007B7B7B0000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00BDBDBD00000000000000000000000000000000000000
      00000000000000007B0000007B0000007B0000007B0000007B00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000007B7B7B0000FFFF00BDBD
      BD0000000000FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000000000007B
      7B00BDBDBD007B7B7B0000000000000000000000000000000000000000000000
      0000000000007B7B00007B7B000000000000FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000007B0000007B0000007B00FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF0000000000000000007B7B7B00BDBDBD000000
      000000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF000000
      0000007B7B007B7B7B000000000000000000000000007B7B00007B7B00000000
      000000000000000000007B7B000000000000FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00BDBDBD00000000000000000000000000000000000000
      00000000000000007B0000007B0000007B0000007B0000007B00FFFFFF000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF0000FFFF000000000000000000000000007B7B7B0000000000FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF0000000000007B7B00000000000000000000000000FFFF00007B7B00000000
      0000FFFF0000000000007B7B0000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000FFFF00BDBDBD00000000000000000000000000000000000000
      000000007B0000007B0000007B00FFFFFF000000000000007B00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF0000FFFF00000000000000000000000000000000007B7B7B00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF0000000000000000000000000000000000FFFF0000FFFF00000000
      000000000000FFFF0000FFFF000000000000FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00BDBDBD0000000000000000000000000000007B000000
      7B0000007B0000007B00FFFFFF0000000000000000000000000000007B000000
      7B00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000000000FFFFFF000000000000FFFF0000FF
      FF00000000000000FF000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00BDBDBD00000000000000000000007B0000007B000000
      7B0000007B00FFFFFF0000000000000000000000000000000000000000000000
      7B0000007B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000FFFF0000FFFF000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00BDBDBD00000000000000000000007B0000007B00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000007B0000007B00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FC00000000000000F800000000000000
      E000000000000000C00000000000000080000000000000008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      100100000000000084030000000000008803000000000000C507000000000000
      E08F000000000000F83F000000000000FFFFFFFFFFFFC001FFFFF00FFFF9C001
      8001E003E7FFC0018001E001C3F3C0018001F000C3E7C0018001F000E1C7C001
      8001F800F08FC0018001F800F81F800080019000FC3F800080010000F81FC001
      80010000F09FE00180010000C1C7F0018001980083E3F801FFFFF8008FF1FC11
      FFFFF800FFFFFE31FFFFFFFFFFFFFF7F00000000000000000000000000000000
      000000000000}
  end
  object AdvGridRTFIO1: TAdvGridRTFIO
    AdvStringGrid = AdvStringGrid1
    GridStartRow = 0
    GridStartCol = 0
    Options.ExportBackGround = True
    Options.ExportOverwrite = omAlways
    Options.ExportOverwriteMessage = 'File already exists'#13'Ok to overwrite ?'
    Options.ExportShowInWord = True
    Options.ExportMsWordFeatures = True
    Options.ExportImages = False
    Options.ConvertHTML = True
    Options.ExportRTFCell = True
    Version = '1.1.0.1'
    Left = 240
    Top = 8
  end
end
