unit uBludisko;

interface

uses
  graphics;

type
  TBludisko = class
  private
    aVrcholy:array[1..1000,1..4]of boolean;
  public
    constructor vytvor;
    destructor zrus;
    procedure generuj;
    procedure inicializuj;
    procedure vykresli(paKde:TCanvas);
    function nieJeStena(paPoloha,paSmer:integer):boolean;
//    function vratHodnotu(bod:TSuradnice):Shortint;
   // property startPozicia:TSuradnice read startPozicia write nastavStartPoziciu(pozicia:TSuradnice);
  end;


implementation



{ TBludisko }

procedure TBludisko.generuj;
type
  TPole=array[1..1000]of integer;
var
  aPole:TPole;
  iPole:TPole;
  i,j,k:integer;

// funkcia koniec ukoncuje generator
function koniec:boolean;
var
  i:integer;
begin
  i:=0;
  repeat
    i:=i+1;
  until (iPole[i]<>0)or(i=1000);
  if i=1000 then
    result:=true
  else
    result:=false;
end;

//funkcia zaradDoPola pracuje s pomocnym polom prvkov iPole
function zaradDoPola(paPrvok:integer;paPole:TPole):TPole;
var
  i:integer;
begin
  i:=1;
  repeat
    if paPole[i]=0 then
    begin
      paPole[i]:=paPrvok;
      i:=0;
    end
    else
      i:=i+1;
  until i=0;
  result:=paPole;
end;

// funkcia vymazZPola pracuje s pomocnym polom iPole
function vymazZPola(paPrvok:integer;paPole:TPole):TPole;
var
  i:integer;
begin
  i:=1;
  repeat
    if paPole[i]=paPrvok then
    begin
      paPole[i]:=0;
      i:=0;
    end
    else
      i:=i+1;
  until i=0;
  result:=paPole;
end;

// funkcia vracia nahodny prvok z pola iPole
function vratNahodnyPrvok(paPole:TPole):integer;
var
  pomPrvok,i:integer;
begin
  randomize;
  pomPrvok:=0;
  repeat
    i:=random(1000)+1;
    if paPole[i]<>0 then
      pomPrvok:=paPole[i];
  until pomPrvok<>0;
  result:=pomPrvok;
end;

// funkcia vracia nahodneho suseda paPrvku typu "frontier"
function vratFrontiera(paPrvok:integer):integer;
var
  pomPole:array[1..4]of integer;
  pom:integer;
begin

  randomize;
   case paPrvok of
      1:
      begin
        if aPole[2]=1 then
          pomPole[1]:=2
        else
          pomPole[1]:=0;
        if aPole[41]=1 then
          pomPole[2]:=41
        else
          pomPole[2]:=0;
        pomPole[3]:=0;
        pomPole[4]:=0;
      end;
      2..39:
      begin
        if aPole[paPrvok+1]=1 then
          pomPole[1]:=paPrvok+1
        else
          pomPole[1]:=0;
        if aPole[paPrvok+40]=1 then
          pomPole[2]:=paPrvok+40
        else
          pomPole[2]:=0;
        if aPole[paPrvok-1]=1 then
          pomPole[3]:=paPrvok-1
        else
          pomPole[3]:=0;
        pomPole[4]:=0;
      end;
      40:
      begin
        if aPole[paPrvok+40]=1 then
          pomPole[2]:=paPrvok+40
        else
          pomPole[2]:=0;
        if aPole[paPrvok-1]=1 then
          pomPole[3]:=paPrvok-1
        else
          pomPole[3]:=0;
        pomPole[1]:=0;
        pomPole[4]:=0;
      end;
      80,120,160,200,240,280,320,360,400,440,480,520,560,600,640,680,720,760,800,840,880,920,960:
      begin
        if aPole[paPrvok-40]=1 then
          pomPole[1]:=paPrvok-40
        else
          pomPole[1]:=0;
        if aPole[paPrvok+40]=1 then
          pomPole[2]:=paPrvok+40
        else
          pomPole[2]:=0;
        if aPole[paPrvok-1]=1 then
          pomPole[3]:=paPrvok-1
        else
          pomPole[3]:=0;
        pomPole[4]:=0;
      end;
      41,81,121,161,201,241,281,321,361,401,441,481,521,561,601,641,681,721,761,801,841,881,921:
      begin
        if aPole[paPrvok+1]=1 then
          pomPole[1]:=paPrvok+1
        else
          pomPole[1]:=0;
        if aPole[paPrvok+40]=1 then
          pomPole[2]:=paPrvok+40
        else
          pomPole[2]:=0;
        if aPole[paPrvok-40]=1 then
          pomPole[3]:=paPrvok-40
        else
          pomPole[3]:=0;
        pomPole[4]:=0;
      end;
      961:
      begin
        if aPole[paPrvok+1]=1 then
          pomPole[1]:=paPrvok+1
        else
          pomPole[1]:=0;
        if aPole[paPrvok-40]=1 then
          pomPole[2]:=paPrvok-40
        else
          pomPole[2]:=0;
        pomPole[3]:=0;
        pomPole[4]:=0;
      end;
      962..999:
      begin
        if aPole[paPrvok+1]=1 then
          pomPole[1]:=paPrvok+1
        else
          pomPole[1]:=0;
        if aPole[paPrvok-1]=1 then
          pomPole[2]:=paPrvok-1
        else
          pomPole[2]:=0;
        if aPole[paPrvok-40]=1 then
          pomPole[3]:=paPrvok-40
        else
          pomPole[3]:=0;
        pomPole[4]:=0;
      end;
      1000:
      begin
        if aPole[paPrvok-1]=1 then
          pomPole[2]:=paPrvok-1
        else
          pomPole[2]:=0;
        if aPole[paPrvok-40]=1 then
          pomPole[3]:=paPrvok-40
        else
          pomPOle[3]:=0;
        pomPole[1]:=0;
        pomPole[4]:=0;
      end;
      42..79,82..119,122..159,162..199,202..239,242..279,282..319,322..359,362..399,402..439,442..479,482..519,522..559,562..599,602..639,642..679,682..719,722..759,762..799,802..839,842..879,882..919,922..959:
      begin
        if aPole[paPrvok+1]=1 then
          pomPole[1]:=paPrvok+1
        else
          pomPole[1]:=0;
        if aPole[paPrvok-1]=1 then
          pomPole[2]:=paPrvok-1
        else
          pomPole[2]:=0;
        if aPole[paPrvok-40]=1 then
          pomPole[3]:=paPrvok-40
        else
          pomPole[3]:=0;
        if aPole[paPrvok+40]=1 then
          pomPole[4]:=paPrvok+40
        else
          pomPole[4]:=0;
      end;
    end;


  if (pomPole[1]=0)and(pomPole[2]=0)and(pomPole[3]=0)and(pomPole[4]=0) then
    pom:=0
  else
    repeat
      pom:=pomPole[random(4)+1];
    until pom>0;
  result:=pom;
end;

// funkcia meni susedov paPrvku typu "out" na typ "frontier"
procedure zmenOznacenie(paPrvok:integer);
begin
  case paPrvok of
    1:
    begin
      if aPole[2]=0 then
        aPole[2]:=1;
      if aPole[41]=0 then
         aPole[41]:=1;
      end;
    2..39:
    begin
      if aPole[paPrvok-1]=0 then
        aPole[paPrvok-1]:=1;
      if aPole[paPrvok+1]=0 then
         aPole[paPrvok+1]:=1;
      if aPole[paPrvok+40]=0 then
         aPole[paPrvok+40]:=1;
    end;
    40:
    begin
      if aPole[39]=0 then
        aPole[39]:=1;
      if aPole[80]=0 then
         aPole[80]:=1;
    end;
    80,120,160,200,240,280,320,360,400,440,480,520,560,600,640,680,720,760,800,840,880,920,960:
    begin
      if aPole[paPrvok-1]=0 then
        aPole[paPrvok-1]:=1;
      if aPole[paPrvok-40]=0 then
         aPole[paPrvok-40]:=1;
      if aPole[paPrvok+40]=0 then
         aPole[paPrvok+40]:=1;
    end;
    41,81,121,161,201,241,281,321,361,401,441,481,521,561,601,641,681,721,761,801,841,881,921:
    begin
      if aPole[paPrvok+1]=0 then
        aPole[paPrvok+1]:=1;
      if aPole[paPrvok-40]=0 then
         aPole[paPrvok-40]:=1;
      if aPole[paPrvok+40]=0 then
         aPole[paPrvok+40]:=1;
    end;
    961:
    begin
      if aPole[921]=0 then
        aPole[921]:=1;
      if aPole[962]=0 then
         aPole[962]:=1;
    end;
    962..999:
    begin
      if aPole[paPrvok-1]=0 then
        aPole[paPrvok-1]:=1;
      if aPole[paPrvok+1]=0 then
         aPole[paPrvok+1]:=1;
      if aPole[paPrvok-40]=0 then
         aPole[paPrvok-40]:=1;
    end;
    1000:
    begin
      if aPole[999]=0 then
        aPole[999]:=1;
      if aPole[960]=0 then
        aPole[960]:=1;
    end;
    42..79,82..119,122..159,162..199,202..239,242..279,282..319,322..359,362..399,402..439,442..479,482..519,522..559,562..599,602..639,642..679,682..719,722..759,762..799,802..839,842..879,882..919,922..959:
    begin
      if aPole[paPrvok-1]=0 then
        aPole[paPrvok-1]:=1;
      if aPole[paPrvok-40]=0 then
        aPole[paPrvok-40]:=1;
      if aPole[paPrvok+40]=0 then
        aPole[paPrvok+40]:=1;
      if aPole[paPrvok+1]=0 then
        aPole[paPrvok+1]:=1;
    end;
  end;
end;

//hlavne telo procedury generuj
BEGIN

{ 1.KROK }
//inicializacia pola aVrcholy ktore nesie informaciu o stenach a priechodoch medzi bunkami bludiska (vrcholmi)

  for i:=1 to 1000 do
    for j:=1 to 4 do
      aVrcholy[i,j]:=false;

{ 2.KROK }
//inicializacia generatora - vynulovanie pomocnych poli a nastavenie vychodzich parametrov

  Randomize;
  for i:=1 to 1000 do
  begin
    aPole[i]:=0;
    iPole[i]:=0;
  end;
  aPole[1]:=2;
  aPole[2]:=1;
  aPole[41]:=1;
  iPole:=zaradDoPola(1,iPole);

{ 3.KROK }
//samotne generovanie bludiska

    repeat
      //1.zober nahodny prvok z pola prvkov typu "in"
      i:=vratNahodnyPrvok(iPole);
      //2.vrat nahodneho suseda prvku typu "frontier"
      j:=vratFrontiera(i);
      //3.vymaz stenu medzi prvkom a jeho susedom
      case i-j of
        -40:
        begin
          aVrcholy[i,3]:=true;
          aVrcholy[j,1]:=true;
        end;
        -1:
        begin
          aVrcholy[i,2]:=true;
          aVrcholy[j,4]:=true;
        end;
        1:
        begin
          aVrcholy[i,4]:=true;
          aVrcholy[j,2]:=true;
        end;
        40:
        begin
          aVrcholy[i,1]:=true;
          aVrcholy[j,3]:=true;
        end;
      end;
      //4. zmen typ suseda z "frontier" na "in"
      aPole[j]:=2;
      //5. vsetkym susedom noveho prvku "in" zmen typ z "out" na "frontier"
      zmenOznacenie(j);
      //6. skontroluj iPole - ak existuje prvok typu "in" ktory uz nema suseda typu "frontier" vymaz ho z iPola
      for k:=1 to 1000 do
      begin
        if vratFrontiera(iPole[k])=0 then
          iPole:=vymazZPola(iPole[k],iPole);
        if (aPole[k]=2)and(vratFrontiera(k)<>0) then
          iPole[k]:=k
        else
          iPole[k]:=0;
       end;
       //7. spytaj sa funkcie koniec ci este existuje nejaky prvok typu "frontier" - ak ano pokracuj, ak nie skonci                                                    }
    until koniec;

end;

//procedura vykresluje bludisko
procedure TBludisko.vykresli(paKde:TCanvas);
var
  i,x,y:integer;
begin
  x:=26;
  y:=65;
  for i:=1 to 1000 do
  begin
    if aVrcholy[i,2]=false then
    begin
      paKde.MoveTo(x,y);
      paKde.LineTo(x,y+18);
    end
    else
      paKde.MoveTo(x,y+18);
    if aVrcholy[i,3]=false then
    begin
      paKde.LineTo(x-18,y+18);
    end;
    x:=x+18;
    if x>736 then
    begin
      x:=26;
      y:=y+18;
    end;
  end;
end;

constructor TBludisko.vytvor;
begin

end;

destructor TBludisko.zrus;
begin

end;

function TBludisko.nieJeStena(paPoloha, paSmer: integer): boolean;
begin
  nieJeStena:=aVrcholy[paPoloha,paSmer];
end;

procedure TBludisko.inicializuj;
var
  i,j,k:integer;
begin
  i:=131;
  k:=0;
  repeat
    for j:=i to i+18 do
    begin
      aVrcholy[j,2]:=true;
      aVrcholy[j,3]:=true;
      k:=j;
    end;
    aVrcholy[k+1,3]:=true;
    i:=i+40;
  until i>661;
  for j:=i to i+18 do
    aVrcholy[j,2]:=true;
end;

end.
