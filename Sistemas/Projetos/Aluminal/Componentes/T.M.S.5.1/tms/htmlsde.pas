{**************************************************************************}
{ HTML design time property editor interface                               }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3.0,4.0,5.0                      }
{ version 1.0                                                              }
{                                                                          }
{ written by TMS Software                                                  }
{            copyright � 2000 - 2001                                       }
{            Email : info@tmssoftware.com                                  }
{            Web : http://www.tmssoftware.com                              }
{                                                                          }
{ The source code is given as is. The author is not responsible            }
{ for any possible damage done due to the use of this code.                }
{ The component can be freely used in any application. The complete        }
{ source code remains property of the author and may not be distributed,   }
{ published, given or sold in any form as such. No parts of the source     }
{ code can be included in any other component or application without       }
{ written authorization of the author.                                     }
{**************************************************************************}

unit htmlsde;

interface
{$I TMSDEFS.INC}
uses
  HTMLProp, Classes, Forms, Dialogs, Controls, Windows, TypInfo, Graphics,
  PictureContainer,
{$IFDEF DELPHI6_LVL}
  {$IFNDEF TMSDOTNET}
  DesignIntf, DesignEditors
  {$ENDIF}
  {$IFDEF TMSDOTNET}
  Borland.Vcl.Design.DesignIntf, Borland.Vcl.Design.DesignEditors
  {$ENDIF}
{$ELSE}
  DsgnIntf
{$ENDIF}
  ;

type
  THTMLStringProperty = class(TClassProperty)
  public
    function GetAttributes: TPropertyAttributes; override;
    procedure Edit; override;
    procedure SetValue(const Value: String); override;
    function GetValue: String; override;
  end;

implementation

function THTMLStringProperty.GetAttributes: TPropertyAttributes;
begin
  Result := [paDialog];
end;

procedure THTMLStringProperty.Edit;
var
  HTMLEditor:THTMLEditor;
  PropInfo:PPropInfo;
  s:string;
  i:integer;

begin
  HTMLEditor:=THTMLEditor.Create(Application);
  try
    HTMLEditor.Memo1.Lines.Text:=GetStrValue;

    {try to inherit the default font}
    PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'Font');

    if (PropInfo<>nil) then
      {$IFNDEF TMSDOTNET}
      HTMLEditor.HTMLStaticText1.Font.Assign(TFont(GetOrdProp(GetComponent(0),PropInfo)));
      {$ENDIF}
      {$IFDEF TMSDOTNET}
      HTMLEditor.HTMLStaticText1.Font.Assign(TFont(GetObjectProp(GetComponent(0),PropInfo)));
      {$ENDIF}

    PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'Images');
    if (PropInfo<>nil) then
      {$IFNDEF TMSDOTNET}
      HTMLEditor.HTMLStaticText1.Images:=(TImageList(GetOrdProp(GetComponent(0),PropInfo)));
      {$ENDIF}
      {$IFDEF TMSDOTNET}
      HTMLEditor.HTMLStaticText1.Images:=(TImageList(GetObjectProp(GetComponent(0),PropInfo)));
      {$ENDIF}

    PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'URLColor');
    if (PropInfo<>nil) then
      {$IFNDEF TMSDOTNET}
      HTMLEditor.HTMLStaticText1.URLColor:=(TColor(GetOrdProp(GetComponent(0),PropInfo)));
      {$ENDIF}
      {$IFDEF TMSDOTNET}
      HTMLEditor.HTMLStaticText1.URLColor:=(TColor(GetObjectProp(GetComponent(0),PropInfo)));
      {$ENDIF}

    PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'HoverColor');
    if (PropInfo<>nil) then
      {$IFNDEF TMSDOTNET}
      HTMLEditor.HTMLStaticText1.HoverColor:=(TColor(GetOrdProp(GetComponent(0),PropInfo)));
      {$ENDIF}
      {$IFDEF TMSDOTNET}
      HTMLEditor.HTMLStaticText1.HoverColor:=(TColor(GetObjectProp(GetComponent(0),PropInfo)));
      {$ENDIF}

    PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'HoverFontColor');
    if (PropInfo<>nil) then
      {$IFNDEF TMSDOTNET}
      HTMLEditor.HTMLStaticText1.HoverFontColor:=(TColor(GetOrdProp(GetComponent(0),PropInfo)));
      {$ENDIF}
      {$IFDEF TMSDOTNET}
      HTMLEditor.HTMLStaticText1.HoverFontColor:=(TColor(GetObjectProp(GetComponent(0),PropInfo)));
      {$ENDIF}

    PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'Hover');
    if (PropInfo<>nil) then
      {$IFNDEF TMSDOTNET}
      HTMLEditor.HTMLStaticText1.Hover:=(boolean(GetOrdProp(GetComponent(0),PropInfo)));
      {$ENDIF}
      {$IFDEF TMSDOTNET}
      HTMLEditor.HTMLStaticText1.Hover:=(boolean(GetObjectProp(GetComponent(0),PropInfo)));
      {$ENDIF}

    PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'AnchorHint');
    if (PropInfo<>nil) then
      {$IFNDEF TMSDOTNET}
      HTMLEditor.HTMLStaticText1.AnchorHint:=(boolean(GetOrdProp(GetComponent(0),PropInfo)));
      {$ENDIF}
      {$IFDEF TMSDOTNET}
      HTMLEditor.HTMLStaticText1.AnchorHint:=(boolean(GetObjectProp(GetComponent(0),PropInfo)));
      {$ENDIF}

    PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'ShadowColor');
    if (PropInfo<>nil) then
      {$IFNDEF TMSDOTNET}
      HTMLEditor.HTMLStaticText1.ShadowColor:=(TColor(GetOrdProp(GetComponent(0),PropInfo)));
      {$ENDIF}
      {$IFDEF TMSDOTNET}
      HTMLEditor.HTMLStaticText1.ShadowColor:=(TColor(GetObjectProp(GetComponent(0),PropInfo)));
      {$ENDIF}

    PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'ShadowOffset');
    if (PropInfo<>nil) then
      {$IFNDEF TMSDOTNET}
      HTMLEditor.HTMLStaticText1.ShadowOffset:=(integer(GetOrdProp(GetComponent(0),PropInfo)));
      {$ENDIF}
      {$IFDEF TMSDOTNET}
      HTMLEditor.HTMLStaticText1.ShadowOffset:=(integer(GetObjectProp(GetComponent(0),PropInfo)));
      {$ENDIF}

    PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'PictureContainer');
    if (PropInfo<>nil) then
      {$IFNDEF TMSDOTNET}
      HTMLEditor.HTMLStaticText1.PictureContainer := (TPictureContainer(GetOrdProp(GetComponent(0),PropInfo)));
      {$ENDIF}
      {$IFDEF TMSDOTNET}
      HTMLEditor.HTMLStaticText1.PictureContainer := (TPictureContainer(GetObjectProp(GetComponent(0),PropInfo)));
      {$ENDIF}

    HTMLEditor.DBfields.Visible:=false;

    if HTMLEditor.Showmodal = mrOk then
    begin
      s := '';
      for i := 1 to HTMLEditor.Memo1.Lines.Count do
        s := s + HTMLEditor.Memo1.Lines[i-1];
      SetStrValue(s);
    end;
  finally
    HTMLEditor.Free;
  end;
end;

procedure THTMLStringProperty.SetValue(const Value: String);
begin
end;

function THTMLStringProperty.GetValue: String;
begin
  Result := '(HTMLString)';
end;




end.
