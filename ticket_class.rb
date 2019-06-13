class Ticket
  attr_accessor :venue, :date, :price

  def initialize(venue, date)
    @venue = venue
    @date = date
  end
end

ta = Ticket.new("London", "23/01/2019")
tb = Ticket.new("Zell", "23/01/2019")
tc = Ticket.new("Notingham", "23/01/2019")

ta.price = 12.00
tb.price = 15.00
tc.price = 14.00

def Ticket.most_expensive(*tickets)
  tickets.max_by(&:venue)
end

puts "most_expensive #{Ticket.most_expensive(ta, tb, tc).venue}"
