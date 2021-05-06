class FindWord

    # String split to word
    # downcase method covert string to downcase
    # scan is give matching regex that word contains string 
    def words_from_strings(string)
        string.downcase.scan(/[\w']+/)
    end

    def count_frequency(word_list)
        counts = Hash.new(0)
        for word in word_list
            counts[word] += 1
        end
        counts
    end

    public :words_from_strings, :count_frequency

end