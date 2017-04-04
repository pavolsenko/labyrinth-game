unit fKoniec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TkoniecFrm = class(TForm)
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    koniecBtn: TButton;
    StaticText1: TStaticText;
    procedure koniecBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  koniecFrm: TkoniecFrm;

implementation

{$R *.dfm}

procedure TkoniecFrm.koniecBtnClick(Sender: TObject);
begin
  close;
end;

end.
