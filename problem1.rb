# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
# def multiple_sum(num1, num2, maxvalue)
#   multiples = []
#   for num in 1...maxvalue
#     if num % num1 == 0 || num % num2 ==0
#       multiples << num
#     end
# end
#  puts multiples.inject{|sum,x| sum + x }
# end
# multiple_sum(2, 8, 1000)


multiples = []


for num in 1...1000
  if num % 3 == 0 || num % 5 ==0
    multiples << num
  end
end


puts multiples.inject{|sum,x| sum + x }