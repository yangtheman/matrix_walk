class MatrixWalk

  DIRECTIONS = [:east, :south, :west, :north]
  attr_reader :board, :steps

  def initialize(n, m)
    @board = Array.new(n) { Array.new(m) {|m| 0 }}
    @board[0][0] = 1
    @steps = 1
    @current_position = [0, 0]
    @current_direction = 0
  end

  def take_walk
    while coord = next_position
      @steps += 1
      @current_position = [coord[0], coord[1]]
      @board[coord[0]][coord[1]] = @steps
    end

    print_board
  end

  def print_board
    puts "\nNumber of steps: #{@steps}"
    @board.each do |row|
      row.each do |col|
        print "#{col} "
      end
      print "\n"
    end
    print "\n"
  end

  private

  def position_valid?(coord)
    coord[0] >= 0 && coord[1] >= 0 && @board[coord[0]] && @board[coord[0]][coord[1]] == 0
  end

  def next_position
    0.upto(DIRECTIONS.size-1) do |i|
      next_position = get_next_position(DIRECTIONS[@current_direction])
      @current_direction = (@current_direction + 1) % 4
      return next_position if position_valid?(next_position)
    end
    return nil
  end

  def get_next_position(direction)
    next_position = @current_position.clone
    case direction
    when :east then next_position[1] += 1
    when :south then next_position[0] += 1
    when :west then next_position[1] -= 1
    when :north then next_position[0] -= 1
    end
    next_position
  end

end
