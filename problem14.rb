#The following iterative sequence is defined for the set of positive integers:

#n → n/2 (n is even)
#n → 3n + 1 (n is odd)

#Using the rule above and starting with 13, we generate the following sequence:

#13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
#It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

#Which starting number, under one million, produces the longest chain?

#NOTE: Once the chain starts the terms are allowed to go above one million.

class Sequencer
    def initialize()
        @chainIndex = Hash.new()
        @longestChainLength = 0
        @longestChainIndex = Hash.new()
    end

    def evenSequence(n)
        if n%2 == 0
            return n/2
        end
    end

    def oddSequence(n)
        if n%2 != 0
            return (3*n) + 1
        end
    end

    def sequenceNumber(n)
        sequence = Array.new()
        ogn = n
        until n <= 1 do
            # if @chainIndex[n] != nil
            #     return sequence << @chainIndex[n]
            # else
                if n%2 == 0
                    n = self.evenSequence(n)
                else
                    n = self.oddSequence(n)
                end
                sequence << n
            # end
        end
        # @chainIndex[ogn] = sequence

        if sequence.length > @longestChainLength
            @longestChainIndex = {ogn => sequence.length}

            # @longestChainIndex[ogn] = sequence
            @longestChainLength = sequence.length
        end

        return sequence
    end

    def findLongestChain(upperBound)
        while upperBound > 1 do
            self.sequenceNumber(upperBound)
            upperBound -= 1
        end
        p @longestChainIndex
        # p @chainIndex
    end
end

n = Sequencer.new()
n.findLongestChain(1000000)
