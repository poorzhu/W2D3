
require "rspec"
require "tdd"
require "towersofhanoi"

describe Array do
  describe "#my_uniq" do
    it "should remove duplicates" do
      expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
    end

    it "should return empty if given an empty array" do
      expect([].my_uniq).to eq([])
    end
  end

  describe "#two_sum" do
    it "should return empty if given an empty array" do
      expect([].two_sum).to eq([])
    end

    it "should return an array of index pairs that sum to zero" do
      expect([-1, 0, 2, -2, 1].two_sum.sort).to eq([[0, 4], [2, 3]])
    end

    it "should return an array sorted in dictionary-wise orders" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe "#my_transpose" do
    let(:array) {
     [[0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]]
    }
    
    it "should return empty if given an empty array" do
      expect([].my_transpose).to eq([])
    end
    
    it "should transpose a 2D array" do
      expect(array.my_transpose).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end

    it "should raise an error if element sizes differ" do
      expect { ([[1,2,3],[1,2]].my_transpose) }.to raise_error(IndexError)
    end

  end

  describe "#stock_picker" do
    it "should return the most profiable pair of days" do
      expect([5,5,5,5,6,7,8,9,10,15,3,14].stock_picker).to eq([10, 11])
    end

    it "should return nil if there are no profitable pairs" do
      expect([5,5,5,5,5,5,5,5].stock_picker).to eq(nil)
    end
  end
end

describe TowersOfHanoi do
  let(:tower) { TowersOfHanoi.new(10)}
  
  describe "#initialize" do
    it "should raise an error if an integer isn't received" do
      expect { TowersOfHanoi.new('five') }.to raise_error(ArgumentError)
    end

    it "should create 3 stacks based on input size" do
      expect(tower.stacks).to eq([(1..10).to_a.reverse, [], []])
    end
  end

  describe "#move" do
    it "should move the disk and put it somewhere else"
    it "should not allow to place a larger disk on a smaller disk"
  end

  describe "won?" do
    it "should return true if third array has a proper stack of disks and other 
    two arrays are empty"
  end
end

