unit uVrchol;

interface
uses
  uStackNode;
type
  TVrchol=class(TStackNode)
  private
    aHodnota:integer;
  public
    procedure zapisHodnotu(paHodnota:integer);
    function vratHodnotu:integer;
  end;
implementation

{ TVrchol }

function TVrchol.vratHodnotu: integer;
begin
  vrathodnotu:= aHodnota;
end;

procedure TVrchol.zapisHodnotu(paHodnota:integer);
begin
  aHodnota:=paHodnota;
end;

end.
