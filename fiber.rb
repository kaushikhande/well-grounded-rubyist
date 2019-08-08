f = Fiber.new do
  puts 'Hi.'
  Fiber.yield
  puts 'Nice Day'
  Fiber.yield
  puts 'Bye!'
end

f.resume
puts 'Back to the fiber.'
f.resume
puts 'One last messsage from fiber.'
f.resume
puts "That's all"
