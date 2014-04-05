class MatrixWalk

  attr_reader :board

  def initialize(n, m)
    @board = Array.new(n) { Array.new(m) {|m| 0 }}
  end

end
