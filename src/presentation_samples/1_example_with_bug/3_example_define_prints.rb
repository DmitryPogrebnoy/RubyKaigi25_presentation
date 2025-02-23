def process(thing)
  puts "Debug print 1: #{defined? thing.to_s}"
  puts "Debug print 2: #{defined? thing.inspect}"
  puts "Debug print 3: #{
    defined? thing.to_s || defined? thing.inspect
  }"
  if defined? thing.to_s || defined? thing.inspect
    puts "Element is Printable"
  else
    puts "Element is Not Printable"
  end
end

process(5)
process(BasicObject.new)





