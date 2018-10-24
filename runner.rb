require_relative( './game' )
require_relative('./hidden_word')
require_relative('./player')

# Snowman runner file.

system 'clear'

p "Snowman"
p
p "Here's how you play:"
p "Player one will provide a word for player two to work out."
p "Then, player 2 will have to guess letters that they think might be in the word, revealing more of the word with each correct guess."
p "Watch out though, as your snowman will melt a little with each incorrect guess."
p "Six incorrect guesses, and your snowman will melt away completely! Oh no!"

player_name = "Player"

p "Player 1, enter the word to be guessed: "
input_word = gets.chomp
system 'clear'

player1 = Player.new(player_name)
input_word1 = HiddenWord.new(input_word)
game1 = Game.new(player1, input_word1)

p "Word to be guessed: "
p input_word1.display_obscured_string([])

game1.game_loop
