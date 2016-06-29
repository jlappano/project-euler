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
        #store original parameter
        ogn = n

        #until the sequence ends in 1
        until n <= 1 do

            #if the current number ends in an already finished sequence
            #append that array to the current sequence and return it
            if @chainIndex[n] != nil                
                sequence = sequence + @chainIndex[n]

                self.checkSequenceLength(sequence.length, ogn)
                return sequence

            #if the current number has no sequence, manually calculate the next number
            else        
                if n%2 == 0
                    n = self.evenSequence(n)
                else
                    n = self.oddSequence(n)
                end
                sequence << n
                self.checkSequenceLength(sequence.length, ogn)
            end
        end
        #once a new full sequence has been calculated, store it for later reference
        @chainIndex[ogn] = sequence
        return sequence
    end

    def checkSequenceLength(length, key)
        if length > @longestChainLength
            @longestChainIndex = {key => length}
            @longestChainLength = length
        end
    end

    def findLongestChain(upperBound)
        x = 0
        until x >= upperBound do 
            self.sequenceNumber(x)
            x += 1
        end
        p @longestChainIndex
    end
end

n = Sequencer.new()
n.findLongestChain(1000000)
