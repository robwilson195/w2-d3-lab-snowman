class Game

  attr_reader :player, :hidden_word, :guessed_letters

  def initialize(player, input_word)
    @player = player
    @hidden_word = input_word
    @guessed_letters = []
  end

  def add_to_guessed_letters(guessed_letter)
    @guessed_letters << guessed_letter
  end

  def game_status
    if @hidden_word.check_word_complete(@guessed_letters)
      :win
    elsif @player.lives <= 0
      :loss
    else
      :continue
    end
  end

  def game_loop
    while game_status == :continue do
      p "Make a guess!"
      guessed_letter = gets.chomp
      add_to_guessed_letters(guessed_letter)
      p @hidden_word.display_obscured_string(@guessed_letters)
      @player.lose_life unless @hidden_word.check_guess(guessed_letter)
    end
    if game_status == :win
      p "Congratulations, you've won!"
    else
      p "Your snowman melted! Game OveR Loser!!!"
    end
  end

end
