# frozen_string_literal: true

require_relative 'peg'
require_relative 'key_peg'
require_relative 'constants'
require_relative 'hints'

# Row class
class Row
  attr_reader :pegs

  def initialize(colors)
    @pegs = [] << Peg.new(0, colors[0]) << Peg.new(1, colors[1]) << Peg.new(2, colors[2]) << Peg.new(3, colors[3])
  end

  def hints(other_row)
    hints = []
    other_row.pegs.each_index do |idx|
      peg = other_row.pegs[idx]
      if peg.equal?(@pegs[idx])
        hints << KeyPeg.new(WHITE_KEY_PEG)
      elsif other_row.peg?(@pegs[idx])
        hints << KeyPeg.new(BLACK_KEY_PEG)
      end
    end
    Hints.new(hints)
  end

  def peg?(other)
    @pegs.each do |peg|
      return true if other.color.code == peg.color.code
    end
    false
  end

  def to_s
    "#{@pegs[0]} #{@pegs[1]} #{@pegs[2]} #{@pegs[3]}"
  end
end
