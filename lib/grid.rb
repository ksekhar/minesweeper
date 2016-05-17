require 'matrix'

class Grid

  attr_accessor :row, :col, :mines, :matrix

  def initialize(row:, col: ,mines:)
    @row = row
    @col = col
    @mines = mines
  end

  def build
    @matrix = Matrix.build(@row,@col) do |row, col| 
      Square.new(row: row, col: col, mine: [true, false].sample)
    end
  end

  def draw
     @matrix.to_a.select {|x| p x.collect(&:mine)}
  end  

  def surrounded_by(square)
    mines_around = 0
    square_row = square.position.first
    square_col = square.position.last
    (square_row-1..square_row+1).each do |neighbor_row|
      (square_col-1..square_col+1).each do |neighbor_col|
        mines_around += 1 if @matrix[neighbor_row, neighbor_col].mine?
      end
    end    
    mines_around
  end

end