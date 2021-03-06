class Game
  attr_accessor :blank_array, :answer_array

  def initialize(word)
    @word = word
    @blank_array = Array.new
    @answer_array = Array.new
  end

  def blankify
    @word.each_char do |char|
      @blank_array << "\_ "
    end
    return @blank_array
  end

  def answer
    @word.each_char do |char|
      @answer_array << "#{char} "
    end
    return @answer_array
  end

  def letter_guess(letter)
    guess = letter.to_s + ' '
    return_value = false
    counter = 0
    @answer_array.each do |char|
      if char == guess
        array_position = counter
        @blank_array[array_position] = guess
        return_value = true
      end
      counter += 1
    end
    return_value
  end

  def word_so_far_array
    return @blank_array
  end

  def word_guess(player_guess)
    guess_array = Array.new
    player_guess.each_char do |char|
      guess_array << "#{char} "
    end
    if guess_array == @answer_array
      return true
    else
      return false
    end
  end

  def input_validation?(input)
    if input.length == 1
      return true
    else
      return false
    end
  end
end