require './stacklike'

class Suitcase
end

class Cargohold
  include Stacklike
  def load_and_report(object)
    puts "Load the cargo"
    puts "Object is #{object.object_id}"
    add_to_stack(object)
  end
  def unload_and_report()
    puts "Unloading object"
    puts take_from_stack.object_id
  end
end

s1 = Suitcase.new
s2 = Suitcase.new
s3 = Suitcase.new

ch = Cargohold.new

ch.load_and_report(s1)
ch.load_and_report(s2)
ch.load_and_report(s3)

puts "========"
puts ch.stack
puts "========"
puts ch.unload_and_report
puts "========"
