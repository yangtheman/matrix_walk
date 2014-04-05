require_relative '../lib/matrix_walk'
require 'rspec'

describe MatrixWalk do

  describe ".new" do
    it "should create NxM matrix" do
      matrix = MatrixWalk.new(2, 2)
      matrix.board.size.should == 2
      matrix.board.first.size.should == 2
    end

    it "should create NxM matrix" do
      matrix = MatrixWalk.new(5, 10)
      matrix.board.size.should == 5
      matrix.board.first.size.should == 10
    end

  end

end
