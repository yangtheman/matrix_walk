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
    coord = next_position
    if coord
      @steps += 1
      @current_position = [coord[0], coord[1]]
      @board[coord[0]][coord[1]] = @steps
    else
      puts "Number of steps: #{@steps}"
      exit
    end
  end

  def next_position
  end

  def get_next_position(direction)
    next_position = @current_position
    next_position = case direction
      when :west then next_position[0] += 1
      when :south then next_position[1] += 1
      when :north then next_position[1] -= 1
      when :east then next_position[0] -= 1
    end
  end

  def position_valid?(coord)
    @board[coord[0], coord[1]] == 0
  end

end
