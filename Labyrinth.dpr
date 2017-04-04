program Labyrinth;

uses
  oHeapMonitor in 'oHeapMonitor.pas',
  Forms,
  fLabyrinth in 'fLabyrinth.pas' {mainFrm},
  fAbout in 'fAbout.pas' {aboutFrm},
  uBludisko in 'uBludisko.pas',
  uHrac in 'uHrac.pas',
  uCasovac in 'uCasovac.pas',
  fWait in 'fWait.pas' {waitFrm},
  fKoniec in 'fKoniec.pas' {koniecFrm},
  uNepriatel in 'uNepriatel.pas',
  fCiel in 'fCiel.pas' {cielFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Labyrinth';
  Application.CreateForm(TmainFrm, mainFrm);
  Application.CreateForm(TaboutFrm, aboutFrm);
  Application.CreateForm(TwaitFrm, waitFrm);
  Application.CreateForm(TkoniecFrm, koniecFrm);
  Application.CreateForm(TcielFrm, cielFrm);
  Application.Run;
end.
