# frozen_string_literal: true

# The program begins with the definition of main method.
def main
  greeting = "Hello, world!"
  a = 1
  b = 2
  puts a + b
  print_greeting(greeting)
end

# Here we define a method which takes in a string and prints it.
def print_greeting(greeting)
  puts greeting
end

# Finally, we call the main program to execute.
main
