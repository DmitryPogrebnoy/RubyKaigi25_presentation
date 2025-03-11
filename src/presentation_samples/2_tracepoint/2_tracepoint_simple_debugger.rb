def say_hello
  puts "Hello RubyKaigi2025!"
end

TracePoint.new(:call) do |tp|
  puts "Call method '#{tp.method_id}'"
  while (input = gets.chomp) != "cont"
    puts eval(input)
  end
end.enable

say_hello


