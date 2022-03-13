# frozen_string_literal: true

# Hints class
class Hints
  attr_reader :hints

  def initialize(hints)
    @hints = hints
  end

  def all_correct?
    !@hints.length.zero? && @hints.all?(&:correct?)
  end

  def to_s
    str = ''
    @hints.each do |hint|
      str += "#{hint}  "
    end
    str
  end
end
