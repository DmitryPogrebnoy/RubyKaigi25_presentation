# require 'byebug'
# byebug
# require 'pry'
require 'irb'


a = 123
puts 1123

Thread.new do
    b = 0
    while true do
        binding.irb
        puts "inner thread"
        sleep 1
    end
end

while true do
  binding.irb
  puts "main thread"
  sleep 1
end