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

  def test_can_display_obscured_string__empty
    assert_equal("*******", @word1.display_obscured_string([]))
  end

  def test_can_display_obscured_string__letter_there
    assert_equal("s******", @word1.display_obscured_string(["s"]))
  end

  def test_can_display_obscured_string__letter_not_there
    assert_equal("*******", @word1.display_obscured_string(["x"]))
  end

  def test_check_guess_letter_there
    assert_equal(true, @word1.check_guess("s"))
  end

  def test_check_guess_letter_not_there
    assert_equal(false, @word1.check_guess("x"))
  end

  def test_check_if_word_complete__complete
    guessed_letters = ["s","n","o","w","m","a","n"]
    assert_equal(true, @word1.check_word_complete(guessed_letters))
  end

  def test_check_if_word_complete__incomplete
    guessed_letters = ["s","n","o","w","z","a","n"]
    assert_equal(false, @word1.check_word_complete(guessed_letters))
  end

end
