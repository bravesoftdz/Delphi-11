object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 509
  ClientWidth = 531
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBPlannerCalendar1: TDBPlannerCalendar
    Left = 16
    Top = 12
    Width = 337
    Height = 273
    EventDayColor = clBlack
    EventMarkerColor = clYellow
    EventMarkerShape = evsCircle
    BackgroundPosition = bpTiled
    BevelOuter = bvNone
    BorderWidth = 1
    Look = lookFlat
    DateDownColor = clNone
    DateHoverColor = clNone
    DateSelectColor = clTeal
    DayFont.Charset = DEFAULT_CHARSET
    DayFont.Color = clWindowText
    DayFont.Height = -11
    DayFont.Name = 'Tahoma'
    DayFont.Style = []
    WeekFont.Charset = DEFAULT_CHARSET
    WeekFont.Color = clWindowText
    WeekFont.Height = -11
    WeekFont.Name = 'Tahoma'
    WeekFont.Style = []
    WeekName = 'Wk'
    TextColor = clBlack
    SelectColor = clTeal
    SelectFontColor = clWhite
    InActiveColor = clGray
    HeaderColor = clNone
    FocusColor = clHighlight
    InversColor = clTeal
    WeekendColor = clRed
    NameOfDays.Monday = 'Mon'
    NameOfDays.Tuesday = 'Tue'
    NameOfDays.Wednesday = 'Wed'
    NameOfDays.Thursday = 'Thu'
    NameOfDays.Friday = 'Fri'
    NameOfDays.Saturday = 'Sat'
    NameOfDays.Sunday = 'Sun'
    NameOfMonths.January = 'Jan'
    NameOfMonths.February = 'Feb'
    NameOfMonths.March = 'Mar'
    NameOfMonths.April = 'Apr'
    NameOfMonths.May = 'May'
    NameOfMonths.June = 'Jun'
    NameOfMonths.July = 'Jul'
    NameOfMonths.August = 'Aug'
    NameOfMonths.September = 'Sep'
    NameOfMonths.October = 'Oct'
    NameOfMonths.November = 'Nov'
    NameOfMonths.December = 'Dec'
    NameOfMonths.UseIntlNames = True
    StartDay = 7
    TodayFormat = '"Today" DDD/mm, YYYY'
    Day = 28
    Month = 6
    Year = 2006
    ShowHint = True
    ParentShowHint = False
    TabOrder = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    EventHints = True
    CaptionColor = clNone
    CaptionTextColor = clBlack
    LineColor = clGray
    Line3D = True
    GradientStartColor = clWhite
    GradientEndColor = clBtnFace
    GradientDirection = gdVertical
    MonthGradientStartColor = clNone
    MonthGradientEndColor = clNone
    MonthGradientDirection = gdHorizontal
    HintPrevYear = 'Previous Year'
    HintPrevMonth = 'Previous Month'
    HintNextMonth = 'Next Month'
    HintNextYear = 'Next Year'
    Version = '1.7.0.0'
    Active = True
    AutoUpdate = True
    DataSource = DataSource1
    StartTimeField = 'RESERVSTART'
    EndTimeField = 'RESERVEND'
    SubjectField = 'RESERVNAME'
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 296
    Width = 507
    Height = 201
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Table1: TTable
    Active = True
    DatabaseName = '.\'
    TableName = 'monthplan.db'
    Left = 404
    Top = 20
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 404
    Top = 84
  end
end
