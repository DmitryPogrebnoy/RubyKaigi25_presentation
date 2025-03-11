def say_hello = puts "Hello RubyKaigi2025!"
def say_goodbye = puts "Goodbye RubyKaigi2025!"

iseq = RubyVM::InstructionSequence.of(method(:say_hello))
trace = TracePoint.new(:call) do |tp|
  puts "Calling method '#{tp.method_id}'"
end

trace.enable(target: iseq)

say_hello
say_goodbye
# => Calling method 'say_hello'
# => Hello RubyKaigi2025!
# => Goodbye RubyKaigi2025!


