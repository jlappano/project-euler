# The prime factors of 13195 are 5, 7, 13 and 29.
require 'Prime'

# What is the largest prime factor of the number 600851475143 ?

#get prime numbers

class PrimeFactor
    def initialize(numInput)
        @numInput = numInput
        @primeFactors = []
    end

    def findPrimeFactors
        @primeFactors = Prime.prime_division(@numInput)
    end

    def getLargestPrimeFactor
        self.findPrimeFactors()
        @largetPairing = @primeFactors.max
        puts @largetPairing.max
    end
end

$d = PrimeFactor.new(600851475143)
$d.getLargestPrimeFactor()