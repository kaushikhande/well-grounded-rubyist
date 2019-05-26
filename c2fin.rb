puts 'Reading Celsius from file...'
num = File.read("temp.dat")
celsius = num.to_i
fahrenheit = ( celsius * 9 / 5 ) + 32
print 'The fahrenheit is '
print fahrenheit
puts '.'
