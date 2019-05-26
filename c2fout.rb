print 'Hi... please enter the celsius value : '
celsius = gets.to_i
fahrenheit = ( celsius * 9 / 5 ) + 32
puts 'Writing fahrenheit to temp.out'
fh = File.new("temp.out", "w")
fh.puts fahrenheit
fh.close
