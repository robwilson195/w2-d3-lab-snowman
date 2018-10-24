require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../hidden_word' )

class TestHiddenWord < MiniTest::Test

  def setup
    @word1 = HiddenWord.new("snowman")
  end

  def test_has_word
    assert_equal(true, @word1.has_word)
  end

end
