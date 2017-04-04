unit fHeapMonitor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  THeapMonitorFrm = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure protocol(const paHeapMessage:ShortString)

var
  HeapMonitorFrm: THeapMonitorFrm;


implementation

{$R *.dfm}

var
  f:text;

procedure protocol(const paMessage:ShortString);
  begin
    Append(f);
    writeln(f, paMessage:40, getHeapStatus.TotalAllocated:20);
    Close(f;
end.
