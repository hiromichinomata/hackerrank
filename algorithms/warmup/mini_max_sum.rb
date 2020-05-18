#!/bin/ruby

require 'json'
require 'stringio'

# Complete the miniMaxSum function below.
def miniMaxSum(arr)
    sum = arr.sum
    min = arr.min
    max = arr.max
    puts (sum-max).to_s + " " + (sum-min).to_s
end

arr = gets.rstrip.split(' ').map(&:to_i)

miniMaxSum arr
