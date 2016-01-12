require 'spec_helper'
 
describe Palindrome do

    before :each do
        @palindrome = Palindrome.new()
    end

    describe "#isPalindrome" do
        it "returns true if an integer is the same forwards and backwards" do
            @bool = @palindrome.isPalindrome(32423)
            @bool.should be_true
        end

        it "returns false if an integer is not the same forwards and backwards" do
            @bool = @palindrome.isPalindrome(32999993)
            @bool.should be_false
        end
    end
 
end