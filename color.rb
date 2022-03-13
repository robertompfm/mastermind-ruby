# frozen_string_literal: true

# Color class
class Color
  attr_reader :id, :name, :code

  def initialize(id, name, code)
    @id = id
    @name = name
    @code = code
  end

  def to_s
    "\e[#{@code}m #{@id} \e[0m"
  end
end
