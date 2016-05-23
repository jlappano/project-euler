require 'spec_helper'
 
describe SmallestDivisibleNumber do

    describe "#checkIsDivisible" do
        #2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder
        it "returns 2520 if given 10" do
            @object = SmallestDivisibleNumber.new(10)
            @object.iterate().should eq(2520)
        end
    end
 
end
