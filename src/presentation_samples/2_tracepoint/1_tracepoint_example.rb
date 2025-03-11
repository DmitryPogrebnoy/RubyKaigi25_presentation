def say_hello
  puts "Hello RubyKaigi2025!"
end

TracePoint.new(:call) do |tp|
  puts "Calling method '#{tp.method_id}'"
end.enable

say_hello
# => Calling method 'say_hello'
# => Hello RubyKaigi2025!





