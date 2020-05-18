#!/bin/ruby

require 'json'
require 'stringio'

# Complete the countApplesAndOranges function below.
def countApplesAndOranges(s, t, a, b, apples, oranges)
    result_a = 0
    apples.each do |d|
        cord = a + d
        if s <= cord && cord <= t
            result_a += 1
        end
    end
    puts result_a

    result_o = 0
    oranges.each do |d|
        cord = b + d
        if s <= cord && cord <= t
            result_o += 1
        end
    end
    puts result_o
end

st = gets.rstrip.split

s = st[0].to_i

t = st[1].to_i

ab = gets.rstrip.split

a = ab[0].to_i

b = ab[1].to_i

mn = gets.rstrip.split

m = mn[0].to_i

n = mn[1].to_i

apples = gets.rstrip.split(' ').map(&:to_i)

oranges = gets.rstrip.split(' ').map(&:to_i)

countApplesAndOranges s, t, a, b, apples, oranges
