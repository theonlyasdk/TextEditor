unit AboutForm;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, LicenseForm;

type

  { TFormAbout }

  TFormAbout = class(TForm)
    BtnClose: TButton;
    BtnLicense: TButton;
    LabelAbout: TLabel;
    LblCopyright: TLabel;
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnLicenseClick(Sender: TObject);
  private

  public

  end;

var
  FormAbout: TFormAbout;

implementation

{$R *.lfm}

{ TFormAbout }

procedure TFormAbout.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFormAbout.BtnLicenseClick(Sender: TObject);
begin
  FormLicense.Show;
end;

end.
