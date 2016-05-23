# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

class SmallestDivisibleNumber
    def initialize(topNumber)
        @range = Array (1..topNumber)
        @topNumber = topNumber
        @currentIterator = topNumber
        @topNumber = topNumber
    end

    def iterate()
        n = @topNumber
        while true
            if self.checkIsDivisible(n)
                puts n
                return n
            else
              n += @topNumber
            end  
        end  
    end

    def checkIsDivisible(num)
        @range.reverse.each do |item|
            if num % item != 0
                return false
            end
        end
        return true
    end
end