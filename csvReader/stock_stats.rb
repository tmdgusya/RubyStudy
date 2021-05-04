require_relative 'csv_reader'

reader = CSVReader.new

ARGV.each do |csvFileName|
    STDERR.puts "Processing #{csvFileName}"
    reader.readInCSVData(csvFileName)
    reader.numberOfEachISBN
end