class MineSweeper 

  attr_accessor :board, :difficulty

  DIFFICULTY_PRESETS = { beginner: { row: 8, col: 8, mines: 10 }, 
              intermediate: { row: 16, col: 16, mines: 40 }, 
              expert: { row: 31, col: 16, mines: 99 } }

  def initialize(row: nil, col: nil, mines: nil, difficulty: :beginner)
    @board ||= Grid.new(row: row || DIFFICULTY_PRESETS[difficulty][:row], 
                         col: col || DIFFICULTY_PRESETS[difficulty][:col],
                         mines: mines || DIFFICULTY_PRESETS[difficulty][:mines])
    @difficulty = difficulty
    @mines = mines || DIFFICULTY_PRESETS[difficulty][:mines]
    @board.build
  end

  def time_left
  end

  def play(row:, col:, flag: false)
    raise 'Game Over' if @board.matrix[row, col].mine?
  end

end