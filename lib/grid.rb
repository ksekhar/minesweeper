require 'matrix'

class Grid

  attr_accessor :row, :col, :mines

  def initialize(row:, col: ,mines:)
    @row = row
    @col = col
    @mines = mines
  end

  def build
  end

  def draw

  end  

end