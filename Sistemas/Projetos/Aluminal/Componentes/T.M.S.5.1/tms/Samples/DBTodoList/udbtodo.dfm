�
 TFORM1 0%  TPF0TForm1Form1Left�Top� Width1Height�CaptionTMS TDBTodoList demoColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderPositionpoScreenCenterPixelsPerInch`
TextHeight TPageControlPageControl1Left Top!Width)Height)
ActivePage	TabSheet1AlignalTopTabOrder  	TTabSheet	TabSheet1Caption
DBTodoList TDBTodoListDBTodoList1Left Top Width!HeightAlignalClientAutoInsertItem	AutoDeleteItem	ColorclWindowColumns	AlignmenttaLeftJustifyColorclWindowFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style TodoDatatdHandleWidth Editable 	AlignmenttaLeftJustifyColorclWindowFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style TodoData	tdSubjectWidthdEditable	 	AlignmenttaLeftJustifyColorclWindowFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style TodoDatatdNotesWidth,Editable	 	AlignmenttaLeftJustifyColorclWindowFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style TodoData
tdPriorityWidthdEditable	 	AlignmenttaLeftJustifyColorclWindowFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style TodoData
tdCompleteWidthdEditable	 	AlignmenttaLeftJustifyColorclWindowFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style TodoDatatdCompletionDateWidthdEditable	  CompleteCheck.CheckType
ctCheckBoxCompletionFont.CharsetDEFAULT_CHARSETCompletionFont.ColorclGrayCompletionFont.Height�CompletionFont.NameMS Sans SerifCompletionFont.StylefsStrikeOut 
DataSourceDataSource1
DateFormat	d/MM/yyyy
DragCursorcrDragDragModedmAutomaticDragKinddkDragEditable	!EditColors.StringEditor.FontColorclWindowText!EditColors.StringEditor.BackColorclWindowEditColors.MemoEditor.FontColorclWindowTextEditColors.MemoEditor.BackColorclWindow"EditColors.IntegerEditor.FontColorclWindowText"EditColors.IntegerEditor.BackColorclWindow#EditColors.PriorityEditor.FontColorclWindowText#EditColors.PriorityEditor.BackColorclWindow!EditColors.StatusEditor.FontColorclWindowText!EditColors.StatusEditor.BackColorclWindow&EditColors.PlannerDateEditor.BackColorclWindow&EditColors.PlannerDateEditor.FontColorclWindowText1EditColors.PlannerDateEditor.CalendarColors.Color	clBtnFace9EditColors.PlannerDateEditor.CalendarColors.EventDayColorclBlack<EditColors.PlannerDateEditor.CalendarColors.EventMarkerColorclYellow6EditColors.PlannerDateEditor.CalendarColors.FocusColorclHighlight7EditColors.PlannerDateEditor.CalendarColors.HeaderColorclNone9EditColors.PlannerDateEditor.CalendarColors.InactiveColorclGray7EditColors.PlannerDateEditor.CalendarColors.SelectColorclTeal;EditColors.PlannerDateEditor.CalendarColors.SelectFontColorclWhite5EditColors.PlannerDateEditor.CalendarColors.TextColorclBlack8EditColors.PlannerDateEditor.CalendarColors.WeekendColorclRed&EditColors.DefaultDateEditor.BackColorclWindow&EditColors.DefaultDateEditor.FontColorclWindowTextEditSelectAll	Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 	GridLinesHeaderFont.CharsetDEFAULT_CHARSETHeaderFont.ColorclWindowTextHeaderFont.Height�HeaderFont.NameMS Sans SerifHeaderFont.Style 
ItemHeightPreviewPreviewFont.CharsetDEFAULT_CHARSETPreviewFont.ColorclBluePreviewFont.Height�PreviewFont.NameMS Sans SerifPreviewFont.Style PreviewHeight@PriorityFont.CharsetDEFAULT_CHARSETPriorityFont.ColorclRedPriorityFont.Height�PriorityFont.NameMS Sans SerifPriorityFont.Style PriorityStrings.LowestLowestPriorityStrings.LowLowPriorityStrings.NormalNormalPriorityStrings.HighHighPriorityStrings.HighestHighestProgressLook.CompleteColorclRedProgressLook.CompleteFontColorclWhiteProgressLook.UnCompleteColorclWindow ProgressLook.UnCompleteFontColorclWindowTextSelectionColor.�� SelectionFontColorclHighlightTextShowSelection	Sorted	SortDirectionsdAscending
SortColumn StatusStrings.DeferredDeferredStatusStrings.NotStartedNot startedStatusStrings.Completed	CompletedStatusStrings.InProgressIn progressTabOrderTabStopTodoFields.SubjectFieldSUBJECTTodoFields.NotesFieldNOTESTodoFields.CompleteFieldCOMPLETETodoFields.CompletionDateFieldCOMPLETIONDATETodoFields.PriorityFieldPRIORITYTodoFields.KeyFieldKEY
OnEditDoneDBTodoList1EditDone	OnKeyDownDBTodoList1KeyDown   	TTabSheet	TabSheet2CaptionTodo Database
ImageIndex   TPanelPanel1Left Top Width)Height!AlignalTop
BevelOuterbvNoneTabOrder TLabelLabel1Left� TopWidth� HeightCaption-Use Ins / Del to create or delete todo items.  	TCheckBox	CheckBox1LeftTopWidthaHeightBiDiModebdLeftToRightCaptionShow previewParentBiDiModeTabOrder OnClickCheckBox1Click   TDBGridDBGrid1Left TopJWidth)Height�AlignalClient
DataSourceDataSource1OptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit TabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style ColumnsExpanded	FieldNameCOMPLETEVisible	 Expanded	FieldNameCOMPLETIONDATEVisible	 Expanded	FieldNameNOTESVisible	    TDataSourceDataSource1DataSet	ADOTable1Left�Top  	TADOTable	ADOTable1Active	ConnectionStringxProvider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Delphi7\Projects\Demos\DBTodoList\tododb.mdb;Persist Security Info=False
CursorTypectStatic	TableNametododbLeft�Top   