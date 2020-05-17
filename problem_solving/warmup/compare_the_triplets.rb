#!/bin/ruby

require 'json'
require 'stringio'

# Complete the compareTriplets function below.
def compareTriplets(a, b)
    a_result = 0
    b_result = 0
    a.size.times do |i|
        if a[i] > b[i]
            a_result += 1
        elsif a[i] < b[i]
            b_result += 1
        end
    end
    [a_result, b_result]
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets a, b

fptr.write result.join " "
fptr.write "\n"

fptr.close()
