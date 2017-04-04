unit uNepriatel;

interface
uses
  uHrac,uBludisko;

type
  TNepriatel=class(THrac)
  private
    aSmer:byte;
  public
   constructor vytvor;
    procedure zmenPolohu(paKde:TBludisko);
    procedure zmenSmer;
    function vratX:integer;
    function vratY:integer;
  end;

implementation

{ TNepriatel }

function TNepriatel.vratX: integer;
begin
  if aPoloha mod 40=0 then
    vratX:=712
  else
    vratX:=18*(aPoloha mod 40)-8;
end;

function TNepriatel.vratY: integer;
begin
   if aPoloha div 41=0 then
     vratY:=66
   else
   if aPoloha mod 40=0 then
     vratY:=18*(aPoloha div 40)-18+66
   else
     vratY:=18*(aPoloha div 40)+66;
end;

constructor TNepriatel.vytvor;
begin
  aSmer:=random(4)+1;
end;

procedure TNepriatel.zmenPolohu(paKde:TBludisko);
begin
  case aSmer of
    1:
    if paKde.nieJeStena(aPoloha,aSmer) then
      hore
    else
      zmenSmer;
    2:
    if paKde.nieJeStena(aPoloha,aSmer) then
      vpravo
    else
      zmenSmer;
    3:
    if paKde.nieJeStena(aPoloha,aSmer) then
      dole
    else
      zmenSmer;
    4:
    if paKde.nieJeStena(aPoloha,aSmer) then
      vlavo
    else
      zmenSmer;
   end;
end;

procedure TNepriatel.zmenSmer;
begin
  aSmer:=random(4)+1;
end;

end.
