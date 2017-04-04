unit uHrac;

interface
type
  THrac=class
  private
  public
    aPoloha:integer;
    constructor create;
    procedure hore;
    procedure vpravo;
    procedure dole;
    procedure vlavo;
    procedure nastavPolohu(paPoloha:integer);
    function vratPolohu:integer;
  end;
implementation

{ THrac }

procedure THrac.dole;
begin
  if aPoloha<961 then
    aPoloha:=aPoloha+40;
end;

procedure THrac.hore;
begin
  if aPoloha>40 then
    aPoloha:=aPoloha-40;
end;

procedure THrac.nastavPolohu(paPoloha: integer);
begin
  aPoloha:=paPoloha;
end;

procedure THrac.vlavo;
begin
  if aPoloha mod 40<>1 then
    if aPoloha>1 then
      aPoloha:=aPoloha-1;
end;

procedure THrac.vpravo;
begin
  if aPoloha mod 40<>0 then
    if aPoloha<1000 then
      aPoloha:=aPoloha+1;
end;

function THrac.vratPolohu:integer;
begin
  vratPolohu:=aPoloha;
end;



constructor THrac.create;
begin
  aPoloha:=1;
end;



end.
