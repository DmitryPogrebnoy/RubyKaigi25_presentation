class MyPrinter
  def print_hello
    print "Hello "
    self
  end

  def print_ruby_kaigi
    print "RubyKaigi2025"
    self
  end

  def print_bang
    print "!"
    self
  end
end

MyPrinter.new.print_hello.print_ruby_kaigi.print_bang

# => Hello RubyKaigi2025!




