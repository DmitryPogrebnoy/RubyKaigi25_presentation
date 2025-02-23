def say_hello
  puts "Hello EuRuKo2024!"
end

TracePoint.new(:call) do |tp|
  puts "Calling method '#{tp.method_id}'"
end.enable

say_hello
# => Calling method 'say_hello'
# => Hello EuRuKo2024!





