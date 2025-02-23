def fib(n)
  return n if n < 2
  fib(n - 1) + fib(n - 2)
end

while true
  result = fib(40)
  puts "Fibonacci result #{result}!"
end
