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

  def test_game_has_input_word
    assert_equal(@input_word1, @game1.hidden_word)
  end

  def test_game_has_guessed_letters_array__no_letters
    assert_equal([], @game1.guessed_letters)
  end

  def test_add_to_guessed_letters
    @game1.add_to_guessed_letters("e")
    assert_equal(["e"], @game1.guessed_letters)
  end

  def test_add_to_guessed_letters__multiple_present
    @game1.add_to_guessed_letters("e")
    @game1.add_to_guessed_letters("f")
    assert_equal(["e","f"], @game1.guessed_letters)
  end

  def test_game_status__win
    @game1.add_to_guessed_letters("p")
    @game1.add_to_guessed_letters("o")
    @game1.add_to_guessed_letters("t")
    @game1.add_to_guessed_letters("a")

    assert_equal(:win, @game1.game_status)
  end

  def test_game_status__loss
    6.times do
      @player1.lose_life
    end
    assert_equal(:loss, @game1.game_status)
  end

  def test_game_status__continue
    3.times do
      @player1.lose_life
    end
    assert_equal(:continue, @game1.game_status)
  end

end
