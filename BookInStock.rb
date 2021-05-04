class BookInStock

    attr_reader :isbn, :price
    attr_accessor :isbn, :price

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

puts "ISBN : #{b1.isbn}"

puts "Price : #{b1.price}"

b1.price = 50

puts "After Price : #{b1.price}"