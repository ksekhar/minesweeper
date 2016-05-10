require 'test_helper'

class TestMineSweeper < Minitest::Test
  def setup
    @minesweeper = MineSweeper.new
  end

  def test_initialize
    assert_equal 'Hi', @minesweeper.message
  end
end