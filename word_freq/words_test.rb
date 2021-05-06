require 'test/unit'
require_relative 'words_from_strings'

class TestWrodsFromString < Test::Unit::TestCase

    def setup
        @split = FindWord.new
    end

    def test_empty_string
        assert_equal([], @split.words_from_strings(""))
        assert_equal([], @split.words_from_strings("   "))
    end

    def test_single_word
        assert_equal(["roach"], @split.words_from_strings("roach"))
        assert_equal(["roach"], @split.words_from_strings("  roach "))
    end

    def test_many_word
        assert_equal(["roach", "is", "dev"], @split.words_from_strings("Roach is Dev"))
    end

    def test_ignore_punctuation
        assert_equal(
            ["this", "book's", "is", "so", "good"], 
            @split.words_from_strings("this book's is so good"))
    end
end




# #Count word frequency in given sentence to Hash that sorted by desc
# p split.count_frequency(split.words_from_strings("Roach is Back-End Developer, 
#     Roach want being Full-Stack Developer")).sort_by {|word, count| -count}