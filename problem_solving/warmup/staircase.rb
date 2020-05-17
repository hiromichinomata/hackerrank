#!/bin/ruby

require 'json'
require 'stringio'

# Complete the staircase function below.
def staircase(n)
    n.times do |i|
        num = i + 1
        puts " " * (n-num) + "#" * num
    end
end

n = gets.to_i

staircase n
