class Ticket
  attr_reader :venue, :date
  attr_accessor :price
  def initialize(venue, date)
    @venue = venue
    @date = date
  end
end

ticket = Ticket.new("Pune", Time.new)
ticket.price = 20.01
puts "Event in #{ticket.venue} at #{ticket.date} for Rs. #{ticket.price}"
