breakpoints = [] # list of breakpoints
tracepoints = [] # tracepoint per event type

# For every type of tracepoint event
tracepoints << TracePoint.trace(:line) do |tp|
  breakpoint = breakpoints.find do |b|
    tp.path == b.path && tp.lineno == b.lineno
  end

  if breakpoint
    handle_breakpoint(breakpoint)
  end
end

# Ordinal code execution
# ...




def handle_breakpoint(b)

end