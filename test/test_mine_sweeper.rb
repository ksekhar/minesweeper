require 'test_helper'

class TestMineSweeper < Minitest::Test
  def setup
    @minesweeper = MineSweeper.new
  end

  def test_initialize
    assert_instance_of(Grid, @minesweeper.board, 'Minesweeper board must be instance of Grid')
    assert_equal(@minesweeper.difficulty, :beginner) 
  end
end