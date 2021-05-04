require 'csv'
require_relative 'book_in_stock'

class CSVReader

    def initialize
        @books_in_stock = []
    end

    def readInCSVData(csvFileName)
        CSV.foreach(csvFileName, headers: true) do |row|
            @books_in_stock << BookInStock.new(row["ISBN"], row["Price"])
        end
    end

    def totalValueInStock
        sum = 0.0
        @books_in_stock.each {|book| sum += book.price}
        sum
    end

    def numberOfEachISBN
        @books_in_stock.each {|book| p book}
    end
    
end