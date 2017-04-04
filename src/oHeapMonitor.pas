unit oHeapMonitor;

interface

procedure protocol(const paMessage:ShortString);
procedure createProtocol;

implementation

var
  f:text;

procedure protocol(const paMessage:ShortString);
  begin
    Append(f);
    writeln(f, paMessage, getHeapStatus.TotalAllocated:20);
    Close(f);
  end;

procedure createProtocol;
  begin
    AssignFile(f, 'stavHaldy.txt');
    Rewrite(f);
    writeln(f,'Heap Status at start: ', getHeapStatus.TotalAllocated:20);
    CloseFile(f);
  end;

initialization
  createProtocol
finalization
  protocol('Heap Status at Finish:');

end.
