require 'spec_helper'
 
describe GridProduct do

    before :each do
        @grid = [
            [8,2,22,97,99],
            [49,49,99,40,99],
            [81,49,31,73,99],
            [52,70,95,23,98],
            [22,31,16,71,51]
        ]
        @GridProduct = GridProduct.new(@grid)
    end

    describe "#getRight4Product" do
        it "returns the correct product of the target number and the 3 numbers to it's right" do
            num = @GridProduct.getRight4Product(0, 0)
            num.should eq(34144)
        end

        it "returns 0 if any of the numbers targeted are out of bounds" do
            num = @GridProduct.getRight4Product(0, 3)
            num.should eq(0)
        end
    end

    describe "#getDown4Product" do
        it "returns the correct product of the target number and the 3 numbers below it" do
            num = @GridProduct.getDown4Product(0, 0)
            num.should eq(1651104)
        end

        it "returns 0 if any of the numbers targeted are out of bounds" do
            num = @GridProduct.getDown4Product(3, 1)
            num.should eq(0)
        end
    end

    describe "#getDiagRight4Product" do
        it "returns the correct product of the target number and the 3 numbers diagonal" do
            num = @GridProduct.getDiagRight4Product(0, 0)
            num.should eq(279496)
        end

        it "returns 0 if any of the numbers targeted are out of bounds" do
            num = @GridProduct.getDiagRight4Product(3, 3)
            num.should eq(0)
        end
    end

    describe "#getDiagLeft4Product" do
        it "returns the correct product of the target number and the 3 numbers diagonal" do
            num = @GridProduct.getDiagLeft4Product(0, 4)
            num.should eq(8593200)
        end

        it "returns 0 if any of the numbers targeted are out of bounds" do
            num = @GridProduct.getDiagLeft4Product(3, 3)
            num.should eq(0)
        end
    end

    describe "#traverseGrid" do
        it "outputs the larget product" do
            num = @GridProduct.traverseGrid()
            num.should eq(95089302)
        end
    end
 
end