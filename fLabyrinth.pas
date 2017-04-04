unit fLabyrinth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, fAbout, ComCtrls, XPMan, ExtCtrls,
  ActnList, uHrac, uBludisko, uCasovac, fWait, fKoniec, uNepriatel;

type
  TmainFrm = class(TForm)
    mainMnu: TMainMenu;
    Hra1: TMenuItem;
    Moznosti1: TMenuItem;
    Napoveda1: TMenuItem;
    Novhra1: TMenuItem;
    Na1: TMenuItem;
    Oaplikcii1: TMenuItem;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Retartujhru1: TMenuItem;
    XPManifest1: TXPManifest;
    mainTimer: TTimer;
    Nstroje1: TMenuItem;
    Njdinajkratiucestu1: TMenuItem;
    Ukzaas1: TMenuItem;
    casLabel: TLabel;
    hracImg: TImage;
    ActionList1: TActionList;
    hore: TAction;
    vpravo: TAction;
    dole: TAction;
    vlavo: TAction;
    Shape1: TShape;
    Shape2: TShape;
    Na2: TMenuItem;
    Shape3: TShape;
    n1Img: TImage;
    n5Img: TImage;
    n2Img: TImage;
    n3Img: TImage;
    n4Img: TImage;
    runBtn: TButton;
    infoLbl1: TLabel;
    infoLbl2: TLabel;
    procedure Na1Click(Sender: TObject);
    procedure Oaplikcii1Click(Sender: TObject);
    procedure Ukzaas1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure horeExecute(Sender: TObject);
    procedure vpravoExecute(Sender: TObject);
    procedure doleExecute(Sender: TObject);
    procedure vlavoExecute(Sender: TObject);
    procedure Novhra1Click(Sender: TObject);
    procedure Retartujhru1Click(Sender: TObject);
    procedure mainTimerTimer(Sender: TObject);


  private
    { Private declarations }
    hrac:THrac;
  public
    { Public declarations }
  end;

var
  mainFrm: TmainFrm;
  bludisko:TBludisko;
  hrac:THrac;
  casovac:TCasovac;
  pomTyp:integer;
  koniec:boolean;
  n1,n2,n3,n4,n5:TNepriatel;

implementation

uses fHelp, fCiel;

{$R *.dfm}

procedure TmainFrm.Na1Click(Sender: TObject);
begin
  Close;
end;

procedure TmainFrm.Oaplikcii1Click(Sender: TObject);
begin
  aboutFrm.Show;
end;

procedure TmainFrm.Ukzaas1Click(Sender: TObject);
begin
  casLabel.Visible:=not casLabel.Visible;
  Ukzaas1.Checked:=not Ukzaas1.Checked;
end;

procedure TmainFrm.FormCreate(Sender: TObject);
begin
  bludisko:=TBludisko.vytvor;
  bludisko.inicializuj;
{  bludisko.generuj;
  bludisko.vykresli(Canvas);
  Shape1.Repaint;}
  hrac:=THrac.create;
  casovac:=TCasovac.vytvor;
  n1:=TNepriatel.vytvor;
  n2:=TNepriatel.vytvor;
  n3:=TNepriatel.vytvor;
  n4:=TNepriatel.vytvor;
  n5:=TNepriatel.vytvor;
end;

procedure TmainFrm.FormPaint(Sender: TObject);
begin
  bludisko.vykresli(Canvas);
end;

procedure TmainFrm.FormDestroy(Sender: TObject);
begin
  bludisko.zrus;
  hrac.destroy;
  casovac.zrus;
  n1.destroy;
  n2.destroy;
  n3.destroy;
  n4.destroy;
  n5.destroy;
  bludisko:=nil;
  hrac:=nil;
  casovac:=nil;
  n1:=nil;
  n2:=nil;
  n3:=nil;
  n4:=nil;
  n5:=nil;
end;

procedure TmainFrm.horeExecute(Sender: TObject);
begin
  if bludisko.nieJeStena(hrac.vratPolohu,1)and(koniec=false) then
  begin
    hrac.hore;
    hracImg.Top:=hracImg.Top-18;
    if mainTimer.Enabled=false then
      mainTimer.Enabled:=true;
  end;
end;

procedure TmainFrm.vpravoExecute(Sender: TObject);
begin
  if bludisko.nieJeStena(hrac.vratPolohu,2)and(koniec=false) then
  begin
    hrac.vpravo;
    hracImg.Left:=hracImg.Left+18;
    if mainTimer.Enabled=false then
      mainTimer.Enabled:=true;
  end;
end;

procedure TmainFrm.doleExecute(Sender: TObject);
begin
  if bludisko.nieJeStena(hrac.vratPolohu,3)and(koniec=false) then
  begin
    hrac.dole;
    hracImg.Top:=hracImg.Top+18;
    if mainTimer.Enabled=false then
      mainTimer.Enabled:=true;
  end;
end;

procedure TmainFrm.vlavoExecute(Sender: TObject);
begin
  if bludisko.nieJeStena(hrac.vratPolohu,4)and(koniec=false) then
  begin
    hrac.vlavo;
    hracImg.Left:=hracImg.Left-18;
    if mainTimer.Enabled=false then
      mainTimer.Enabled:=true;
  end;
end;

procedure TmainFrm.Novhra1Click(Sender: TObject);
begin
  if Retartujhru1.Enabled=false then
    Retartujhru1.Enabled:=true;
  if koniecFrm.Showing then
  begin
    koniecFrm.Hide;
    Shape1.Repaint;
  end;
  if cielFrm.Showing then
  begin
    cielFrm.Hide;
    Shape1.Repaint;
  end;
  if runBtn.Showing then
  begin
    runBtn.Visible:=false;
    infoLbl1.Visible:=false;
    infoLbl2.Visible:=false;
  end;
  Shape1.Repaint;
  waitFrm.Show;
  waitFrm.Label1.Repaint;
  bludisko.generuj;
  bludisko.vykresli(Canvas);
  Shape1.Repaint;
  hrac.nastavPolohu(1);
  hracImg.Top:=67;
  hracImg.Left:=10;
  mainTimer.Enabled:=false;
  casovac.vynuluj;
  casLabel.Caption:=casovac.vratCas;
  koniec:=false;
  n1.nastavPolohu(random(1000)+1);
  n2.nastavPolohu(random(1000)+1);
  n3.nastavPolohu(random(1000)+1);
  n4.nastavPolohu(random(1000)+1);
  n5.nastavPolohu(random(1000)+1);
  waitFrm.Hide;
end;

procedure TmainFrm.Retartujhru1Click(Sender: TObject);
begin
  if koniecFrm.Showing then
    koniecFrm.Hide;
  if koniecFrm.Showing then
    cielFrm.Hide;
  hrac.nastavPolohu(1);
  hracImg.Top:=67;
  hracImg.Left:=10;
  mainTimer.Enabled:=false;
  casovac.vynuluj;
  casLabel.Caption:=casovac.vratCas;
  koniec:=false;
  n1.nastavPolohu(random(1000)+1);
  n2.nastavPolohu(random(1000)+1);
  n3.nastavPolohu(random(1000)+1);
  n4.nastavPolohu(random(1000)+1);
  n5.nastavPolohu(random(1000)+1);
end;

procedure TmainFrm.mainTimerTimer(Sender: TObject);
begin
  if casovac.vratCas='0:00:00.1' then
  begin
    n1Img.Visible:=true;
    n2Img.Visible:=true;
    n3Img.Visible:=true;
    n4Img.Visible:=true;
    n5Img.Visible:=true;
  end;
  casovac.cas;
  casLabel.Caption:=casovac.vratCas;
  n1.zmenPolohu(bludisko);
  n2.zmenPolohu(bludisko);
  n3.zmenPolohu(bludisko);
  n4.zmenPolohu(bludisko);
  n5.zmenPolohu(bludisko);
  n1Img.Left:=n1.vratX;
  n1Img.Top:=n1.vratY;
  n2Img.Left:=n2.vratX;
  n2Img.Top:=n2.vratY;
  n3Img.Left:=n3.vratX;
  n3Img.Top:=n3.vratY;
  n4Img.Left:=n4.vratX;
  n4Img.Top:=n4.vratY;
  n5Img.Left:=n5.vratX;
  n5Img.Top:=n5.vratY;
  if (n1.vratPolohu=hrac.vratPolohu)or(n2.vratPolohu=hrac.vratPolohu)or(n3.vratPolohu=hrac.vratPolohu)or(n4.vratPolohu=hrac.vratPolohu)or(n5.vratPolohu=hrac.vratPolohu) then
  begin
    mainTimer.Enabled:=false;
    koniec:=true;
    koniecFrm.show;
    n1Img.Visible:=false;
    n2Img.Visible:=false;
    n3Img.Visible:=false;
    n4Img.Visible:=false;
    n5Img.Visible:=false;
  end;
  if (hrac.vratPolohu=1000) then
  begin
    mainTimer.Enabled:=false;
    koniec:=true;
    cielFrm.show;
    n1Img.Visible:=false;
    n2Img.Visible:=false;
    n3Img.Visible:=false;
    n4Img.Visible:=false;
    n5Img.Visible:=false;
    cielFrm.Label2.Caption:='Ste v cieli. Váš èas: '+casovac.vratCas;
  end;
end;



end.
