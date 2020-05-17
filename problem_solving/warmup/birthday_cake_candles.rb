#!/bin/ruby

require 'json'
require 'stringio'

# Complete the birthdayCakeCandles function below.
def birthdayCakeCandles(ar)
    max = ar.max
    count = ar.count{|x| x == max}
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = birthdayCakeCandles ar

fptr.write result
fptr.write "\n"

fptr.close()
