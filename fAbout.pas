unit fAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TaboutFrm = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  aboutFrm: TaboutFrm;

implementation

{$R *.dfm}

procedure TaboutFrm.Button1Click(Sender: TObject);
begin
  Close;
end;

end.
