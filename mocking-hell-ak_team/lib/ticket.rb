class Ticket
  attr_accessor :id, :type, :price, :start_date, :end_date, :active

  def initialize(id, type, price, start_date, end_date, active)
    @id = id
    @type = type
    @price = price
    @start_date = start_date
    @end_date = end_date
    @active = active
  end

  def to_s
    ticket = "#{start_date} - #{end_date}   #{type}   #{price}"
    ticket
  end
end
