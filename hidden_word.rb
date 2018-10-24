class HiddenWord

  def initialize(word)
    @visible_word = word.downcase.split(//)
  end

  def has_word
    return true if @visible_word != nil
    return false
  end

  def display_obscured_string(guessed_letters)
    obscured_word = ""
    for letter in @visible_word
      if guessed_letters.include?(letter)
        obscured_word += letter
      else
        obscured_word += "*"
      end
    end
    return obscured_word
  end

  def check_guess(guessed_letter)
    return true if @visible_word.include?(guessed_letter)
    return false
  end

  def check_word_complete(guessed_letters)
    return @visible_word.join == display_obscured_string(guessed_letters)
  end


end
