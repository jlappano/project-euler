# The sum of the squares of the first ten natural numbers is,
# 1**2 + 2**2 + ... + 10**2 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)**2 = 55**2 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

class SumSquareDifference
    def initialize(topNumber)
        @topNumber = topNumber
    end

    def getSumOfSquare()
        $i = 1
        $num = @topNumber
        $sum = 0
        begin
            $sum += ($i**2)
            $i +=1
        end while $i <= $num
        $sum
    end

    def getSquareOfSum()
        $i = 1
        $num = @topNumber
        $sum = 0
        begin
            $sum += $i
            $i +=1
        end while $i <= $num
        $sum**2
    end

    def findDifference()
        puts self.getSquareOfSum() - self.getSumOfSquare()
    end
end

$d = SumSquareDifference.new(100)
$d.findDifference()