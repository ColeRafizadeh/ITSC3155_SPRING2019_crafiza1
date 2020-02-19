# Ruby Basics Part 3

class BookInStock
attr_accessor :isbn, :price
#
  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    format("$%.2f", @price)
  end

end