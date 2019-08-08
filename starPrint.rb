print "Input number::"
n = gets.chomp.to_i
(1..n).each do |index|
  index.times do |i|
    print '*'
  end
  puts 
end

(1..9).each do |index|
  (9-index).times do
    print ' '
  end
  index.times do |i|
    print '*'
  end
  puts 
end

(1..5).each do |element|
  puts '*' * element
  # puts
end

(1..5).each do |element|
  print ' ' * (5 - element)
  puts '*' * element
  # puts
end

def pyramid 
  5.times do |n|
    print ' ' * (5 - n)
    puts '*' * ( 2 * n + 1)
  end
end

pyramid
