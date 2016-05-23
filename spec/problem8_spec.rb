require 'spec_helper'

describe LargestProductInSeries do

    before :each do
        @LargestProductInSeries = LargestProductInSeries.new(4)
    end

    describe "#getProductOfSequence" do
        it "returns 5832 if given 4" do
            @LargestProductInSeries.getProductOfSequence().should eq(5832)
        end
    end
 
end