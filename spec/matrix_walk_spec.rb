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

  describe "#take_walk" do
    it "should call print_board if next_position returns nil" do
      matrix = MatrixWalk.new(2, 2)
      matrix.should_receive(:next_position).and_return(nil)
      matrix.should_receive(:print_board)

      matrix.take_walk
    end
  end

end
