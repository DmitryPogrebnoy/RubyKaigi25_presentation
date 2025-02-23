def say_hello
  puts "Hello EuRuKo2024!"
end

method_object = method(:say_hello)
iseq = RubyVM::InstructionSequence.of(method_object)

puts iseq.disasm



