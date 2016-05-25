# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a**2 + b**2 = c**2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

class PythagoreanTripler
    def initialize(sumTotal)
        @sumTotal = sumTotal
        @sumReached = false
        @sumOver = false
        @sumLower = false
        @n = 1
        @m = 2
        @a = 0
        @b = 0
        @c = 0
        @diff = nil
        @lowestDiff = nil
        @previousDiff = nil
    end

    def euclidFormula(m, n)
        if m > n
            @a = (m**2 - n**2)
            @b = 2 * (m*n)
            @c = (m**2 + n**2)
        else
            false
        end
    end

    def getAnswer
        until @sumOver || @sumReached do
            self.iterateUpBoth()
            @previousDiff = @diff
            self.sumsToTotal()
        end

        until @sumReached do
            self.getCloser()
        end
    end

    def getCloser

        @previousDiff = @diff
        self.iterateUpM()
        self.sumsToTotal()
        if @diff < @previousDiff 
            $lowestDiff = @diff
            while @diff < @previousDiff do
                @previousDiff = @diff
                self.iterateUpM()
                self.sumsToTotal()
                $lowestDiff = @diff
            end
        else
            @previousDiff = @diff
            self.iterateDownM()
            self.sumsToTotal()
        end

        @previousDiff = @diff
        self.iterateDownM()
        self.sumsToTotal()
        if @diff < @previousDiff  
            $lowestDiff = @diff
            while @diff < @previousDiff do
                @previousDiff = @diff
                self.iterateDownM()
                self.sumsToTotal()
                $lowestDiff = @diff
            end
        else
            @previousDiff = @diff
            self.iterateUpM()
            self.sumsToTotal()
        end

        @previousDiff = @diff
        self.iterateUpN()
        self.sumsToTotal()
        if @diff < @previousDiff 
            $lowestDiff = @diff
            while @diff < @previousDiff do
                @previousDiff = @diff
                self.iterateUpN()
                self.sumsToTotal()
                $lowestDiff = @diff
            end
        else
            @previousDiff = @diff
            self.iterateDownN()
            self.sumsToTotal()
        end

        self.iterateDownN()
        @previousDiff = @diff
        self.sumsToTotal()
        if @diff < @previousDiff  
            $lowestDiff = @diff
            while @diff < @previousDiff do
                self.iterateDownN()
                @previousDiff = @diff
                self.sumsToTotal()
                $lowestDiff = @diff
            end
        else
            @previousDiff = @diff
            self.iterateUpN()
            self.sumsToTotal()
        end

    end

    def iterateUpM
        self.euclidFormula(@m, @n)
        @m += 1
    end

    def iterateUpBoth
        self.euclidFormula(@m, @n)
        @m += 1
        @n += 1
    end

    def iterateDownN
        self.euclidFormula(@m, @n)
        if @n > 1
            @n -= 1
        end
    end

    def iterateUpN
        self.euclidFormula(@m, @n)
        if @m > @n
            @n += 1
        end
    end

    def iterateDownM
        self.euclidFormula(@m, @n)
        if @m > @n
            @m -= 1
        end
    end

    def sumsToTotal
        if (@a + @b + @c) == @sumTotal
            self.print()
            @sumReached = true
            puts 'SUM REACHED'
        elsif (@a + @b + @c) > @sumTotal
            @sumOver = true
            @sumLower = false
            @diff = (@a + @b + @c) - @sumTotal
        elsif (@a + @b + @c) < @sumTotal
            @sumLower = true
            @sumOver = false
            @diff = @sumTotal - (@a + @b + @c)
        end
        false
    end

    def print
        puts @a, @b, @c
        puts @a + @b + @c
    end
end

$d = PythagoreanTripler.new(208)
$d.getAnswer()