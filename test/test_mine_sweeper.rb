require 'test_helper'

class TestMineSweeper < Minitest::Test
  def setup
    @minesweeper = MineSweeper.new
  end

  def test_initialize
    assert_instance_of(Board, @minesweeper.board, 'Minesweeper board must be instance of Board')
    assert_equal(@minesweeper.difficulty, :beginner) 
  end
end