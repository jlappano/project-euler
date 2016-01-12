#A palindromic number reads the same both ways. 
#The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#Find the largest palindrome made from the product of two 3-digit numbers.

class Palindrome
    def initialize()
        @allPalindromes = []
    end

    def isPalindrome(num)
        return num == num.to_s.reverse.to_i
    end

    def getMaxPalindrome()
        puts @allPalindromes.max
    end

    def checkAllThreeDigitProducts()
        @factor1 = 999
        while @factor1 > 99 do
            @factor2 = 999
            while @factor2 > 99 do
                @product = @factor1 * @factor2
                if self.isPalindrome(@product)
                    @allPalindromes.push(@product)
                end
                @factor2 -= 1
            end
            @factor1 -= 1
        end
    end
end

$d = Palindrome.new()
$d.checkAllThreeDigitProducts()
$d.getMaxPalindrome()