# Each new term in the Fibonacci sequence is 
# generated by adding the previous two terms. 
# By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci 
# sequence whose values do not exceed four million, 
# find the sum of the even-valued terms.

class MyFibonacciClass
    def initialize(number_ceiling)
        @number_ceiling = number_ceiling
        @lastNumber = 2
        @lastLastNumber = 1
        @currentNumber = 3
        @currentEvenSum = 2
    end

    def getCurrentEvenSum
        return @currentEvenSum
    end

    def updateCurrentEvenSum
        if @currentNumber.even?
            @currentEvenSum = @currentEvenSum + @currentNumber
        end 
    end

    def doDaFibonacci
        @currentNumber = @lastNumber + @lastLastNumber
        @lastLastNumber = @lastNumber
        @lastNumber = @currentNumber
        self.updateCurrentEvenSum()

        if @currentNumber < @number_ceiling
            self.doDaFibonacci()
        else
            return false
        end
    end
end

$d = MyFibonacciClass.new(4000000)
$d.doDaFibonacci()
puts $d.getCurrentEvenSum()





