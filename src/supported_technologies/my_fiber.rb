require 'byebug'
byebug

# define the Fiber
fiber = Fiber.new do
  first_msg = Fiber.yield 'Hello'
  second_msg = 'World'
  "#{first_msg} #{second_msg}"
end

puts fiber.resume # => "Hello"
puts fiber.resume('World') # => "Hello World"