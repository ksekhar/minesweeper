class SquareStatus

  STATUSES = %i(blank flagged mine exploded)
  attr_accessor :state

  def initialize
    @state = :blank
  end

end