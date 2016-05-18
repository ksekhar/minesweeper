require 'matrix'

class Grid

  attr_accessor :row, :col, :mines, :matrix

  def initialize(row:, col: ,mines:)
    @row = row
    @col = col
    @mines = mines
  end

  def build
    square_id = 0
    mined_squares = (0..@row*@col-1).to_a.sample(@mines)
    @matrix = Matrix.build(@row,@col) do |row, col| 
      Square.new(row: row, col: col, mine: mined_squares.include?(square_id += 1))      
    end
  end

  def draw
     @matrix.to_a.select {|x| p x.collect(&:mine)}
  end  

  def player_view
    @matrix.to_a.each do |squares|
      p squares.inject([]) {|array, square|
        if square.flagged?
          array << "\u2691"
        elsif square.blank?
          array << nil
        else
          array << surrounded_by(square: square)
        end
      }
    end
  end

  def flag(row:, col:)
    @matrix[row,col].status = :flagged
  end

  def surrounded_by(square:)
    mines_around = 0
    square_row = square.position.first
    square_col = square.position.last
    (square_row-1..square_row+1).each do |neighbor_row|
      (square_col-1..square_col+1).each do |neighbor_col|
        mines_around += 1 if @matrix[neighbor_row, neighbor_col].mine?
      end
    end    
    square.status = :blank if mines_around == 0
    square.status = :explored if mines_around > 0
    mines_around
  end

end