# require 'socket'
# s = TCPServer.new(3939)
# conn = s.accept
# conn.puts "Hi. Here's the date"
# conn.puts `date`
# conn.close


# require 'socket'
# s = TCPServer.new(3939)
# while true
#   conn = s.accept
#   conn.puts "Hi. What is your name? "
#   name = conn.gets.chomp
#   conn.puts "Hi, #{name}, Here's the date."
#   conn.puts `date`
#   conn.close
# end
 
require 'socket'
s = TCPServer.new(3939)
while (conn = s.accept)
  puts "connection accepted."
  Thread.new(conn) do |c|
    
    c = s.accept
    c.puts "Hi. What is your name? "
    name = c.gets.chomp
    c.puts "Hi, #{name}, Here's the date."
    c.puts `date`
    c.close
  end.join

end
