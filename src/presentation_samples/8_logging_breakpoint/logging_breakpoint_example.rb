def process(thing)
  if defined? thing.to_s || defined? thing.inspect # <- bug is here
    puts "Element is Printable"
  else
    puts "Element is Not Printable"
  end
end

process(5) # => Element is Printable
process(BasicObject.new) # => Element is Printable



