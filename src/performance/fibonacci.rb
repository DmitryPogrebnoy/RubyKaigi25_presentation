# require 'byebug'
# byebug

def fib n
  if n < -100
    raise # first breakpoint
  elsif n < 0
    raise # second breakpoint
  elsif n < 2
    n
  else
    fib(n - 1) + fib(n - 2)
  end
end

require 'benchmark'
TOTAL_RUNS = 1
total_time = 0
TOTAL_RUNS.times do
  total_time += Benchmark.realtime do
    fib(40)
  end
end

puts "Avg real time elapsed: #{total_time/TOTAL_RUNS}"