# require "debug"
#
# debugger

pid = fork do
    while true do
        puts "Child process"
        sleep 1
    end
end
  
if pid 
    while true do
        puts "Parent process"
        sleep 1
    end
end