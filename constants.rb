# frozen_string_literal: true

require_relative 'color'

RED_CODE = 41
GREEN_CODE = 42
YELLOW_CODE = 43
BLUE_CODE = 44
MAGENTA_CODE = 45
CYAN_CODE = 46

COLORS = {
  1 => Color.new(1, 'Red', RED_CODE),
  2 => Color.new(2, 'Green', GREEN_CODE),
  3 => Color.new(3, 'Blue', BLUE_CODE),
  4 => Color.new(4, 'Yellow', YELLOW_CODE),
  5 => Color.new(5, 'Magenta', MAGENTA_CODE),
  6 => Color.new(6, 'Cyan', CYAN_CODE),
}.freeze

WHITE_KEY_PEG = 1
BLACK_KEY_PEG = 2
