require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../game' )
require_relative('../hidden_word')
require_relative('../player')

class TestGame < MiniTest::Test

  def setup
    @player1 = Player.new("Ben")
    @input_word1 = HiddenWord.new("pOtATo")
    @game1 = Game.new(@player1, @input_word1)
  end

  def test_game_has_player
    assert_equal(@player1, @game1.player)
  end

  def test_game_has_hidden_word
    assert_equal(@input_word1, @game1.hidden_word)
  end

  def test_game_has_guessed_letters_array__no_letters
    assert_equal([], @game1.guessed_letters)
  end



end
