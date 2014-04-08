require_relative '../lib/matrix_walk'
require 'rspec'

describe MatrixWalk do

  describe ".new" do
    it "should create NxN matrix" do
      matrix = MatrixWalk.new(2, 2)
      matrix.board.size.should == 2
      matrix.board.first.size.should == 2
    end

    it "should create NxM matrix" do
      matrix = MatrixWalk.new(5, 10)
      matrix.board.size.should == 5
      matrix.board.first.size.should == 10
    end

    it "should initialize steps with 0" do
      matrix = MatrixWalk.new(2, 2)
      matrix.steps.should == 1
    end
  end

  describe "#position_valid?" do
    it "should see if position is valid given an coordinate array" do
      matrix = MatrixWalk.new(2, 2)
      matrix.position_valid?([-1, -1]).should be_false
      matrix.position_valid?([0, 0]).should be_false
    end
  end

  describe "#move_to_next" do
    it "should call next_position and set the coordinate and increase step" do
      matrix = MatrixWalk.new(2, 2)
      matrix.should_receive(:next_position).and_return([1, 1])

      matrix.move_to_next
      matrix.board[1][1].should == matrix.steps
    end

    it "should print number of steps and exit if next_position returns nil" do
      matrix = MatrixWalk.new(2, 2)
      matrix.should_receive(:next_position).and_return(nil)

      STDOUT.should_receive(:puts).with(/#{matrix.steps}/)
      expect { matrix.move_to_next }.to raise_error(SystemExit)
    end
  end


end
