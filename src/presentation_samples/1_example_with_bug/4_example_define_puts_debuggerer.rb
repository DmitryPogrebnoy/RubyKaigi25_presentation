require 'pd'
PutsDebuggerer.app_path = "/Users/dmitry.pogrebnoy/Desktop/EuRuKo24_presentation/src/presentation_samples/1_example_with_bug/"

def process(thing)
  pd "Debug print 1: " + (defined? thing.to_s).to_s
  pd "Debug print 2: " + (defined? thing.inspect).to_s
  pd "Debug print 3: " + (defined? thing.to_s || defined? thing.inspect).to_s
  if defined? thing.to_s || defined? thing.inspect
    puts "Element is Printable"
  else
    puts "Element is Not Printable"
  end
  puts ""
end

process(5) # => Element is Printable
process(BasicObject.new) # => Element is Printable



