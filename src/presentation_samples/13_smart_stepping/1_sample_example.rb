def format_name(name)
  name.strip.split.map(&:capitalize).join
end

def reverse_name(name)
  name.reverse
end

mangled_conference_name = "  5202 igiak ybur  "
puts "Hello #{format_name(reverse_name(mangled_conference_name))}!"

# => Hello RubyKaigi2025!