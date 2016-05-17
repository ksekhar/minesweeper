class Square
  MAX_MINES = 8
  STATUSES = %i(blank flagged exploded explored)

  attr_accessor :status, :position, :mine

  def initialize(row:, col:, mine:, status: :blank)
    @position = [row, col]        
    @mine = mine
    @status = status
  end

  def mine?
    @mine
  end

  def flagged?
    @status == :flagged
  end

  def blank?
    @status == :blank
  end

  def explored?
    @status == :explored
  end

end