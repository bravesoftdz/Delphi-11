object Form1: TForm1
  Left = 493
  Top = 173
  Caption = 'TAdvStringGrid Excel import / export demo 56'
  ClientHeight = 621
  ClientWidth = 842
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object AdvStringGrid1: TAdvStringGrid
    Left = 0
    Top = 41
    Width = 842
    Height = 580
    Cursor = crDefault
    Align = alClient
    DefaultRowHeight = 21
    RowCount = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'MS Sans Serif'
    ActiveCellFont.Style = [fsBold]
    Filter = <>
    FilterDropDown.Font.Charset = DEFAULT_CHARSET
    FilterDropDown.Font.Color = clWindowText
    FilterDropDown.Font.Height = -11
    FilterDropDown.Font.Name = 'Tahoma'
    FilterDropDown.Font.Style = []
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 842
    Height = 41
    Align = alTop
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 8
      Top = 8
      Width = 28
      Height = 28
      Hint = 'Open Excel file'
      Flat = True
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000220B0000220B00000001000000010000006B00000073
        080008730800087B080008731000087B100008841000088C1000089410001084
        180008941800089C180008A5180008AD180010AD210018AD290021AD310021AD
        390021BD390029AD4A0029BD4A0031BD4A0029C64A0031AD520039BD5A0039C6
        5A0039BD630042CE6B004AD66B004AD67B0052DE84005AE78C005AEF940010A5
        D60018A5D60021A5D60021ADD60029ADD60029ADDE0031ADDE0029B5DE0031B5
        DE0039B5DE0042B5DE0039BDDE004ABDDE0039BDE70042BDE7004ABDE7005ABD
        E70063BDE7004AC6E70052C6E7005AC6E70063C6E70073C6E70052CEE7005ACE
        E7007BCEE70052CEEF005ACEEF007BCEEF008CCEEF005AD6EF0063D6EF0084D6
        EF0094D6EF0063DEEF005ACEF70063D6F7006BD6F70063DEF70073DEF700ADDE
        F7007BE7F70094E7F700BDE7F70094EFF700BDEFF700FF00FF0073DEFF007BE7
        FF0084E7FF007BEFFF0084EFFF008CEFFF009CEFFF0084F7FF008CF7FF0094F7
        FF009CF7FF00A5F7FF00B5F7FF00C6F7FF00CEF7FF008CFFFF0094FFFF009CFF
        FF00A5FFFF00B5FFFF00BDFFFF00C6FFFF00CEFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004F4F4F4F4F4F
        4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F
        4F4F4F4F4F4F4F4F4F4F4F232323352F2523224F4F4F4F4F4F4F4F4F4F4F4F4F
        4F4F4F2249636159554A46342B2523224F4F4F4F4F4F4F4F4F4F4F2132665859
        595959595855483C33292322224F4F4F4F4F4F232B4E61595959595858585959
        55555240274F4F4F4F4F4F25354263585959595858555555555555523C234F4F
        4F4F4F254A365D5859595958585555555555554A482C4F4F4F4F4F254D384C61
        5959595858555555555555485040224F4F4F4F2556433E645859595858555555
        555555484855254F4F4F4F254D582D5E6259585858555555555555480509334F
        4F4F4F254D613F324C4E5D5D645A5455555555021A1D09224F4F4F2556605940
        38353636374C5C54555500171F1F18044F4F4F255660596160595554402B495D
        590213201E1C1011024F4F255660595959595959594A2F3A021017181B191410
        10014F255A605959595959585859553F020202041515020202024F255B605959
        5959595858585559555354021112024F4F4F4F255C6059595959595656565656
        56565A040F0E024F4F4F4F223A63606059595427272A2B2B2D2D31060E0B024F
        4F4F4F4F23414B4B565B39214F4F4F4F4F4F020B0E06024F4F4F4F4F4F222323
        2525234F4F4F4F4F4F060B0C07024F4F4F4F4F4F4F4F4F4F4F4F4F4F4F020209
        0A0A0A05024F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F02040202024F4F4F4F4F
        4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 40
      Top = 8
      Width = 28
      Height = 28
      Hint = 'Save Excel file'
      Flat = True
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000220B0000220B00000001000000010000942121009429
        2900943131009C3131009C393900A5393900944242009C424200A5424200AD42
        4200A54A42009C424A009C4A4A00A54A4A00AD4A4A00B54A4A009C525200B552
        5200BD525200C6525200BD5A5A00C65A5A00CE5A5A009C636300A5636300C663
        6300CE6363009C6B6B00B56B6B00BD6B6B00C66B6B00CE6B6B00AD736B00B573
        6B009C737300A5737300B5737300BD737300C6737300CE737300B5847300A57B
        7B00AD7B7B00BD7B7B00C67B7B00CE7B7B00A5848400B5848400BD848400C684
        8400B58C8400A58C8C00AD8C8C00B58C8C00C68C8C00CE8C8C00BD949400D694
        94009C9C9C00BD9C9C00C69C9C00CE9C9C00CEA59C00ADA5A500CEA5A500D6A5
        A500C6ADAD00CEADAD00D6ADAD00B5B5B500BDB5B500DEB5B500BDBDB500B5BD
        BD00BDBDBD00D6BDBD00DEBDBD00C6C6C600CEC6C600DEC6C600E7C6C600C6CE
        CE00CECECE00D6CECE00DECECE00D6D6D600DEDED600DEDEDE00E7DEDE00E7E7
        DE00EFE7DE00E7E7E700EFE7E700F7E7E700EFEFE700F7EFE700EFEFEF00F7EF
        EF00F7F7EF00F7F7F700FFF7F700FFFFF700FF00FF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00666620100C10
        0C2345454546464545454523060C0C0C0C6666281E19191A111B455259606262
        5C58572401020414190C66281E1A1A1A141B332F43546265635E5B2401020415
        190C66281E1A1A1A14222904213C5C636462602B01020415190C66281E1A1A1A
        14232E02072456606364632B01020415190C66281E1A1A1A14233402020C4D59
        6064672C01020415190C66281E1A1A1A112A350101023F525961673101020415
        190C66281E1A1A1A112A421818173A455560673101020414190C66281E1A1A1A
        1424413C3B3834343C44502608090E19190C66281E1A1A1A1A1A1A1A1A1A1A1A
        1919191A1A1A1A1A190C66281E1914191E2727272727272727272727272D1F1A
        190C66281E0E0A1C36434B4B4B4B4B4B4B4B4B4B4B4F371A190C66281E093D62
        616161616161616161616161615C3715190C66281E0940676363636363636363
        63636363645C3714190C66281E094067616161616161616161616161635C3714
        190C66281E0940675B4E5252525252525252524D585C3714190C66281E094067
        615C5C5C5C5C5C5C5C5C5C5C615C3714190C66281E0940675C53535353535353
        535353525B5C3714190C66281E0940675E5858585858585858585858605C3714
        190C66281E0940675E5858585858585858585858605C3714190C66281E094067
        5B52535353535353535353525B5C3714190C66281E0940676464646464646464
        64646464645C3715190C66281D093D605C5C5C5C5C5C5C5C5C5C5C5C5E583611
        140C6666200832514D4D4D4D4D4D4D4D4D4D4D4D4D4E2F060C66}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = AdvStringGrid1
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    UseUnicode = False
    Version = '3.0.4'
    Left = 496
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Excel files (*.xls) |*.xls'
    Left = 560
    Top = 8
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Excel files (*.xls)|*.xls'
    Left = 528
    Top = 8
  end
end
