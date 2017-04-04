unit uCasovac;

interface
type
  TCasovac=class
  private
    aStotiny:byte;
    aSekundy:byte;
    aMinuty:byte;
    aHodiny:byte;
  public
    constructor vytvor;
    destructor zrus;
    procedure cas;
    procedure vynuluj;
    function vratCas:string;
  end;
implementation

uses SysUtils;

{ TCasovac }

procedure TCasovac.cas;
begin
  aStotiny:=aStotiny+1;
  if aStotiny=10 then
  begin
   aSekundy:=aSekundy+1;
   aStotiny:=0;
  end;
  if aSekundy=60 then
  begin
   aMinuty:=aMinuty+1;
   aSekundy:=0;
  end;
  if aMinuty=60 then
  begin
   aHodiny:=aHodiny+1;
   aMinuty:=0;
  end;

end;

function TCasovac.vratCas: string;
var
  st,s,m,h:string;
begin
  st:=IntToStr(aStotiny);
  if aSekundy<10 then
    s:='0'+IntToStr(aSekundy)
  else
    s:=IntToStr(aSekundy);
  if aMinuty<10 then
    m:='0'+IntToStr(aMinuty)
  else
    m:=IntToStr(aMinuty);
  h:=IntToStr(aHodiny);  
  vratCas:=h+':'+m+':'+s+'.'+st;
end;

procedure TCasovac.vynuluj;
begin
  aHodiny:=0;
  aMinuty:=0;
  aSekundy:=0;
  aStotiny:=0;
end;

constructor TCasovac.vytvor;
begin
  vynuluj;
end;

destructor TCasovac.zrus;
begin

end;

end.
