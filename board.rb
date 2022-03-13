# frozen_string_literal: true

require_relative 'row'
require_relative 'constants'

# Board class
class Board
  attr_reader :code, :guesses

  def initialize(code)
    @code = code
    @guesses = []
  end

  def make_guess(guess)
    @guesses << guess
    guess.hints(code)
  end
end
