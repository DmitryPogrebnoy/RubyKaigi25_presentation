def say_hello = puts "Hello EuRuKo2024!"
def say_goodbye = puts "Goodbye EuRuKo2024!"

iseq = RubyVM::InstructionSequence.of(method(:say_hello))
trace = TracePoint.new(:call) do |tp|
  puts "Calling method '#{tp.method_id}'"
end

trace.enable(target: iseq)

say_hello
say_goodbye
# => Calling method 'say_hello'
# => Hello EuRuKo2024!
# => Goodbye EuRuKo2024!


