unit fHelp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  ThelpFrm = class(TForm)
    Label3: TLabel;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  helpFrm: ThelpFrm;

implementation

{$R *.dfm}

procedure ThelpFrm.Button1Click(Sender: TObject);
begin
  Close;
end;

end.
