unit uTypy;

interface

type
  TSuradnice = record
    X:Integer;
    Y:Integer;
  end;  

type
  TMnozinaVrcholov = array[1..1000]of shortint;
  //pomocna mnozina vrcholov

type
  TOVrcholu = array[1..1000,1..4]of word;
  //matica okoli vrcholu - kazdy vrchol ma max 4 susedov

implementation

end.
