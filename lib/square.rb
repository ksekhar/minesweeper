class Square
  MAX_MINES = 8

  attr_accessor :status, :position, :mines, :surrounded_by

  def initialize(row:, col:, status:)
    @position = [row, col]    
    @status = status || SquareStatus.new
  end

  def surrounded_by
    
  end
end