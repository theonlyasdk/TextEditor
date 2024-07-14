unit UnitMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  LCLType, ComCtrls, SynEdit, AboutForm, SynHighlighterMulti, SynHighlighterPas,
  SynHighlighterVB, SynHighlighterIni, SynHighlighterJava,
  SynHighlighterJScript, SynHighlighterLFM, SynHighlighterPython,
  synhighlighterunixshellscript, SynHighlighterSQL, SynHighlighterTeX,
  SynHighlighterBat, SynHighlighterXML, SynHighlighterCpp, SynHighlighterCss,
  SynHighlighterDiff, SynHighlighterPHP, SynHighlighterPerl, SynHighlighterHTML, StrUtils;

type

  { TMainForm }

  TMainForm = class(TForm)
    FontDialog: TFontDialog;
    MainMenu: TMainMenu;
    MenuFile: TMenuItem;
    MenuCut: TMenuItem;
    MenuCopy: TMenuItem;
    MenuItem1: TMenuItem;
    PopCut: TMenuItem;
    PopCopy: TMenuItem;
    PopPaste: TMenuItem;
    PopSelectAll: TMenuItem;
    MenuSelectAll: TMenuItem;
    MenuUndo: TMenuItem;
    MenuRedo: TMenuItem;
    MenuSaveAs: TMenuItem;
    MenuSave: TMenuItem;
    MPhp: TMenuItem;
    MPerl: TMenuItem;
    MTools: TMenuItem;
    MIni: TMenuItem;
    MPython: TMenuItem;
    MDiff: TMenuItem;
    MLFM: TMenuItem;
    MXML: TMenuItem;
    MPascal: TMenuItem;
    MJava: TMenuItem;
    MJavaScript: TMenuItem;
    MFreePascal: TMenuItem;
    MToolsLang: TMenuItem;
    MCss: TMenuItem;
    MCpp: TMenuItem;
    MShell: TMenuItem;
    MTex: TMenuItem;
    MSql: TMenuItem;
    MBasic: TMenuItem;
    MWinBat: TMenuItem;
    MenuZoomIn: TMenuItem;
    MenuZoomOut: TMenuItem;
    MenuChangeFont: TMenuItem;
    MenuPaste: TMenuItem;
    MenuEdit: TMenuItem;
    MenuView: TMenuItem;
    MenuHelp: TMenuItem;
    MenuAbout: TMenuItem;
    MenuNew: TMenuItem;
    MenuOpen: TMenuItem;
    MenuExit: TMenuItem;
    OpenDialog: TOpenDialog;
    SynEditPop: TPopupMenu;
    SaveDialog: TSaveDialog;
    Separator1: TMenuItem;
    Separator2: TMenuItem;
    Separator3: TMenuItem;
    Separator4: TMenuItem;
    Separator5: TMenuItem;
    SynBatSyn1: TSynBatSyn;
    SynCppSyn1: TSynCppSyn;
    SynCssSyn1: TSynCssSyn;
    SynDiffSyn1: TSynDiffSyn;
    SynFreePascalSyn1: TSynFreePascalSyn;
    SynHTMLSyn1: TSynHTMLSyn;
    SynIniSyn1: TSynIniSyn;
    SynJavaSyn1: TSynJavaSyn;
    SynJScriptSyn1: TSynJScriptSyn;
    SynLFMSyn1: TSynLFMSyn;
    SynMultiSyn: TSynMultiSyn;
    SynPasSyn: TSynPasSyn;
    SynPerlSyn1: TSynPerlSyn;
    SynPHPSyn1: TSynPHPSyn;
    SynPythonSyn1: TSynPythonSyn;
    SynSQLSyn1: TSynSQLSyn;
    SynTeXSyn1: TSynTeXSyn;
    SynUNIXShellScriptSyn1: TSynUNIXShellScriptSyn;
    SynVBSyn: TSynVBSyn;
    SynXMLSyn1: TSynXMLSyn;
    TextEdit: TSynEdit;
    procedure FontDialogClose(Sender: TObject);
    procedure FontDialogShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure MBasicClick(Sender: TObject);
    procedure MCppClick(Sender: TObject);
    procedure MCssClick(Sender: TObject);
    procedure MDiffClick(Sender: TObject);
    procedure MenuAboutClick(Sender: TObject);
    procedure MenuCopyClick(Sender: TObject);
    procedure MenuCutClick(Sender: TObject);
    procedure MenuExitClick(Sender: TObject);
    procedure MenuChangeFontClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure PopCutClick(Sender: TObject);
    procedure PopCopyClick(Sender: TObject);
    procedure PopPasteClick(Sender: TObject);
    procedure PopSelectAllClick(Sender: TObject);
    procedure MenuPasteClick(Sender: TObject);
    procedure MenuRedoClick(Sender: TObject);
    procedure MenuSaveAsClick(Sender: TObject);
    procedure MenuSaveClick(Sender: TObject);
    procedure MenuOpenClick(Sender: TObject);
    procedure MenuSelectAllClick(Sender: TObject);
    procedure MenuUndoClick(Sender: TObject);
    procedure MPhpClick(Sender: TObject);
    procedure MPerlClick(Sender: TObject);
    procedure MenuNewClick(Sender: TObject);
    procedure MenuZoomInClick(Sender: TObject);
    procedure MenuZoomOutClick(Sender: TObject);
    procedure MFreePascalClick(Sender: TObject);
    procedure MIniClick(Sender: TObject);
    procedure MJavaClick(Sender: TObject);
    procedure MJavaScriptClick(Sender: TObject);
    procedure MLFMClick(Sender: TObject);
    procedure MPascalClick(Sender: TObject);
    procedure MPythonClick(Sender: TObject);
    procedure MShellClick(Sender: TObject);
    procedure MSqlClick(Sender: TObject);
    procedure MTexClick(Sender: TObject);
    procedure MWinBatClick(Sender: TObject);
    procedure MXMLClick(Sender: TObject);
    procedure OpenDialogClose(Sender: TObject);
    procedure TextEditChange(Sender: TObject);

    procedure SaveFile();
  private

  public
     OpenedFileName: string;
     FileModified: Boolean;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.lfm}

{ TMainForm }

procedure TMainForm.SaveFile();
begin
  TextEdit.Lines.SaveToFile(SaveDialog.FileName);
  OpenedFileName := SaveDialog.FileName;
  Text := SaveDialog.FileName+' - TextEditor';
  FileModified := false;
end;

procedure TMainForm.MBasicClick(Sender: TObject);
begin
  TextEdit.Highlighter := SynVBSyn;
end;

procedure TMainForm.MCppClick(Sender: TObject);
begin
  TextEdit.Highlighter := SynCppSyn1;
end;

procedure TMainForm.MCssClick(Sender: TObject);
begin
  TextEdit.Highlighter := SynCssSyn1;
end;

procedure TMainForm.MDiffClick(Sender: TObject);
begin
  TextEdit.Highlighter := SynDiffSyn1;
end;

procedure TMainForm.FontDialogClose(Sender: TObject);
begin
  TextEdit.Font := FontDialog.Font;
end;

procedure TMainForm.FontDialogShow(Sender: TObject);
begin
  FontDialog.Font := TextEdit.Font;
end;

procedure TMainForm.FormClose(Sender: TObject; var CloseAction: TCloseAction);
var
  confirm: integer;
begin
  if FileModified then
  begin
       confirm:=application.messagebox('Save before closing?', 'Confirm close', MB_YESNO+MB_ICONQUESTION);
       if confirm = IDYES then
       begin
         if SaveDialog.Execute then SaveFile;
       end;
  end;
end;

procedure TMainForm.MenuAboutClick(Sender: TObject);
begin
  FormAbout.Show;
end;

procedure TMainForm.MenuCopyClick(Sender: TObject);
begin
  TextEdit.CopyToClipboard;
end;

procedure TMainForm.MenuCutClick(Sender: TObject);
begin
  TextEdit.CutToClipboard;
end;

procedure TMainForm.MenuExitClick(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.MenuChangeFontClick(Sender: TObject);
begin
  FontDialog.Execute;
end;

procedure TMainForm.MenuItem1Click(Sender: TObject);
begin
  TextEdit.Highlighter:=SynHTMLSyn1;
end;

procedure TMainForm.PopCutClick(Sender: TObject);
begin
  TextEdit.CutToClipboard;
end;

procedure TMainForm.PopCopyClick(Sender: TObject);
begin
TextEdit.CopyToClipboard;
end;

procedure TMainForm.PopPasteClick(Sender: TObject);
begin
  TextEdit.PasteFromClipboard();
end;

procedure TMainForm.PopSelectAllClick(Sender: TObject);
begin
  TextEdit.SelectAll;
end;

procedure TMainForm.MenuPasteClick(Sender: TObject);
begin
  TextEdit.PasteFromClipboard();
end;

procedure TMainForm.MenuRedoClick(Sender: TObject);
begin
  TextEdit.Redo;
end;

procedure TMainForm.MenuSaveAsClick(Sender: TObject);
begin
     if OpenedFileName <> '' then
        SaveDialog.FileName := OpenedFileName;
        if SaveDialog.Execute then SaveFile
end;

procedure TMainForm.MenuSaveClick(Sender: TObject);
begin
     if OpenedFileName <> '' then
     begin;
        TextEdit.Lines.SaveToFile(OpenedFileName);
        Text:=OpenedFileName + ' - TextEditor';
        FileModified:=false;
     end
     else begin;
       if SaveDialog.Execute then SaveFile
     end;
end;

procedure TMainForm.MenuOpenClick(Sender: TObject);
begin
   OpenDialog.Execute;
end;

procedure TMainForm.MenuSelectAllClick(Sender: TObject);
begin
     TextEdit.SelectAll;
end;

procedure TMainForm.MenuUndoClick(Sender: TObject);
begin
  TextEdit.Undo;
end;

procedure TMainForm.MPhpClick(Sender: TObject);
begin
  TextEdit.Highlighter := SynPHPSyn1;
end;

procedure TMainForm.MPerlClick(Sender: TObject);
begin
  TextEdit.Highlighter := SynPerlSyn1;
end;

procedure TMainForm.MenuNewClick(Sender: TObject);
var
  Confirm: integer;
begin
  with application do
  begin
    Confirm := MessageBox('This action will clear existing text. Continue?',
      'Confirm Action', MB_ICONQUESTION + MB_YESNO);
    if Confirm = idYes then
    begin
      TextEdit.Lines.Clear;
      OpenedFileName:='';
      FileModified:=false;
      Text:='New File - TextEditor';
    end;
  end;
end;

procedure TMainForm.MenuZoomInClick(Sender: TObject);
begin
  TextEdit.Font.Size := TextEdit.Font.Size + 1;
  if TextEdit.Font.Size > 64 then TextEdit.Font.Size := 64;
end;

procedure TMainForm.MenuZoomOutClick(Sender: TObject);
begin
  TextEdit.Font.Size := TextEdit.Font.Size - 1;
  if TextEdit.Font.Size < 12 then TextEdit.Font.Size := 12;
end;

procedure TMainForm.MFreePascalClick(Sender: TObject);
begin
  TextEdit.Highlighter := SynFreePascalSyn1;
end;

procedure TMainForm.MIniClick(Sender: TObject);
begin
  TextEdit.Highlighter := SynIniSyn1;
end;

procedure TMainForm.MJavaClick(Sender: TObject);
begin
  TextEdit.Highlighter := SynJavaSyn1;
end;

procedure TMainForm.MJavaScriptClick(Sender: TObject);
begin
  TextEdit.Highlighter := SynJScriptSyn1;
end;

procedure TMainForm.MLFMClick(Sender: TObject);
begin
  TextEdit.Highlighter := SynLFMSyn1;
end;

procedure TMainForm.MPascalClick(Sender: TObject);
begin
  TextEdit.Highlighter := SynPasSyn;
end;

procedure TMainForm.MPythonClick(Sender: TObject);
begin
  TextEdit.Highlighter := SynPythonSyn1;
end;

procedure TMainForm.MShellClick(Sender: TObject);
begin
  TextEdit.Highlighter := SynUNIXShellScriptSyn1;
end;

procedure TMainForm.MSqlClick(Sender: TObject);
begin
  TextEdit.Highlighter := SynSQLSyn1;
end;

procedure TMainForm.MTexClick(Sender: TObject);
begin
  TextEdit.Highlighter := SynTeXSyn1;
end;

procedure TMainForm.MWinBatClick(Sender: TObject);
begin
  TextEdit.Highlighter := SynBatSyn1;
end;

procedure TMainForm.MXMLClick(Sender: TObject);
begin
  TextEdit.Highlighter := SynXMLSyn1;
end;

procedure TMainForm.OpenDialogClose(Sender: TObject);
begin
  if OpenDialog.FileName = '' then exit;
  if not FileExists(OpenDialog.FileName) then exit;

  TextEdit.Lines.LoadFromFile(OpenDialog.FileName);
  OpenedFileName:=OpenDialog.FileName;
  Text:=OpenDialog.FileName+' - TextEditor';
  if OpenedFileName.EndsWith('.fpc')
  or OpenedFileName.EndsWith('.pas') then
        TextEdit.Highlighter:=SynFreePascalSyn1
  else if OpenedFileName.EndsWith('.py') then
        TextEdit.Highlighter:=SynPythonSyn1
  else if OpenedFileName.EndsWith('.java') then
        TextEdit.Highlighter:=SynJavaSyn1
  else if OpenedFileName.EndsWith('.php') then
        TextEdit.Highlighter:=SynPHPSyn1
  else if OpenedFileName.EndsWith('.html')
       or OpenedFileName.EndsWith('.htm') then
        TextEdit.Highlighter:=SynHTMLSyn1
  else if OpenedFileName.EndsWith('.js') then
        TextEdit.Highlighter:=SynJScriptSyn1
  else if OpenedFileName.EndsWith('.cpp')
       or OpenedFileName.EndsWith('.c++')
       or OpenedFileName.EndsWith('.c') then
        TextEdit.Highlighter:=SynCppSyn1
  else if OpenedFileName.EndsWith('.css') then
        TextEdit.Highlighter:=SynCssSyn1
  else if OpenedFileName.EndsWith('.perl') then
        TextEdit.Highlighter:=SynPerlSyn1
  else if OpenedFileName.EndsWith('.tex') then
        TextEdit.Highlighter:=SynTeXSyn1
  else if OpenedFileName.EndsWith('.bat') then
        TextEdit.Highlighter:=SynBatSyn1
  else if OpenedFileName.EndsWith('.sql') then
        TextEdit.Highlighter:=SynSQLSyn1
  else if OpenedFileName.EndsWith('.xml') then
        TextEdit.Highlighter:=SynXMLSyn1
  else if OpenedFileName.EndsWith('.lfm') then
        TextEdit.Highlighter:=SynLFMSyn1
  else if OpenedFileName.EndsWith('.diff')
       or OpenedFileName.EndsWith('.patch') then
        TextEdit.Highlighter:=SynDiffSyn1
  else if OpenedFileName.EndsWith('.sh')
       or OpenedFileName.EndsWith('.zsh')
       or OpenedFileName.EndsWith('.bash') then
        TextEdit.Highlighter:=SynUNIXShellScriptSyn1
end;

procedure TMainForm.TextEditChange(Sender: TObject);
begin
  if not FileModified then
     if not StartsStr(Text, '*') then
        Text:='*'+Text;
  FileModified:=true;
end;

end.
