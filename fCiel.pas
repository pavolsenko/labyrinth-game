unit fCiel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TcielFrm = class(TForm)
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    koniecBtn: TButton;
    StaticText1: TStaticText;
    Label4: TLabel;
    procedure koniecBtnClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cielFrm: TcielFrm;

implementation

{$R *.dfm}

procedure TcielFrm.koniecBtnClick(Sender: TObject);
begin
  cielFrm.Hide;
end;



end.
