require 'test_helper'

class TestGrid < Minitest::Test
  def setup
    @grid = Grid.new(row: 4, col: 4, mines: 5)
  end

  def test_build
    @grid.build
    assert_instance_of(Square, @grid.matrix.take(1).first, 'Each item in Grid must be an instance of Square')
  end
end