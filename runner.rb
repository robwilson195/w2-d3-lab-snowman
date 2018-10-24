require_relative( './game' )
require_relative('./hidden_word')
require_relative('./player')

# Snowman runner file.

system 'clear'

p "Welcome message!!"

player_name = "Player"

p "Enter the word to be guessed: "
input_word = gets.chomp
system 'clear'

player1 = Player.new(player_name)
input_word1 = HiddenWord.new(input_word)
game1 = Game.new(player1, input_word1)

p "Word to be guessed: "
p input_word1.display_obscured_string([])

game1.game_loop
