class MineSweeper 

  attr_accessor :board, :difficulty
  PRESETS = { beginner: { row: 8, col: 8, mines: 10 }, 
              intermediate: { row: 16, col: 16, mines: 40 }, 
              expert: { row: 31, col: 16, mines: 99 } }

  def initialize(row: nil, col: nil, mines: nil, preset: :beginner)
    @board ||= Board.new(row: row || PRESETS[preset][:row], 
                         col: col || PRESETS[preset][:col],
                         mines: mines || PRESETS[preset][:mines])
    @difficulty = preset
  end

end