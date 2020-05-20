#!/bin/ruby

require 'json'
require 'stringio'

# Complete the bigSorting function below.
def bigSorting(unsorted)
    unsorted.sort_by{|x| x.to_i }

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

unsorted = Array.new(n)

n.times do |i|
    unsorted_item = gets.to_s.rstrip
    unsorted[i] = unsorted_item
end

result = bigSorting unsorted

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()
