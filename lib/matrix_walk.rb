class MatrixWalk

  DIRECTIONS = [:west, :south, :north, :east]
  attr_reader :board, :steps

  def initialize(n, m)
    @board = Array.new(n) { Array.new(m) {|m| 0 }}
    @board[0][0] = 1
    @steps = 1
    @current_position = [0, 0]
    @current_direction = 0
  end

  def move_to_next
  end

  def next_position
  end

  def position_valid?(coord)
    @board[coord[0], coord[1]] == 0
  end

end
