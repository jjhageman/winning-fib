require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "WinningFib" do
  describe "#closest" do
    it "should find the largest integer value from the Fibonacci Sequence smaller than the given integer" do
      156.closest_fibonacci.should == 144
      99.closest_fibonacci.should == 89
      2.closest_fibonacci.should == 1
    end
  end
end
