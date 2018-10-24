require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../player' )

class TestPlayer < MiniTest::Test

  def setup
    @player1 = Player.new("Catriona")
    @player2 = Player.new("Rob")
  end

  def test_player_has_name
    assert_equal("Catriona", @player1.name)
  end

  def test_player_has_lives
    assert_equal(6, @player2.lives)
  end

  def test_player_can_lose_life
    @player1.lose_life
    assert_equal(5, @player1.lives)
  end

end
