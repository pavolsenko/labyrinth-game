unit uOkolie;

interface


type
  TOkolieBodov = class
  private
    aPoleBodov:byte;
  public
    constructor vytvor;
    destructor zrus;
    procedure vynuluj;
    function vratStenu(cisloBodu,cisloSuseda:integer):boolean;
  end;
implementation

{ TOkolieBodov }

function TOkolieBodov.vratStenu(cisloBodu,cisloSuseda:integer): boolean;
begin
//  vratStenu:=TOkolieBodov.aPoleBodov[cisloBodu,cisloSuseda];
end;

procedure TOkolieBodov.vynuluj;
var
  i,j:integer;
begin
//  for i:=1 to 1000 do
//    for j:=1 to 4 do
//      aPoleBodov[i,j]:=false;
end;

constructor TOkolieBodov.vytvor;
begin
  vynuluj;
end;

destructor TOkolieBodov.zrus;
begin
end;

var
  aOkolie:TOkolieBodov;
initialization
  aOkolie:=TOkolieBodov.vytvor;

end.
