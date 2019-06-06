ticket = Object.new

def ticket.date
  "01/02/03"
end

def ticket.venue
  "town hall"
end

def ticket.event
  "Author's reading"
end

def ticket.performer
  "Mark Twain"
end

def ticket.seat
  "Second balcony, row J, seat 11"
end

def ticket.price
  2.5
end

puts "This ticket is for: #{ticket.event}, at #{ticket.venue}." + "The performer is #{ticket.performer}." + "The seat is #{ticket.seat}, " + "and it costs $#{"%.2f." % ticket.price}"
