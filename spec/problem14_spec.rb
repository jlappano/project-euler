require 'spec_helper'
 
#n → n/2 (n is even)
#n → 3n + 1 (n is odd)

describe Sequencer do

    before :each do
        @sequencer = Sequencer.new()
    end

    describe "#evenSequence" do
        it "returns n/2 if n is even" do
            num = @sequencer.evenSequence(8)
            num.should eq(4)
        end

        it "returns nothing if n is odd" do
            num = @sequencer.evenSequence(5)
            num.should be_nil
        end
    end
 
    describe "#oddSequence" do
        it "returns 3n + 1 if n is odd" do
            num = @sequencer.oddSequence(5)
            num.should eq(16)
        end

        it "returns nothing if n is even" do
            num = @sequencer.oddSequence(8)
            num.should be_nil
        end
    end

    describe "#sequenceNumber" do
        it "returns the correct array sequence" do
            array = @sequencer.sequenceNumber(13)
            array.should eq([40,20,10,5,16,8,4,2,1])
        end
    end
end