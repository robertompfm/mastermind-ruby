# frozen_string_literal: true

# Peg class
class Peg
  attr_reader :position, :color

  def initialize(position, color)
    @position = position
    @color = color
  end

  def equal?(other)
    other.position == @position && other.color.code == @color.code
  end

  def to_s
    "\e[#{@color.code}m #{@position} \e[0m"
  end
end
