class BookInStock
    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end
    #toString
    def to_s
        "ISBN: #{@isbn}, price : #{@price}"
    end
end

b1 = BookInStock.new("isbn1", 3)
# p b1
puts b1