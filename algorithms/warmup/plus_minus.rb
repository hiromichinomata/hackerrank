#!/bin/ruby

require 'json'
require 'stringio'

# Complete the plusMinus function below.
def plusMinus(arr)
    positive = arr.count{|x| x > 0}
    negative = arr.count{|x| x < 0}
    zero = arr.count{|x| x == 0}
    size = arr.size
    puts positive.to_f/size
    puts negative.to_f/size
    puts zero.to_f/size
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

plusMinus arr
