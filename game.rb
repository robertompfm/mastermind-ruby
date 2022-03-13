# frozen_string_literal: true

require_relative 'messenger'
require_relative 'constants'
require_relative 'row'
require_relative 'board'

# Game class
class Game
  include Messenger

  @@board
  
  def self.start
    new_board
  end

  def self.new_board
    colors = []
    4.times do
      colors << COLORS[COLORS.keys.sample]
    end
    code = Row.new(colors)
    @@board = Board.new(code)
  end

  def self.make_guess
    colors = []
    while colors.length < 4 do
      idx = gets.
      colors << gets
    end
  end
end

code = Row.new([COLORS[1], COLORS[2], COLORS[3], COLORS[4]])
guess = Row.new([COLORS[1], COLORS[2], COLORS[3], COLORS[4]])

board = Board.new(code)
hints = board.make_guess(guess)

puts hints
puts hints.all_correct?
