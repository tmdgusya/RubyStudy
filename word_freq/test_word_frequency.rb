require 'test/unit'
require_relative 'words_from_strings'

class TestCountWordFrequency < Test::Unit::TestCase

    def setup
        @split = FindWord.new
    end

    def test_empty_list
        assert_equal({}, @split.count_frequency([]))
    end

    def test_words
        assert_equal({"roach" => 1, "is" => 2}, @split.count_frequency(["roach", "is", "is"]))
    end

end