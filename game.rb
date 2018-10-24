class Game

  attr_reader :player, :hidden_word, :guessed_letters

  def initialize(player, input_word)
    @player = player
    @hidden_word = input_word
    @guessed_letters = []
  end



end
