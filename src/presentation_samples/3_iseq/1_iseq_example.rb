def say_hello
  puts "Hello RubyKaigi2025!"
end

method_object = method(:say_hello)
iseq = RubyVM::InstructionSequence.of(method_object)

puts iseq.disasm



