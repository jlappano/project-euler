require 'spec_helper'

describe SumSquareDifference do

    before :each do
        @sumSquareDifference = SumSquareDifference.new(10)
    end

    describe "#getSumOfSquare" do
        it "returns 385 if given 10" do
            @sumSquareDifference.getSumOfSquare().should eq(385)
        end
    end

    describe "#getSquareOfSum" do
        it "returns 3025 if given 10" do
            @sumSquareDifference.getSquareOfSum().should eq(3025)
        end
    end
 
end