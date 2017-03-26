{***************************************************************************}
{ TAdvMemo component                                                        }
{ for Delphi & C++Builder                                                   }
{ version 1.6                                                               }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright � 2001 - 2004                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{ The source code is given as is. The author is not responsible             }
{ for any possible damage done due to the use of this code.                 }
{ The component can be freely used in any application. The complete         }
{ source code remains property of the author and may not be distributed,    }
{ published, given or sold in any form as such. No parts of the source      }
{ code can be included in any other component or application without        }
{ written authorization of TMS software.                                    }
{***************************************************************************}

{$I TMSDEFS.INC}

unit AdvMemoRegDe;

interface

uses
  Classes, AdvMemo, AdvCodeList, AdvMemoDE,
  {$IFDEF TMSDOTNET}
  Borland.Vcl.Design.DesignIntf,
  Borland.Vcl.Design.DesignEditors
  {$ELSE}
  {$IFDEF DELPHI6_LVL}
  DesignIntf,
  DesignEditors
  {$ELSE}
  DsgnIntf
  {$ENDIF}
  {$ENDIF}
  ;


procedure Register;

implementation

procedure Register;
begin
  RegisterPropertyEditor(TypeInfo(TAdvMemoStrings),TAdvMemo,'Lines',TAdvMemoProperty);
  RegisterPropertyEditor(TypeInfo(TAutoCorrect),TAdvMemo,'AutoCorrect',TMemoAutoCorrectProperty);
  RegisterComponentEditor(TAdvMemo,TAdvMemoEditor);
  RegisterComponentEditor(TAdvCodeList,TAdvCodeListEditor);
end;

end.
