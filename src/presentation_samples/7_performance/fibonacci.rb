def fib(n)
  raise if n < 0 # first breakpoint
  return n if n < 2
  fib(n - 1) + fib(n - 2)
end

require 'benchmark'
TOTAL_RUNS = 100
total_time = TOTAL_RUNS.times.sum do
  Benchmark.realtime { fib(40) }
end

puts "Avg real time elapsed: #{total_time/TOTAL_RUNS}"





