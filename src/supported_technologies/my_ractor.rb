require 'byebug'
byebug

# Create a new ractor
ractor = Ractor.new do
  # Receive a message
  received_message = Ractor.receive
  "Hello, #{received_message}"
end

# Send a message to the ractor
ractor.send("World")

# Retrieve and print the message from the ractor
puts ractor.take #=> "Hello, World"