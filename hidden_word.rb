class HiddenWord

  def initialize(word)
    @visible_word = word
  end

  def has_word
    return true if @visible_word != nil
    return false
  end

end
