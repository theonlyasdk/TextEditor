unit licenseform;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFormLicense }

  TFormLicense = class(TForm)
    BtnClose: TButton;
    LblTitle: TLabel;
    MemoLicense: TMemo;
    procedure BtnCloseClick(Sender: TObject);
  private

  public

  end;

var
  FormLicense: TFormLicense;

implementation

{$R *.lfm}

{ TFormLicense }

procedure TFormLicense.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
