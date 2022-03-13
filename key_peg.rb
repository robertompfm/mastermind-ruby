# frozen_string_literal: true

require_relative 'constants'

# KeyPeg class
class KeyPeg
  attr_reader :id

  MAP_TO_S = {
    WHITE_KEY_PEG => '⬤',
    BLACK_KEY_PEG => '◯'
  }

  def initialize(id)
    @id = id
  end

  def correct?
    @id == WHITE_KEY_PEG
  end

  def to_s
    MAP_TO_S[@id]
  end
end
